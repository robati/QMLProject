import QtQuick 2.1

Item {
    id: card
    width: 204
    height: 137
    FontLoader { id: fixedFont;
        source: "0 Roya.ttf"
    }
    Rectangle {
        id: big
        color: "black"
        anchors.fill: parent
    }

    Rectangle {
        id: container
        width: 196
        height: 97
        anchors.horizontalCenter: card.horizontalCenter
        anchors.top: card.top
        anchors.topMargin: 5
        opacity: 0.20                      //////////////////// relevant to statusLabel
        Image {
            id: img
            width: parent.width
            height: parent.height
            fillMode: Image.PreserveAspectCrop
            source: "pic.jpg";
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
                anchors.centerIn: container2
                color:"#67c1f5"
                text: "نیازمند بروزرسانی"
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
                text: " اسکای بورن"
                font.family: fixedFont.name
                font.pointSize: 14
            }
        }
}
