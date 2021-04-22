import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    Rectangle {
        id: rectangle
        color: "#2c313c"
        anchors.fill: parent

        StackView {
            id: stackView
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: button.top
            anchors.bottomMargin: 10
            initialItem: Qt.resolvedUrl("assignmentDataPage.qml")

        }

        Button {
            id: button
            text: qsTr("Next")
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.rightMargin: 10
            anchors.bottomMargin: 5
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:640}D{i:2}D{i:1}
}
##^##*/
