public abstract class GUITestCase extends TestCase {
	/** (x,y) are offsets into the component. */
	public MouseEvent createPressed (Component component, int x, int y) {
		return new MouseEvent(component, MouseEvent.MOUSE_PRESSED, 
								System.currentTimeMillis(), 0, x, y, 0, false);
	}
