import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    id: customButton

    //Properties being Customized
    property color colorDefault: "#55aaff"  //this is the default color of the customButton
    property color colorMouseOver: "#cccccc" //color of button when mouse is hovered on
    property color colorClicked: "#333333" //Color of button after click


    // Creating a Qt object

    QtObject {
        id: internal
        property var buttonColor: if(customButton.down){
                                     customButton.down ? colorClicked: colorDefault
                                 } else {
                                     customButton.hovered ? colorMouseOver : colorDefault
                                 }
    }

    text: qsTr("Search")
    display: AbstractButton.IconOnly
    font.family: "Courier"
    width: 40
    height: 30


    background: Rectangle{
        color: internal.buttonColor
        radius: 15
    }

    contentItem: Item {
        anchors.fill: parent
        id: content
        width: 100
        height: 50

        Image {
            source: "../../images/svg_images/search_icon.svg"
            anchors.rightMargin: 10
            anchors.leftMargin: 10
            anchors.bottomMargin: 5
            anchors.topMargin: 5
            fillMode: Image.PreserveAspectFit
            visible: true
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            horizontalAlignment: Image.AlignHCenter
            antialiasing: false


        }
}
}
