import QtQuick 2.0

Rectangle {
    id: container
    property string text
    width:18
    height:13
    color:"transparent"
    Text {

        text:container.text
        font.family: fontAwesome.name
        font.pointSize: 13
        color: "#7da4b9"

    }
    MouseArea {
        anchors.fill: parent
        onClicked: container.clicked();
    }

}
