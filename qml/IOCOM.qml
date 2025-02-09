import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    ColumnLayout {
        anchors {
            top: parent.top
            topMargin: parent.height * 0.1
            horizontalCenter: parent.horizontalCenter
        }
    Text {
        id: _label
        text: qsTr("Введите то, что хотите отправить")
        Layout.fillHeight: true
        Layout.fillWidth: true
        horizontalAlignment: Qt.AlignHCenter
        verticalAlignment: Qt.AlignVCenter}
    Column{
            anchors.fill: parent
            padding: 50
            spacing: 10
            TextField {
                id: input
                width: 200
                height: 20
                placeholderText: "Введите текст"
                font.family: "Verdana"
                font.pixelSize: 14
            }
        }
    RoundButton {
        id: _COMButton
        anchors.centerIn: parent
        width: parent.width * 0.66
        height: parent.height * 0.66
        text: qsTr("Отправить")

        onClicked: {
            appEngine.print();
            }
        }
    }
}
