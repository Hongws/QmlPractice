import QtQuick 2.12
import QtQuick.Window 2.12

Window {
//Rectangle{
    visible: true
    width: 360
    height: 360
//    title: qsTr("Hello World")

    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }
    Text{
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }

}
