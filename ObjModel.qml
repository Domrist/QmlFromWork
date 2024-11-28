import QtQuick
import QtQml.Models

import QmlWidget

ObjectModel
{
    id: widgetModel

    WidgetItem{
        id: newWidgetOne
        widgetBackgroundColor: "#00FF00"
        isVisible: wOne.isVisible

        WidgetOne{
            id: wOne
        }

        func: wOne.setIsVisible

        Column{
            id:contentSectionOne
            anchors.fill: parent
            // next we set content
            Text {
                id: nameOne
                text: qsTr("aaaasa")
                anchors.horizontalCenter: parent.horizontalCenter
            }
            visible: parent.isVisible
        }
    }

    WidgetItem{
        id: newWidgetTwo
        widgetBackgroundColor: "#0000F0"
        isVisible: wTwo.isVisible

        WidgetTwo{
            id: wTwo
        }

        func: wTwo.setIsVisible

        Column{
            id:contentSection
            anchors.fill: parent
            visible: parent.isVisible
            // next we set content
            Text {
                id: name
                text: qsTr("xxx") + wTwo.aZPos
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }

    WidgetItem{
        id: newWidgetThree
        widgetBackgroundColor: "#0000F0"
        isVisible: wThree.isVisible

        WidgetThree{
            id: wThree
        }

        func: wThree.setIsVisible

        Column{
            id:contentSectionThree
            anchors.fill: parent
            visible: parent.isVisible
            // next we set content
            Text {
                id: nameThree
                text: qsTr("Position => ") + qsTr(wThree.position.x)
                anchors.horizontalCenter: parent.horizontalCenter
            }
            // Text {
            //     id: nameThreeSecond
            //     text: qsTr("Rotation => ") + wThree.rotation.x
            //     anchors.horizontalCenter: parent.horizontalCenter
            // }

        }
    }
}
