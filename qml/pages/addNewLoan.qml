import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    Rectangle {
        id: rectangle
        color: "#2c313c"
        anchors.fill: parent

        Button {
            id: btnSave
            text: qsTr("Save")
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.rightMargin: 5
            anchors.bottomMargin: 0
        }

        Rectangle {
            id: rectangle1
            color: "#00000000"
            border.color: "#00000000"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: btnSave.top
            anchors.rightMargin: 5
            anchors.leftMargin: 5
            anchors.bottomMargin: 10
            anchors.topMargin: 40

            Rectangle {
                id: rectangle2
                width: 200
                height: 400
                color: "#00000000"
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 10
                anchors.bottomMargin: 10
                anchors.topMargin: 10

                Label {
                    id: label
                    height: 60
                    color: "#ffffff"
                    text: qsTr("Loan Name")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.rightMargin: 10
                    font.pointSize: 10
                    anchors.leftMargin: 10
                    anchors.topMargin: 10
                }

                Label {
                    id: label1
                    height: 60
                    color: "#ffffff"
                    text: qsTr("Fixed Interest Rate")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: label.bottom
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.topMargin: 10
                    font.pointSize: 10
                    anchors.rightMargin: 10
                    anchors.leftMargin: 10
                }

                Label {
                    id: label2
                    height: 60
                    color: "#ffffff"
                    text: qsTr("Grace Period")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: label1.bottom
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 10
                    anchors.rightMargin: 10
                    anchors.leftMargin: 10
                    anchors.topMargin: 10
                }

                Label {
                    id: label3
                    height: 60
                    color: "#ffffff"
                    text: qsTr("Loan Fess")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: label2.bottom
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.leftMargin: 10
                    font.pointSize: 10
                    anchors.rightMargin: 10
                    anchors.topMargin: 10
                }

                Label {
                    id: label4
                    height: 60
                    color: "#ffffff"
                    text: qsTr("Number of Terms (Months)")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: label3.bottom
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 10
                    anchors.rightMargin: 10
                    anchors.topMargin: 10
                    anchors.leftMargin: 10
                }
            }

            Rectangle {
                id: rectangle3
                width: 150
                color: "#00000000"
                anchors.left: rectangle2.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 20
                anchors.topMargin: 10
                anchors.bottomMargin: 10

                Rectangle {
                    id: rectangle4
                    height: 35
                    color: "#ffffff"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.topMargin: 20

                    TextInput {
                        id: txtLoanName
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        clip: true
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
                    anchors.topMargin: 35
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    TextInput {
                        id: txtFixedInterestRate
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        clip: true
                        anchors.rightMargin: 5
                        anchors.topMargin: 5
                        anchors.leftMargin: 5
                        anchors.bottomMargin: 5
                    }
                }

                Rectangle {
                    id: rectangle6
                    height: 35
                    color: "#ffffff"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: rectangle5.bottom
                    anchors.topMargin: 35
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    TextInput {
                        id: txtFloatingInterestRate
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        clip: true
                        anchors.rightMargin: 5
                        anchors.topMargin: 5
                        anchors.leftMargin: 5
                        anchors.bottomMargin: 5
                    }
                }

                Rectangle {
                    id: rectangle8
                    height: 35
                    color: "#ffffff"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: rectangle6.bottom
                    anchors.topMargin: 35
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    TextInput {
                        id: txtLoanFees
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        clip: true
                        anchors.rightMargin: 5
                        anchors.leftMargin: 5
                        anchors.topMargin: 5
                        anchors.bottomMargin: 5
                    }
                }

                Rectangle {
                    id: rectangle9
                    height: 35
                    color: "#ffffff"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: rectangle8.bottom
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.topMargin: 35
                    TextInput {
                        id: txtNumberOfTerms
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        clip: true
                        anchors.rightMargin: 5
                        anchors.topMargin: 5
                        anchors.leftMargin: 5
                        anchors.bottomMargin: 5
                    }
                }
            }
        }

        Label {
            id: label5
            color: "#ffffff"
            text: qsTr("Add New Loan Product")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: rectangle1.top
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 11
            font.bold: true
            anchors.rightMargin: 200
            anchors.leftMargin: 200
            anchors.bottomMargin: 5
            anchors.topMargin: 2
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:640}D{i:8}D{i:9}D{i:4}D{i:12}
D{i:11}D{i:13}D{i:15}D{i:17}D{i:19}D{i:10}D{i:3}D{i:21}
}
##^##*/
