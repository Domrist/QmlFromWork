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

    Column{
        id: col

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

    }


}
