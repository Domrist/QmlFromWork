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
