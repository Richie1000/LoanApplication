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
            anchors.bottomMargin: 50
            anchors.leftMargin: 5

            Label {
                id: label
                height: 35
                color: "#ffffff"
                text: qsTr("Customer Name")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                anchors.topMargin: 10
            }

            Label {
                id: label1
                height: 35
                color: "#ffffff"
                text: qsTr("Customer Number")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: label.bottom
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.topMargin: 20
                anchors.rightMargin: 0
                anchors.leftMargin: 0
            }

            ComboBox {
                id: comboBox
                x: 30
                height: 30
                anchors.top: label1.bottom
                textRole: ""
                anchors.topMargin: 20
                currentIndex: 1
                model: ["Age", "Date of Birth", "Mobile Phone", "Employer", "Dependants", "Spouse Name", "Income"]
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
            anchors.bottomMargin: 50
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

            Rectangle {
                id: rectangle5
                height: 35
                color: "#ffffff"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: rectangle4.bottom
                anchors.topMargin: 20
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                TextInput {
                    id: txtNewValue
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

        Button {
            id: btnView
            x: 523
            y: 425
            text: "Update"
            anchors.rightMargin: 10
            anchors.bottomMargin: 10
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.9;height:480;width:640}D{i:3}D{i:4}D{i:5}D{i:11}
D{i:1}
}
##^##*/
