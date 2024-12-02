import QtQuick
import QtQml.Models
import QtQuick.Controls

import QmlWidget

//
// относительно недавно обнаружил что есть возможность в плюсах унаследоваться от QQuickPaintedItem и переопределить paint(QPainter * painter)
//

ObjectModel
{
    id: widgetModel

    property int rowElementSpacing: 1
    property int firstElementSpace: 40


    WidgetItem{
        id: newWidgetOne
        widgetBackgroundColor: "#00FF00"
        isVisible: wOne.isVisible

        widgetName: "Name widget"

        WidgetOne{
            id: wOne
            aName: "WidgetOne property string"
        }

        func: wOne.setIsVisible

        Column{
            anchors.fill: parent
            visible: parent.isVisible
            // next we set content
            spacing: widgetModel.rowElementSpacing

            Row{
                height: widgetModel.firstElementSpace
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Row
            {
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter

                CheckBox{
                    id: wOneRowElVisible
                    anchors.verticalCenter: parent.verticalCenter
                }

                Text {
                    text: qsTr("Element name : ")
                    anchors.verticalCenter: parent.verticalCenter
                }

                Text {
                    visible: wOneRowElVisible.checked
                    id: nameOne
                    text: wOne.aName
                    anchors.verticalCenter: parent.verticalCenter
                }
            }

            Row
            {
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter

                CheckBox{
                    id: wOneRowElVisible2
                    anchors.verticalCenter: parent.verticalCenter
                }

                Text {
                    text: qsTr("ElementName")
                    anchors.verticalCenter: parent.verticalCenter
                }

                Text {
                    visible: wOneRowElVisible2.checked
                    id: nameOnwTwo
                    text: qsTr("DDDDDD")
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
        }
    }

    WidgetItem{
        id: newWidgetTwo
        widgetBackgroundColor: "#0000F0"
        isVisible: wTwo.isVisible

        widgetName: "ZPosition widget"

        WidgetTwo{
            id: wTwo
        }

        func: wTwo.setIsVisible

        Column{
            anchors.fill: parent
            visible: parent.isVisible
            // next we set content
            spacing: widgetModel.rowElementSpacing

            Row{
                height: widgetModel.firstElementSpace
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Row
            {
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter

                CheckBox{
                    id: wTwoRowElVisible2
                    anchors.verticalCenter: parent.verticalCenter
                }

                Text {
                    text: qsTr("Z-pos : ")
                    anchors.verticalCenter: parent.verticalCenter
                }

                Text {
                    visible: wTwoRowElVisible2.checked
                    text: wTwo.aZPos
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
        }
    }

    WidgetItem{
        id: newWidgetThree
        widgetBackgroundColor: "#0000F0"
        isVisible: wThree.isVisible
        widgetName: "Transformation widget"

        WidgetThree{
            id: wThree
        }

        func: wThree.setIsVisible

        Column{
            id:contentSectionThree
            anchors.fill: parent
            visible: parent.isVisible
            spacing: widgetModel.rowElementSpacing

            Row{
                height: widgetModel.firstElementSpace
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Row
            {
                id:positionRow
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter

                CheckBox{
                    id:wThreeRowEl1Visible
                    anchors.verticalCenter: parent.verticalCenter
                }

                Text {
                    id: nameThree
                    text: qsTr("Position => ")
                    anchors.verticalCenter: parent.verticalCenter
                }

                Text {
                    visible: wThreeRowEl1Visible.checked
                    text: wThree.position3D.x + " " + wThree.position3D.y + " " + wThree.position3D.z
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
            Row
            {
                id: rotationRow
                width: parent.width
                anchors.horizontalCenter: parent.horizontalCenter

                CheckBox{
                    id:wThreeRowEl2Visible
                    anchors.verticalCenter: parent.verticalCenter
                }

                Text {
                    text: qsTr("Rotation => ")
                    anchors.verticalCenter: parent.verticalCenter
                }

                Text {
                    visible: wThreeRowEl2Visible.checked
                    text: "X : " + wThree.rotation.x + "; Y : " + wThree.rotation.y + "; Z : " + wThree.rotation.z + "; W : " + wThree.rotation.z
                    anchors.verticalCenter: parent.verticalCenter
                }
            }

        }
    }
}
