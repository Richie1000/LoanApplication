import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Button{
    id: btnLeftmenu
    text: qsTr("Left Menu Txt")
    //This may vary according to each control
    property url btnIconSource: "../../images/svg_images/home_icon.svg"
    property color btnColorDefault: "#1c1d20"
    property color btnColorMouseOver:"#23272E"
    property color btnColorClicked: "#00a1f1"
    property int iconWidth: 18
    property int iconHieght: 18
    property color activeMenuColor: "#55aaff"
    property color activemenuColorRight: "#2c313c"
    property bool isActiveMenu: false

    QtObject {
        id: internal

        property var dynamicColor: if (btnLeftmenu.down){
                                       btnLeftmenu.down ? btnColorClicked : btnColorDefault
                                   } else {
                                       btnLeftmenu.hovered ? btnColorMouseOver : btnColorDefault
                                   }
    }

    implicitWidth: 250
    implicitHeight: 60

    background: Rectangle {
        id: bgBtn
        color: internal.dynamicColor

        Rectangle{
            anchors{
                top: parent.top
                left: parent.left
                bottom: parent.bottom
            }
            color: activeMenuColor
            width: 3
            visible: isActiveMenu
        }


        Rectangle{
            anchors{
                top: parent.top
                right: parent.right
                bottom: parent.bottom
            }
            color: activemenuColorRight
            width: 5
            visible: isActiveMenu
        }

    }

    contentItem: Item {
        anchors.fill: parent
        id: content

        Image {
            id: iconBtn
            source: btnIconSource
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: 26
            anchors.left: parent.left
            sourceSize.width: iconWidth
            sourceSize.height: iconHieght
            width: iconWidth
            height: iconHieght
            fillMode: Image.PreserveAspectFit
            visible: false
            antialiasing: true

        }

        ColorOverlay{
            anchors.fill: iconBtn
            source: iconBtn
            color: "#ffffff"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            antialiasing: true
            width: iconWidth
            height: iconHieght

        }

        Text {
            color: "#ffffff"
            text: btnLeftmenu.text
            font: btnLeftmenu.font
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 75

        }

    }
}
