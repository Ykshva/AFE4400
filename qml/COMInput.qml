import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {

    ColumnLayout {
        anchors {
            fill: parent
            margins: 10
            horizontalCenter: parent.horizontalCenter
        }        

        TextField {
            id: input
            placeholderText: "Введите то, что хотите отправить"
            font.family: "Verdana"
            font.pixelSize: 14
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter
        }

        Button {
            width: parent.width * 0.66
            height: parent.height * 0.33
            text: qsTr("Отправить")
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter

            onClicked: {
                appEngine.print();
            }
        }
    }
}
