import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    Rectangle {
        id: rectangle
        color: "#2c313c"
        anchors.fill: parent

        Label {
            id: label
            x: 104
            y: 56
            width: 204
            height: 32
            color: "#ffffff"
            text: qsTr("Opertion Successfull!")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

}
