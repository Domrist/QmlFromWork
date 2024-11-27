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

        Item {

            id : wOneItem

            width: 100
            height: 100

            WidgetOne{
                id : wOne
            }

            Rectangle{
                anchors.fill: parent
                color: "#FF00FF"
            }

            Item {
                id: wOneItemContent
                anchors.fill: parent
                Text {
                    id: wOneItemContentText
                    anchors.fill : parent
                    text: qsTr("WOneWidget")
                }

                visible: wOne.isVisible
            }

            CheckBox{
                id : wOneContentVisible

                anchors.left: parent.left
                anchors.top: parent.topt

                nextCheckState : {
                    wOne.setIsVisible(checked)
                }
            }
        }


        Item {

            id : wTwoItem

            width: 100
            height: 100

            WidgetTwo{
                id : wTwo
            }

            Rectangle{
                anchors.fill: parent
                color: "#FF0000"
            }

            Item {
                id: wTwoItemContent
                anchors.fill: parent
                Text {
                    id: wTwoItemContentText
                    anchors.fill : parent
                    text: qsTr("WTwoidget ") + wTwo.aZPos
                }

                visible: wTwo.isVisible
            }

            CheckBox{
                id : wTwoContentVisible

                anchors.left: parent.left
                anchors.top: parent.topt

                nextCheckState : {
                    wTwo.setIsVisible(checked)
                }
            }
        }

    }


}
