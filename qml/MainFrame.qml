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
}
