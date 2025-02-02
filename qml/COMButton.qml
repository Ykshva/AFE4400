import QtQuick 2.15
import QtQuick.Controls


Rectangle {

    RoundButton {
        id: _COMButton
        anchors.centerIn: parent
        width: parent.width * 0.66
        height: parent.height * 0.66
        text: qsTr("Подключить")

        onClicked: {
            appEngine.print();
        }
    }
}
