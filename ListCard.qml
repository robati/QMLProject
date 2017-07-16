import QtQuick 2.1
import "constant.js" as Global
import QtGraphicalEffects 1.0
Item {
    id: card
    width: parent.width//865
    height: 121
    property url pic: "content/pic.jpg";
    property var mystate:{"update": "نیازمند بروزرسانی","queue":"درصف","updating":"درحال بروزرسانی","install":"آماده نصب"}
    property var myaction:{"normal":"اجرا","update": "بروزرسانی","queue":"توقف","updating":"توقف","install":"نصب"}
    anchors.right: parent.right;
    anchors.rightMargin: 20
    anchors.left: parent.left;
    anchors.leftMargin: 10

    Rectangle {
        id: big
        color: "black"
        anchors.fill: parent
        opacity:0.3
        radius: 2
    }

    Rectangle {
        id: container
        width: 213
        height: 106
        anchors.right:card.right
        anchors.rightMargin: 7
        anchors.top: card.top
        anchors.topMargin: 7
        radius: 2



        opacity: status=="normal"? 1:0.20

        Image {
            id: img
            width: parent.width
            height: parent.height
            fillMode: Image.PreserveAspectCrop
            source: card.pic
            }

        }

        Item  {
            id: container2 // used to apply opacity only to image
            width: container.width
            height: container.height
            anchors.right:card.right
            anchors.rightMargin: 7
            anchors.top: card.top
            anchors.topMargin: 7

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
            id: labelContainer
            width:card.width-container.width
            height: card.height

            anchors {top:card.top ; right: container.left;rightMargin: 5;}

            Text {

                id: nameLabel
                anchors.right: parent.right
                anchors.rightMargin: 4
                color:"white"
                text: name
                font.family: fixedFont.name
                font.pointSize: 14
            }

                Text {

                        id: communityLabel
                       anchors.baseline: nameLabel.baseline

                        anchors.right: nameLabel.left
                        anchors.rightMargin: 10
                        color:Global.Blue
                        text: "اجتماع بازی"
                        font.family: fixedFont.name
                        font.pointSize: 10

                MouseArea{
                }

            }
                Text{
                    id:friends
                    text:"دوستان در این بازی"
                    font.family: fixedFont.name
                    font.pointSize: 12
                    color:Global.friends
                    anchors.right: parent.right
                    anchors.rightMargin: 10
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 10}
                     Friend{id:f1;anchors.right: friends.left;anchors.rightMargin: 40;anchors.bottom: friends.bottom;anchors.bottomMargin: 30 }
                     Friend{id:f2;anchors.right: f1.left;anchors.rightMargin: 40;anchors.bottom: friends.bottom;anchors.bottomMargin: 30 }
                     Friend{id:f3;anchors.right: f2.left;anchors.rightMargin: 40;anchors.bottom: friends.bottom;anchors.bottomMargin: 30 }
                     Friend{id:f4;anchors.right: f3.left;anchors.rightMargin: 40;anchors.bottom: friends.bottom;anchors.bottomMargin: 30 }
                     Friend{anchors.right: f4.left;anchors.rightMargin: 40;anchors.bottom: friends.bottom;anchors.bottomMargin: 30 }
                    }



        Item{
            id: action
            width:80;
            height:40
            anchors.left: parent.left;
            anchors.leftMargin: 5
            anchors.bottom: parent.bottom;
            Text {
                anchors.fill:parent
                id: actionText
                horizontalAlignment: Text.AlignLeft
                color:Global.Blue
                text: myaction[status]
                font.family: fixedFont.name
                font.pointSize: 14
            }
            MouseArea{
            }
        }
        Text {

            id: playStatus
           anchors.left: parent.left;
           anchors.leftMargin: 5
            color:"white"
            text: "آخرین بار 7 روز پیش بازی شده"
            font.family: fixedFont.name
            font.pointSize: 11
            opacity: 0.5
        }

}
