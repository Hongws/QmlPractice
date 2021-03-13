import QtQuick 2.12

//Rectangle {
//    Component.onCompleted: {
//        var name = "Zhang San Feng";
//        console.log(typeof name);
//        console.log(typeof 60);
//    }
//}

//输出日志信息
//Rectangle {
//    id: root;
//    Component.onCompleted: {
//        console.log(root);
//        var array = new Array(10, 12, 8, "Anna");
//        console.debug("print array:", array);

//    }
//}

//断言
//Rectangle {
//    id: root;
//    Component.onCompleted: {
//        var years = 0;
//        for(; years < 18; years++) {
//            console.log("test first");
//            continue;
//            console.log("join in");
//        }
//        console.assert(years < 18, years);

//    }
//}

//计时器
//Rectangle {
//    id: root;
//    Component.onCompleted: {
//        console.time("regexp");
//        var str = "We are dogs;\nYour dogs;\nWe want meat.\nPlease.";
//        console.log(str);
//        var lines = str.match(/^We.*/mg);
//        console.log(lines.length);
//        console.log(lines);
//        console.timeEnd("regexp");

//    }
//}

//list类
Rectangle {
    id: root;
    width: 300;
    height: 200;

    Text {
        text: "simple demo"
    }

    Rectangle {
        anchors.bottom: parent.bottom;
        color: "red";
        width: 50;
        height: 30;
    }

    Component.onCompleted: {
        console.log("%1 visual chidred:".arg(children.length));
        for(var i=0; i<children.length; i++){
            console.log(children[i]);
        }
    }
}

























