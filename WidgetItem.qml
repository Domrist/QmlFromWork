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

    RowLayout{

        width: parent.width

        anchors.left: parent.anchors.left
        anchors.top: parent.top

        CheckBox{

            Layout.alignment: Qt.AlignLeft
            Layout.fillHeight: true

            nextCheckState : {
                parent.parent.func(checked)
            }
        }
        Text {
            // anchors.verticalCenter: parent.anchors.verticalCenter
            Layout.alignment: Qt.AlignLeft
            Layout.fillHeight: true
            text: parent.parent.widgetName
        }
    }
}
