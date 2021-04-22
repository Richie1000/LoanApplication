import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Button{
    id: btnTopBar
    //This may vary according to each control
    property url btnIconSource: "../../images/svg_images/minimize_icon.svg"
    property color btnColorDefault: "#1c1d20"
    property color btnColorMouseOver:"#23272E"
    property color btnColorClicked: "#00a1f1"

    QtObject {
        id: internal

        property var dynamicColor: if (btnTopBar.down){
                                       btnTopBar.down ? btnColorClicked : btnColorDefault
                                   } else {
                                       btnTopBar.hovered ? btnColorMouseOver : btnColorDefault
                                   }
    }

    width: 35
    height: 35

    background: Rectangle {
        id: bgBtn
        color: internal.dynamicColor

        Image {
            id: iconBtn
            source: btnIconSource
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            height: 16
            fillMode: Image.PreserveAspectFit
            width: 16
            visible: false
            antialiasing: false

        }

        ColorOverlay{
            anchors.fill: iconBtn
            source: iconBtn
            color: "#ffffff"
            antialiasing: false

        }

    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.75}
}
##^##*/
