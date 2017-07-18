import QtQuick 2.1
import QtGraphicalEffects 1.0
import "constant.js" as Global
import QtQuick.Controls 2.1
import QtQml.Models 2.1

Item {
    id: myGame
    width:920
    height: 690
    FontLoader { id: fontAwesome;
        source: "content/fontawesome.ttf"
    }
    FontLoader { id: fixedFont;
        source: "content/0 Roya.ttf"
    }

    Rectangle {
        id: big //wholePage
        color: Global.DarkBlue
        anchors.fill: parent

    }
    Rectangle {
        id: small //top
        color: "#0a1b30"
        height: 90
        width:myGame.width
        anchors.top:parent.top

        z:10                    //DropShadow
        layer.enabled: true
        layer.effect: DropShadow {
             transparentBorder: true
             radius: 10
             color: "#060f1a"
             verticalOffset: 8
                 }

    }

Rectangle{    
    id:middle
    z:5                     //DropShadow
    color: Global.DarkBlue
    height: 77
    width:parent.width
    anchors{left:parent.left;leftMargin:10;top:small.bottom;topMargin: 0}


Item{
    id:selectArea
    x:10
    y:31
    width: 300
    height: 50

  GButton{
      id:gridButton
      text:""
      anchors{
          left: parent.left;leftMargin: 0
          top:parent.top}

      function clicked(){
          grid.visible=true;
          list.visible=false;
          listButton.selected=false

      }
  }

  GButton{
      selected: true
      id:listButton
      text:""
      anchors{
          left: gridButton.left;leftMargin: 25
              top:parent.top

      }

      function clicked(){
          list.visible=true;
          grid.visible=false;
           gridButton.selected=false


      }
  }
    Search{
        id:searchArea
        anchors{
            left: listButton.left;leftMargin: 32
                top:parent.top

        }


    }
    Sort{
        id:sortArea
        anchors{
            left: searchArea.left;leftMargin: 200
                top:parent.top

        }
    }
   }
}




    Item {
        id:cardView
        width: parent.width
        height: 520
        anchors{
            top:middle.bottom
            right: parent.right;rightMargin: 0;
            left:parent.left;leftMargin:10

        }

        GridView{
            visible: false
            id: grid
            anchors.fill: parent

            property int column: ((myGame.width-10)/Global.card_width)
            property real space:  (( myGame.width-10)%Global.card_width)/column

            cellWidth:Global.card_width+space
            cellHeight: Global.card_height+20

            model:CardModel{}
            delegate:Card{}

            }

        ListView {
            id:list
            z:4
            anchors.fill: parent
            ScrollBar.vertical:ScrollBar { }
            spacing:10
            model: ListCard{id: visualModel}

            displaced: Transition {
                NumberAnimation { properties: "x,y"; easing.type: Easing.OutQuad }
            }
            add: Transition {
                NumberAnimation { properties: "x,y"; easing.type: Easing.Linear}
            }
           }

     }//cardView
 }


