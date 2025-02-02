import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {

    color: Style.backgroundColor

    GridLayout {

        id: _grid
        anchors.fill: parent
        rows: 2
        columns: 2
        anchors {
            margins: Style.offset
        }

        columnSpacing: Style.offset
        rowSpacing: Style.offset

        COMSettings {
            color: "red"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        IOCOM {
            color: "orange"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        COMButton {
            color: "yellow"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Results {
            color: "green"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }


    }

    // ComboBox {
    //     id: _box
    //     anchors {
    //         top: parent.top
    //         horizontalCenter: parent.horizontalCenter
    //     }
    //     height: parent.height * 0.1
    //     width: parent.width * 0.3

    //     model:  ListModel {
    //         ListElement { text: "LED 1"}
    //         ListElement { text: "LED 2"}
    //     }

    //     onActivated: {
    //         print(count)
    //         print(currentIndex)
    //     }
    // }
}
