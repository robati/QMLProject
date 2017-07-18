import QtQuick 2.0
import "constant.js" as Global
import "SortLogic.js" as Methods
Item{

    width:90
    height: 50
    Item{
        id:sortTop
        anchors{
            top:parent.top
            left:parent.left}

        height:sortType.height
        width:sortType.width+sortIcon.width+10


    Text {
        id: sortType
        anchors{
            left: parent.left;
            leftMargin: 15
            top:parent.top
             }

        text: "به ترتیب الفبا"
            font.family: fixedFont.name
            font.pointSize: 12
            color:Global.Blue
        }

    Text {
        id: sortIcon
        anchors{
            left: parent.left;
            leftMargin: 0
            top:parent.top
            topMargin: 5
             }

        text: ""
            font.family: fontAwesome.name
            font.pointSize: 12
            color:Global.Blue
    }
    MouseArea{
        anchors.fill: parent
        onClicked:Methods.togglePopUp();
            }
    }

    Rectangle{
        id:sortPopUp
        visible: false
        width:90
        anchors{
            left: sortTop.left;
            leftMargin: 0
            top:sortTop.bottom}

        height:sortType.height-7
        color: Global.buttonSelected
        radius: 3

        Text{
            id:sortList
            font.family: fixedFont.name
            font.pointSize: 11
            color:Global.DarkBlue
            anchors{
                left: parent.left
                leftMargin: 10}

            text:"به ترتیب زمان"
            MouseArea{
                anchors.fill: parent
                onClicked: {Methods.swapText();Methods.togglePopUp();Methods.sort(sortType.text)}
            }
        } //sortList


    }//sortPopUp


    }


