import QtQuick 2.12
import QtQuick.Window 2.12

Rectangle {
  id: pWND
  color: "#2491ce"
  anchors.fill: parent
  
  Image {
      id: image
      anchors.fill: parent
      fillMode: Image.PreserveAspectFit
      source: "images/slip.jpg"
  }  
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1;anchors_x:138;anchors_y:135}
}
##^##*/
