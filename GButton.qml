import QtQuick 2.0
import "constant.js" as Global
// grid and list view buttons
Rectangle {
    id: container
    property string text
    property bool selected: false
    width:18
    height:13
    color:"transparent"
    FontLoader { id: fontAwesome;
        source: "content/fontawesome.ttf"
    }
    Text {
        id:icon
        text:container.text
        font.family: fontAwesome.name
        font.pointSize: 12
        color:selected?Global.buttonSelected: Global.ButtonNotSelected

    }
    MouseArea {
        hoverEnabled :true
        anchors.fill: parent
        onClicked: {container.clicked();icon.color= Global.buttonSelected;selected=true}
        onEntered:icon.color=Global.buttonSelected;
        onExited: if(!selected) icon.color= Global.ButtonNotSelected

    }
    onSelectedChanged: if(selected==false) icon.color= Global.ButtonNotSelected

}
