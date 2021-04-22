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
            anchors.leftMargin: 5
            anchors.bottomMargin: 10
            anchors.topMargin: 50

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
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 10
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

            Label {
                id: label3
                height: 35
                color: "#ffffff"
                text: qsTr("Loan Name")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: label2.bottom
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.topMargin: 20
                anchors.rightMargin: 0
                anchors.leftMargin: 0
            }

            Label {
                id: label4
                height: 35
                color: "#ffffff"
                text: qsTr("Loan ID")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: label3.bottom
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 20
            }

            Label {
                id: label5
                height: 35
                color: "#ffffff"
                text: qsTr("Number of Terms")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: label4.bottom
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 20
            }
        }

        Rectangle {
            id: rectangle2
            width: 150
            color: "#00000000"
            anchors.left: rectangle1.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 10
            anchors.bottomMargin: 10
            anchors.topMargin: 50

            Rectangle {
                id: rectangle3
                height: 35
                color: "#ffffff"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 10

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
                    anchors.rightMargin: 5
                    anchors.leftMargin: 5
                    anchors.bottomMargin: 5
                    anchors.topMargin: 5
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
                    anchors.rightMargin: 5
                    anchors.leftMargin: 5
                    anchors.bottomMargin: 5
                    anchors.topMargin: 5
                }
            }

            Rectangle {
                id: rectangle5
                height: 35
                color: "#ffffff"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: rectangle4.bottom
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                TextInput {
                    id: txtLoanName
                    text: qsTr("")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.rightMargin: 5
                    anchors.leftMargin: 5
                    anchors.bottomMargin: 5
                    anchors.topMargin: 5
                }
                anchors.topMargin: 20
            }

            Rectangle {
                id: rectangle6
                height: 35
                color: "#ffffff"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: rectangle5.bottom
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                TextInput {
                    id: txtLoanID
                    text: qsTr("")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.rightMargin: 5
                    anchors.leftMargin: 5
                    anchors.bottomMargin: 5
                    anchors.topMargin: 5
                }
                anchors.topMargin: 20
            }

            Rectangle {
                id: rectangle7
                height: 35
                color: "#ffffff"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: rectangle6.bottom
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                TextInput {
                    id: txtNumOfTerms
                    text: qsTr("")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.rightMargin: 5
                    anchors.leftMargin: 5
                    anchors.bottomMargin: 5
                    anchors.topMargin: 5
                }
                anchors.topMargin: 20
            }
        }

        Label {
            id: label
            color: "#ffffff"
            text: qsTr("Enter Customer And Loan Details")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: rectangle1.top
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
            font.pointSize: 12
            anchors.rightMargin: 50
            anchors.leftMargin: 50
            anchors.topMargin: 5
            anchors.bottomMargin: 11
        }
    }

}
