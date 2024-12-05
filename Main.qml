import QtQuick
import QtQuick.Layouts

import QmlWidget

import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    id: mainWindow

    // WidgetOne{
    //     anchors.top: parent.top
    //             anchors.topMargin: 50
    //             anchors.horizontalCenter: parent.horizontalCenter
    //     width: 200
    //             height: 200
    // }

    ObjModel{
        id : objModel
    }

    ListView {
        anchors.fill: parent
        anchors.margins: 10
        spacing: 5
        model: objModel

    }
}
