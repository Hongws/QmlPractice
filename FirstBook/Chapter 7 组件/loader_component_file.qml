import QtQuick 2.12

Rectangle {
    width: 320;
    height: 240;
    color: "#EEEEEE";

    Text {
        id: coloredText;
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.top: parent.top;
        anchors.topMargin: 4;
        text: "Hello World!";
        font.pixelSize: 32;
    }

//    Component {
//        id: colorComponent;
//        Rectangle {
//            id: colorPicker;
//            width: 50;
//            height: 30;
//            signal colorPicked(color clr);
//            property Item loader;     //定义焦点属性
//            border.width: focus ? 2 : 0;
//            border.color: focus ? "#90D750" : "#808080";
//            MouseArea {
//                anchors.fill: parent
//                onClicked: {
//                    colorPicker.colorPicked(colorPicker.color); //发送信号
//                    loader.focus = true;
//                }
//            }
//            Keys.onReturnPressed: {
//                colorPicker.colorPicked(colorPicker.color);
//                event.accepted = true;
//            }
//            Keys.onSpacePressed: {
//                colorPicker.colorPicked(colorPicker.color);
//                event.accepted = true;
//            }
//        }
//    }

    Loader{
        id: redLoader;
        width: 80;
        height: 60;
        focus: true;
        anchors.left: parent.left;
        anchors.leftMargin: 4;
        anchors.bottom: parent.bottom;
        anchors.bottomMargin: 4;
//        sourceComponent: colorComponent;
        source: "ColorPicker.qml";
        KeyNavigation.right: blueLoader;
        KeyNavigation.tab: blueLoader;

        onLoaded:{
            item.color = "red";
            item.focus = true;
//            item.loader = redLoader;
        }
        onFocusChanged:{
            item.focus = focus;
        }
    }

    Loader{
        id: blueLoader;
        anchors.left: redLoader.right;
        anchors.leftMargin: 4;
        anchors.bottom: parent.bottom;
        anchors.bottomMargin: 4;
//        sourceComponent: colorComponent;
        source: "ColorPicker.qml";
        KeyNavigation.left: redLoader;
        KeyNavigation.tab: redLoader;

        onLoaded:{
            item.color = "blue";
//            item.loader = blueLoader;
        }
        onFocusChanged:{
            item.focus = focus;
        }
    }

    Connections {
        target: redLoader.item;
//        onColorPicked:{     //处理信号
//            coloredText.color = clr;
//        }
        onColorPicked: {
            coloredText.color = clr;
            if(!redLoader.focus) {
                redLoader.focus = true;
                blueLoader.focus = false;
            }
        }
    }

    Connections {
        target: blueLoader.item;
        onColorPicked:{
            coloredText.color = clr;
            if(!blueLoader.focus) {
                redLoader.focus = false;
                blueLoader.focus = true;
            }
        }
    }
}










