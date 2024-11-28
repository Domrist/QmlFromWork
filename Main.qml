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

    Item{
        function myQmlFunction()
        {
            console.log("MAIN LOG")
        }
    }

    ObjModel{
        id : objModel
    }

    ListView {
        anchors.fill: parent
        anchors.margins: 10
        spacing: 5
        model: objModel

        delegate: Rectangle{
            width: 100
            height: 100
            color: "#FF00F0"
            CheckBox{
                anchors.right: parent.right
                anchors.top: parent.top
            }
        }
    }
}
