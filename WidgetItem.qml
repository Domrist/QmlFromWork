import QtQuick
import QtQuick.Layouts

import QmlWidget
import QtQuick.Controls


Item {

    id : widgetItem

    width: 100
    height: 100

    property var func: none
    property color widgetBackgroundColor: "#FF0000"
    property bool isVisible: true

    Rectangle{
        anchors.fill: parent
        color: widgetBackgroundColor
    }

    CheckBox{

        anchors.left: parent.left
        anchors.top: parent.topt

        nextCheckState : {
            func(checked)
        }
    }

    // Item {
    //     // id: wTwoItemContent
    //     anchors.fill: parent
    //     Text {
    //         id: wTwoItemContentText
    //         anchors.fill : parent
    //         text: qsTr("WTwoidget ") + wTwo.aZPos
    //     }

    //     visible: wTwo.isVisible
    // }
}