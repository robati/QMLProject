import QtQuick 2.0
import "constant.js" as Global
Item {
    id: container


    Rectangle{
        id:search
        width:168
        height:21
        color: Global.DarkBlue
        antialiasing: true
        radius: 10
        Text {
            id: searchIcon
            anchors { verticalCenter: parent.verticalCenter; left: parent.left; leftMargin: 10 }
            text: ""
            font.family: fontAwesome.name
            font.pointSize: 10
            color: Global.LightBlue
        }
        Text{
            id: textInputDefault
            z:2
            anchors { right:parent.right;rightMargin: 5; left:parent.left;leftMargin: 25}
            width: 155
            font.family: fixedFont.name
            text: "جستجو"
            font.pointSize: 10
            color: Global.LightBlue
            MouseArea{
                anchors.fill: parent
                onClicked:{textInputDefault.visible=false;textInput.focus=true}
            }

        }

        TextInput {

            id: textInput
            anchors { right:parent.right;rightMargin: 5; left:parent.left;leftMargin: 25}
            property bool changed: false
            width: 155
            font.family: fixedFont.name
            text: ""
            font.pointSize: 10
            maximumLength: 25
            color: Global.LightBlue

             onTextChanged:
                 find(text);



    }
    Rectangle{
        id:searchColor    // used to apply opacity only to background color
        x:search.x
        y:search.y
        width:search.width
        height:search.height
        color: Global.Gray
        opacity: 0.1
        antialiasing: true
        radius: 10}
}
    function find(stext){

        if(visualModel.items.count)                         //items are all object visible in the listView
        visualModel.items.remove(0,visualModel.items.count); // empty the delegateModel items

        for( var i = 0;i < visualModel.model.count;i++ ){
            var entry = visualModel.model.get(i);
            if(entry.name.includes(stext))                  //only add Desirable objects to items
            visualModel.items.insert(entry);
        }

}

}
