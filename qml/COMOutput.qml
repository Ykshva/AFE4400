import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {    

    TextField {
        id: output
								anchors {
            fill: parent
            margins: 10
            horizontalCenter: parent.horizontalCenter
        }     

        placeholderText: "Полученные данные"
        font.family: "Verdana"
        font.pixelSize: 14

        verticalAlignment: TextField.AlignVCenter
        horizontalAlignment: TextField.AlignHCenter
    }
}

