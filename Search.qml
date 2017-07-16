import QtQuick 2.0
Item {
    id: container


    Rectangle{
        id:search
        width:168
        height:21
        color: "#0f2a4b"
        antialiasing: true
        radius: 10
        Text {
            anchors { verticalCenter: parent.verticalCenter; left: parent.left; leftMargin: 10 }
            text: ""
            font.family: fontAwesome.name
            font.pointSize: 10
            color: "#7da4b9"
        }

        TextInput {
            id: textInput
            anchors { right:parent.right;rightMargin: 5}
            width: 160
            font.family: fixedFont.name
            text: "جستجو"
            font.pointSize: 10
            maximumLength: 17
            color: "#7da4b9"
             opacity: 0.54
        }

    }
    Rectangle{
        id:searchColor
        x:search.x
        y:search.y
        width:search.width
        height:search.height
        color: "#e0e0e0"
        opacity: 0.1
        antialiasing: true
        radius: 10}
}
