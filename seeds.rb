[Hoge, Fugo].each do |c|
  yml = File.read("#{Rails.root}/db/seeds/#{c.to_s.tableize}.yml")
  #https://qiita.com/ppworks/items/1632e8b64adeb531dc38#
  list = YAML.load(yml).symbolize_keys
  list[c.to_s.tableize.to_sym].each do |r|
    c.create do |t|
      r.each do |i, v|
        t.send "#{i}=", v
      end
    end
  end
end

if Rails.env.development?
  connection = ActiveRecord::Base.connection()
  [Piyo].each do |c|
    if c.count == 0
      open("#{Rails.root}/db/sql/#{c.to_s.tableize}_sample.sql") {|file|
        while sql = file.gets
          connection.execute sql
        end
      }
    end
  end
end