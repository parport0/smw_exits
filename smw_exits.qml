import QtQuick 2.0
import USB2Snes 1.0
import "qrc:/extrajs.js" as Helper

Rectangle {
	width: 150
	height: 50
	id: window
	color: "black"

	Grid {
		columns: 2
		columnSpacing: 0
		
		Text {
			id: exit_count
			color: "white"
			text: "0"
			font.family: "Comic Sans MS"
			font.pixelSize: 36
		}

		TextInput {
			id: total_exits
			color: "white"
			text: "96"
			cursorVisible: false
			font.family: "Comic Sans MS"
			font.pixelSize: 36
		}
	}

	USB2Snes {
		id: usb2snes
		objectName: "usb2snes"
		timer: 200

		onTimerTick: {
			var exits = memory.readUnsignedByte(0x7E1F2E);
			exit_count.text = Helper.sprintf("%d/", exits);
			total_exits.cursorVisible = false;
		}
	}
}
