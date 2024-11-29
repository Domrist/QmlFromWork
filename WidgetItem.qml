import QtQuick
import QtQuick.Layouts

import QmlWidget
import QtQuick.Controls


Item {

    id : widgetItem

    width: 300
    height: 100

    property var func: none
    property color widgetBackgroundColor: "#FF0000"
    property bool isVisible: true
    property string widgetName : ""


    Rectangle{
        anchors.fill: parent
        color: widgetBackgroundColor
    }

    Row{

        width: parent.width

        anchors.left: parent.left
        anchors.top: parent.topt

        CheckBox{

            anchors.verticalCenter: parent.verticalCenter

            nextCheckState : {
                parent.parent.func(checked)
            }
        }
        Text {
            anchors.verticalCenter: parent.verticalCenter

            text: parent.parent.widgetName
        }
    }
}
