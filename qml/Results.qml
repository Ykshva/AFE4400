import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window


Rectangle {
    ColumnLayout {
        anchors {
            top: parent.top
            topMargin: parent.height * 0.1
            horizontalCenter: parent.horizontalCenter
        }
    Text {
        id: _label
        text: qsTr("Полученные данные")
        Layout.fillHeight: true
        Layout.fillWidth: true
        horizontalAlignment: Qt.AlignHCenter
        verticalAlignment: Qt.AlignVCenter}
            }
    Column{
            anchors.fill: parent
            padding: 50
            spacing: 10
            TextField {
                id: output
                width: 200
                height: 20
                font.family: "Verdana"
                font.pixelSize: 14
            }
        ApplicationWindow {
            id: window
            visible: true
            title :"Полученные данные"
                //Text {
                   // id: _labelWindow
                    //text: qsTr("Полученные данные")

        }
    }
}
