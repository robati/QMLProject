import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    id: myGame
    width:920
    height: 690
    FontLoader { id: fontAwesome;
        source: "fontawesome.ttf"
    }
    FontLoader { id: fixedFont;
        source: "0 Roya.ttf"
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
         width:920
        anchors.top:parent.top
        opacity: 0.2
        layer.enabled: true
        layer.effect: DropShadow {
             transparentBorder: true
             radius: 10
          //   spread: 0.5
             color: "#000000"
            // horizontalOffset: 8
             verticalOffset: 8
                 }
        //anchors.fill: parent
    }


  Button{
      id:gridButton
      text:""
      x:25
      y:121
  }
  Button{
      id:listButton
      text:""
      x:50
      y:121
  }
    Search{
        id:searchArea
        x:92
        y:121
    }

    Grid {
        id:grid
        x: 25
        y:167

        rows: 3; columns: 4; spacing: 20

         Card { m:0.3 } //for unknow reason setting the opacity default value makes the first element different
          Card { m:0.3 ;status:"update";name:"اسکای بورن: فلان فلای بیسار..."}
           Card { m:0.3 ;status:"queue"}
            Card { m:0.3 ;status:"install"}
             Card {m:0.3 ;status:"updating";name:"فیلان فیلای بیسار ال بل جیمبل" }
              Card {m:0.3  ;name:"فیلان فیلای بیسار ال بل جیمبل" }
              Card { m:0.3;status:"queue" }
               Card {m:0.3  }
               Card {m:0.3  }
               Card { m:0.3 ;status:"update"}
                Card {m:0.3 ;status:"updating" }
                 Card {m:0.3  }


    }



}
