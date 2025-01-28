import QtQuick 2.15
import QtQuick.Controls

Rectangle {

    ComboBox {
        id: _box
        anchors {
            top: parent.top
            horizontalCenter: parent.horizontalCenter
        }
        height: parent.height * 0.1
        width: parent.width * 0.3

        currentIndex: 0


        model:  ListModel {
            ListElement { text: "Choose" }
            ListElement { text: "LED 1"}
            ListElement { text: "LED 2"}
        }

        delegate: ItemDelegate {
            anchors.centerIn: parent

            Text {
                anchors.centerIn: parent
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
                text: model.text

            }
        }
        onActivated: {
            print(count)
            print(currentIndex)
        }
    }
}
