import QtQuick 2.1

Item {
    id: card
    width: 204
    height: 137
    property double m
    property string status:"normal"
    property string name: "اسکای بورن"
    property url pic: "pic.jpg";
    Rectangle {
        id: big
        color: "black"
        anchors.fill: parent
        opacity:parent.m// 0.3
    }

    Rectangle {
        id: container
        width: 196
        height: 97
        anchors.horizontalCenter: card.horizontalCenter
        anchors.top: card.top
        anchors.topMargin: 5
        opacity: status=="normal"? 1:0.20                      //////////////////// relevant to statusLabel
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
                color:"#67c1f5"
                text:if(status=="update")return "نیازمند بروزرسانی";
                       else if(status=="queue")return "درصف"
                       else if(status=="updating")return "درحال بروزرسانی"
                        else if(status=="install")return "آماده نصب"

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
                text: card.name
                font.family: fixedFont.name
                font.pointSize: 14
            }
        }
}
