1. Go to retroarch settings > network > network commands > on (if you don't see such an option either update retroarch or put `network_cmd_enable = "true"` in retroarch.cfg), tell windows it's ok for it to access network if windows asks
2. Download the latest QUsb2Snes .7z release from https://github.com/usb2snes/usb2snes/releases
3. Extract, put the file into QUsb2Snes\Magic2Snes\examples
4. Run retroarch, run QUsb2Snes.exe, tell windows it's okay for it to use network, if it asks for an update update it
5. It'll be somewhere in your tray, right click it and enable devices > retroarch, then select magic2snes > smw_exits.qml in the same menu
6. Run any smw rom, to edit the total count of exits click on the 96 and input your count

If you want to change stuff like fonts and colors you can edit the .qml as a text file.

May not work with all hacks. Known hacks to not work: 2mice
