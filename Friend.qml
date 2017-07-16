import QtQuick 2.1
import "constant.js" as Global
import QtGraphicalEffects 1.0
Item {   
    Rectangle {
           id: mask


           border.color: "white"
           border.width: 10
           color: "white"
           radius: 30
           clip: true
           width: 30;
           height: 30;
           //visible: false
       }
    Image {
        id: friendPic
        source: "./content/pic.jpg"
         fillMode: Image.PreserveAspectCrop
        width:20
        height:20
        visible: false
    }

    OpacityMask {
        anchors.fill: mask
        source: friendPic
        maskSource: mask
    }
}
