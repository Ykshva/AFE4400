import QtQuick 2.15
import QtQuick.Layouts
import QtQuick.Controls


Rectangle {    

    ColumnLayout {
        anchors {
            fill: parent
            margins: 10
            horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: _label
            text: qsTr("Настройки COM port")
            Layout.fillHeight: true
            Layout.fillWidth: true
            horizontalAlignment: Qt.AlignHCenter
            verticalAlignment: Qt.AlignVCenter
        }

        GridLayout {
            columns: 2
            Layout.fillHeight: true
            Layout.fillWidth: true

            Text {
                text: qsTr("Скорость передачи")
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            ComboBox {
                model: ListModel {
                    ListElement { text: "9600" }
                    ListElement { text: "19200" }
                    ListElement { text: "115200" }
                }

                Layout.fillHeight: true
                Layout.fillWidth: true

                onActivated: function(index) {
                    appEngine.setCOMSpeed(textAt(index))
                }
            }

            Text {
                text: qsTr("Количество бит")
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            ComboBox {
                model: ListModel {
                    ListElement { text: "8" }
                    ListElement { text: "16" }
                    ListElement { text: "32" }
                }
                Layout.fillHeight: true
                Layout.fillWidth: true

                onActivated: function(index) {
                    appEngine.setCOMBits(textAt(index))
                }
            }

            Text {
                text: qsTr("Количество стоповых бит")
                elide: Text.ElideRight
                wrapMode: Text.WordWrap
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            ComboBox {
                model: ListModel {
                    ListElement { text: "1" }
                    ListElement { text: "2" }
                }
                Layout.fillHeight: true
                Layout.fillWidth: true

                onActivated: function(index) {
                    appEngine.setCOMStopBits(textAt(index))
                }
            }
        }

        Button {
            id: _COMButton
            height: parent.height * 0.66
            Layout.fillWidth: true
            text: qsTr("Подключить")

            onClicked: {
                appEngine.print();
            }
        }
    }
}
