import QtQuick 2.1
import "constant.js" as Global
Item {
    id: card
    width: Global.card_width
    height: Global.card_height
    property url pic: "content/pic.jpg";
    property var mystate:{"update": "نیازمند بروزرسانی","queue":"درصف","updating":"درحال بروزرسانی","install":"آماده نصب"}


    Rectangle {
        id: big
        color: "black"
        anchors.fill: parent
        opacity:0.3
        radius: 2
    }

    Rectangle {
        id: container
        width: 196
        height: 97
        anchors.horizontalCenter:card.horizontalCenter
        anchors.top: card.top
        anchors.topMargin: 5
        radius: 2
        opacity: status=="normal"? 1:0.20

        Image {
            id: img
            width: parent.width
            height: parent.height
            fillMode: Image.PreserveAspectCrop
            source: card.pic//
            }

        }

        Item  {
            id: container2 // used to apply opacity only to image
            width: container.width
            height: container.height
            anchors.horizontalCenter: card.horizontalCenter
            anchors.top: card.top
            anchors.topMargin: 5

            Text {

                id: statusLabel
                visible: status=="normal"? false :true
                anchors.centerIn: container2
                color:Global.Blue
                text:status=="normal"?"Null":mystate[status]
                font.family: fixedFont.name
                font.pointSize: 11
            }

        }

        Item{
            id: nameLabelContainer
            anchors {top:container.bottom ; right: parent.right; bottom: parent.bottom;left : parent.left ;}

            Text {

                id: nameLabel
                anchors.right: parent.right
                anchors.rightMargin: 4
                color:"white"
                text: name
                font.family: fixedFont.name
                font.pointSize: 14
            }
        }
}
