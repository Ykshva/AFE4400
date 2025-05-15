import QtQuick 2.15
import QtQuick.Layouts
import QtQuick.Controls

Rectangle {

				ColumnLayout 
				{
								anchors {
												top: parent.top
												left: parent.left
												right:  parent.right
            margins: 10
        }
          								
        Text {												
												text: qsTr("Choose port")
												Layout.fillWidth: true   
												horizontalAlignment: Qt.AlignHCenter
								}
								
								ComboBox 
								{
												id: _portChooser												
												Layout.fillWidth: true												
												
												Connections {
																target: _portChooser
																function onActivated(index)
																{
																				appEngine.catchPortName(_portChooser.currentText)
																}
            }
            
            Component.onCompleted: {
																refreshData()
																appEngine.catchPortName(_portChooser.currentText)

												}
												
												function refreshData()  
												{
																appEngine.detectAvailablePorts()
																model = appEngine.getNamesOfPorts()
												}
								}
				}
}
