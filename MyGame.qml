import QtQuick 2.0
import QtGraphicalEffects 1.0
import "constant.js" as Global

Item {
    id: myGame
    width:920

    property bool isGrid: true//false;
    height: 690
    FontLoader { id: fontAwesome;
        source: "content/fontawesome.ttf"
    }
    FontLoader { id: fixedFont;
        source: "content/0 Roya.ttf"
    }

    Rectangle {
        id: big
        color: "#0f2a4b"
        anchors.fill: parent

    }
    Rectangle {
        id: small
        color: "black"
        height: 90
         width:myGame.width
        anchors.top:parent.top
        opacity: 0.2
        layer.enabled: true
        layer.effect: DropShadow {
             transparentBorder: true
             radius: 10
             color: "#000000"
             verticalOffset: 8
                 }

    }

Item{
    id:select
    anchors.top:small.bottom
    height: 77
    width:parent.width
  Button{
      id:gridButton

      text:""
      x:25
      y:31
      function clicked(){
          myCard.showGrid()
               console.log("g")
      }
  }
  Button{
      id:listButton
      text:""
      x:50
      y:31
      function clicked(){
          myCard.showList()
          console.log("list")
      }
  }
    Search{
        id:searchArea
        x:92
        y:31
    }

}


    Item {
        id:cardView
        anchors.top:select.bottom
        width: parent.width
        height: 520
        anchors{
            right: parent.right;rightMargin: 0;
            left:parent.left;leftMargin:10}

        GridView{
            id: grid
            anchors.fill: parent

            property int column: ((myGame.width-10)/Global.card_width)
            property real space:  (( myGame.width-10)%Global.card_width)/column

            cellWidth:Global.card_width+space
            cellHeight: Global.card_height+20

            model:CardModel{}
            delegate:Card{}

            }
      }
}


