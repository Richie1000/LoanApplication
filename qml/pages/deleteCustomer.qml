import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    Rectangle {
        id: rectangle
        color: "#2c313c"
        anchors.fill: parent
        Rectangle {
            id: rectangle1
            width: 200
            color: "#00000000"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.topMargin: 50
            anchors.bottomMargin: 10
            anchors.leftMargin: 5
            Label {
                id: label1
                height: 35
                color: "#ffffff"
                text: qsTr("Customer Name ")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.topMargin: 10
                anchors.rightMargin: 0
                anchors.leftMargin: 0
            }

            Label {
                id: label2
                height: 35
                color: "#ffffff"
                text: qsTr("Customer Number ")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: label1.bottom
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.topMargin: 20
                anchors.rightMargin: 0
                anchors.leftMargin: 0
            }
        }

        Rectangle {
            id: rectangle2
            width: 150
            color: "#00000000"
            anchors.left: rectangle1.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.topMargin: 50
            anchors.bottomMargin: 10
            anchors.leftMargin: 10
            Rectangle {
                id: rectangle3
                height: 35
                color: "#ffffff"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.topMargin: 10
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                TextInput {
                    id: txtCusName
                    text: qsTr("")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                    anchors.topMargin: 5
                    anchors.rightMargin: 5
                    anchors.bottomMargin: 5
                    anchors.leftMargin: 5
                }
            }

            Rectangle {
                id: rectangle4
                height: 35
                color: "#ffffff"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: rectangle3.bottom
                anchors.topMargin: 20
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                TextInput {
                    id: txtCusNum
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                    anchors.topMargin: 5
                    anchors.rightMargin: 5
                    anchors.bottomMargin: 5
                    anchors.leftMargin: 5
                }
            }
        }

        Label {
            id: label
            color: "#ffffff"
            text: qsTr("Delete Customer ")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: rectangle1.top
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.topMargin: 5
            anchors.rightMargin: 50
            anchors.bottomMargin: 11
            font.bold: true
            font.pointSize: 12
            anchors.leftMargin: 50
        }

        Button {
            id: btnDelete
            x: 530
            y: 440
            text: qsTr("Delete")
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.rightMargin: 10
            anchors.bottomMargin: 10
        }
    }

}
