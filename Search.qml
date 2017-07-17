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

        TextInput {
            id: textInput
            anchors { right:parent.right;rightMargin: 5; left:parent.left;leftMargin: 25}
            width: 155
            font.family: fixedFont.name
            text: ""
            font.pointSize: 10
            maximumLength: 25
            color: Global.LightBlue
             opacity: 0.54
            // overwriteMode: true
             onTextChanged:
                 find(text);


    }
    Rectangle{
        id:searchColor    // used to apply opacity only to a specific part
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

        if(visualModel.items.count)
        visualModel.items.remove(0,visualModel.items.count);

        for( var i = 0;i < visualModel.model.count;i++ ){
            var entry = visualModel.model.get(i);
            if(entry.name.includes(stext))
            visualModel.items.insert(entry);
        }

}

}
