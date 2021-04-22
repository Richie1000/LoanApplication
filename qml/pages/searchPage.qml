import QtQuick 2.0
import QtQuick.Controls 2.15
import "../controls"

Rectangle {
    id: rectangle1
    color: "#2c313c"

    Rectangle {
        id: rectangle
        color: "#00000000"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 220
        anchors.leftMargin: 220
        anchors.bottomMargin: 280
        anchors.topMargin: 10

        Image {
            id: image
            anchors.fill: parent
            source: "qrc:/qtquickplugin/images/template_image.png"
            fillMode: Image.PreserveAspectFit
        }

        Rectangle {
            id: rectangle2
            x: -68
            width: 392
            height: 40
            color: "#00000000"
            anchors.top: image.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 50

            TextEdit {
                id: textEdit
                color: "#ffffff"
                text: qsTr("Text Edit")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.WordWrap
                anchors.leftMargin: 0
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                anchors.rightMargin: 40
            }

            HomeTopButton {
                width: 50
                text: "Search"
                anchors.left: textEdit.right
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                display: AbstractButton.IconOnly
                autoRepeat: true
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.bottomMargin: 0
                anchors.topMargin: 0

            }
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:3}
}
##^##*/
