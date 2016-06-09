# Binary Number Card

This card is a miniture version of those bigger cardboard version to teach kids binary number that is used in SIJP Coding Camp Junior series.

![Sample](PrintSample.jpg)

## Model Overview

This 3D model is designed for dual extrusion.
You can print both of front and back side at once with printers with dual nozzle.
You can print with single extrusion printer though by printing both sides seperately and glue them later. 

## File List

This repo contains following files. \*.1.stl is front side and \*.0.stl is back side.

* STL files for printing
  * 1 set (5 cards)
  * 12 sets (60 cards)
  * 25 sets (125 cards)

* Thing file for Makerbot Desktop
  * 1 set (5 cards) for dual extrusion

* [OpenSCAD](http://www.openscad.org/) source code for editing

By using OpenSCAD source code, you can customize various configuration to match your printer.

![Front side](BinaryNumberCard1.png)
![Back side](BinaryNumberCard0.png)

## How to print with dual extrusion with Makerbot Desktop

* Open the Thing file. Or,
* Open both of frond side and back side STL files. Click the back side model and move it along Y-axis for 2 mm. This glues both sides perfectly.
* In SETTINGS, set appropriate temperature for both nozzles. Enable Purge Wall. Everything else can be default values.
* Click PRINT to start printing.
