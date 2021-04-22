![2](https://user-images.githubusercontent.com/42199859/115526933-653ef500-a245-11eb-9bf9-a0bb5c58cedc.png)

## Introduction
[![binary license](https://img.esa.io/uploads/production/attachments/17596/2021/04/10/101590/654fbc34-593b-4224-a054-e50cac1baaea.svg)](https://www.oracle.com/downloads/licenses/binary-code-license.html)
[![built with nix](https://builtwithnix.org/badge.svg)](https://builtwithnix.org)


NOGUE PACKS gives the JAVA SERVER USER a better derictory on nogue.jdk data stream. 
This section describes some of the enhancements in Java SE 16 and JDK 16.
In some cases, the descriptions provide links to additional detailed information about an issue or a change. 
The APIs described here are those that are provided with the Oracle JDK.
It includes a complete implementation of the Java SE 16 Platform and additional Java APIs to support developing, debugging, and monitoring Java applications.
Another source of information about important enhancements and new features in Java SE 16 and JDK 16 is the Java SE 16 ( JSR 391) Platform Specification, which documents the changes to the specification made between Java SE 15 and Java SE 16.
This document includes descriptions of those new features and enhancements that are also changes to the specification.
The descriptions also identify potential compatibility issues that you might encounter when migrating to JDK 16.




| JAVA.NOGUE | jdk.data | DATE|
| -------- | -------- | -------- |
| ON   | 11 packs    | 26.03.2021 |
| ON   | 9 packs     | 21.03.2021 |
| ON   | 1 packs     | 01.02.2021 |

`bobo1 -a "JAVA.NOGUE/bobo1.c"` using container compilatory to compile the inventrory `bobo1.c`.
Low-level customizing `nogue.json` packs on Zabbix engine.
Overriding the jdk8 certificate store is possible by overriding the cacert parameter of the package:
`jdf8.nix`
[JAVA.NOGUE MAIN PACK RECORDS](https://raw.githubusercontent.com/NikolayTach/JAVA.NOGUE/main/nogue.json)
[JAVA.IO MANAGE PACK](https://docs.oracle.com/javase/8/docs/api/java/io/package-frame.html)


```{
      "data": [
           {
                 "{#SERVER_DOMAIN}" :  "@NOGUE",
                 "{#BETA}" :  "1!"
        },
