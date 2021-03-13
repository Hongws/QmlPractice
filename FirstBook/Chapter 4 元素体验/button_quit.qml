import QtQuick 2.12
import QtQuick.Controls 1.4

Rectangle {
    width: 300;
    height: 200;
    color: "gray";

    Button {
        text: "Quit";
        anchors.centerIn: parent;
        onClicked: {
            Qt.quit();
        }
    }

}
