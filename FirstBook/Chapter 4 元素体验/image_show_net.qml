import QtQuick 2.12
import QtQuick.Controls 1.4

Rectangle {
    width: 480;
    height: 320;
    color: "#121212";

    BusyIndicator {
        id: busy;
        running: true;
        anchors.centerIn: parent;
        z: 2;
    }

    Text {
        id: stateLabel;
        visible: false;
        anchors.centerIn: parent;
        z: 3;
    }

    Image {
        id: imageViewer;
        asynchronous: true;
        cache: false;
        anchors.fill: parent;
        fillMode: Image.PreserveAspectFit;
        onStatusChanged: {
            if (imageViewer.status === Image.Loading) {
                busy.running = true;
                stateLabel.visible = false;
            }
            else if(imageViewer.status === Image.Ready){
                busy.running = false;
            }
            else if(imageViewer.status === Image.Error){
                busy.running = false;
                stateLabel.visible = true;
                stateLabel.text = "ERROR";
            }
        }
    }

    Component.onCompleted: {
        imageViewer.source = "images/yourimage.png";
    }
}
