import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {

    color: Style.backgroundColor

    RowLayout {

        id: _layout
        anchors.fill: parent
        anchors {
            margins: Style.offset
        }

        ColumnLayout {

            Layout.fillHeight: true
            Layout.fillWidth: true

            COMSettings {

                border  {
                    color: "black"
                    width: 3
                }

                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            COMInput {

                border  {
                    color: "black"
                    width: 3
                }

                color: Style.backgroundColor
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }

        COMOutput {

            border  {
                color: "black"
                width: 3
            }

            color: Style.backgroundColor
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }   
}
