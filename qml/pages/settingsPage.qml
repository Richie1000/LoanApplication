import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    Rectangle {
        id: rectangle
        color: "#2c313c"
        anchors.fill: parent

        Label {
            id: label
            color: "#ffffff"
            text: qsTr("Settings Page")
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 16
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:800}
}
##^##*/
