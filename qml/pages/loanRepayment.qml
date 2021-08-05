import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Controls.Imagine 2.3

Item {
    readonly property string identifier: "addRepayment"
    Rectangle {
        id: rectangle
        color: "#2c313c"
        anchors.fill: parent

        Rectangle {
            id: formLabelRect
            width: 200
            color: "#00000000"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 0
            anchors.bottomMargin: 10
            anchors.topMargin: 10

            Grid {
                id: grid
                anchors.fill: parent
                flow: Grid.TopToBottom
                rows: 1
                columns: 1

                Label {
                    id: label
                    height: 40
                    color: "#ffffff"
                    text: qsTr("Loan ID")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 12
                    anchors.leftMargin: 10
                    anchors.rightMargin: 10
                }

                Label {
                    id: label1
                    height: 45
                    color: "#ffffff"
                    text: qsTr("Assignment id")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: label.bottom
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.topMargin: 20
                    anchors.rightMargin: 10
                    font.pointSize: 12
                    anchors.leftMargin: 10
                }

                Label {
                    id: label2
                    height: 45
                    color: "#ffffff"
                    text: qsTr("Amount Paid")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: label1.bottom
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 12
                    anchors.rightMargin: 10
                    anchors.topMargin: 20
                    anchors.leftMargin: 10
                }

                Label {
                    id: label5
                    height: 45
                    color: "#ffffff"
                    text: qsTr("Officer ID")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: label2.bottom
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.topMargin: 25
                    anchors.rightMargin: 10
                    font.pointSize: 12
                    anchors.leftMargin: 10
                }

                Label {
                    id: label6
                    height: 45
                    color: "#ffffff"
                    text: qsTr("Customer ID")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: label5.bottom
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.rightMargin: 10
                    anchors.leftMargin: 10
                    font.pointSize: 12
                    anchors.topMargin: 30
                }
            }
        }

        Rectangle {
            id: formInputRectangle
            color: "#00000000"
            anchors.left: formLabelRect.right
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            anchors.topMargin: 0
            anchors.rightMargin: 150
            anchors.leftMargin: 10

            Row {
                id: row
                anchors.fill: parent
                anchors.rightMargin: 100

                Rectangle {
                    id: rectangle2
                    width: 100
                    height: 40
                    color: "#ffffff"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.rightMargin: 130
                    anchors.leftMargin: 30
                    anchors.topMargin: 0

                    TextInput {
                        id: txtLoanID
                        width: 100
                        color: "#000000"
                        anchors.fill: parent
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        clip: true
                    }
                }

                Rectangle {
                    id: rectangle3
                    width: 100
                    height: 35
                    color: "#ffffff"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: rectangle2.bottom
                    anchors.topMargin: 30
                    anchors.rightMargin: 130
                    TextInput {
                        id: txtAssID
                        width: 100
                        height: 40
                        color: "#000000"
                        anchors.fill: parent
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        clip: true
                    }
                    anchors.leftMargin: 30
                }

                Rectangle {
                    id: rectangle4
                    width: 100
                    height: 35
                    color: "#ffffff"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: rectangle3.bottom
                    anchors.topMargin: 30
                    anchors.rightMargin: 130
                    TextInput {
                        id: txtAmountPaid
                        width: 100
                        height: 40
                        color: "#000000"
                        anchors.fill: parent
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        clip: true
                    }
                    anchors.leftMargin: 30
                }

                Rectangle {
                    id: rectangle7
                    width: 100
                    height: 40
                    color: "#ffffff"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: rectangle4.bottom
                    anchors.rightMargin: 130
                    anchors.topMargin: 40
                    TextInput {
                        id: txtOfficerID
                        width: 100
                        height: 40
                        color: "#000000"
                        anchors.fill: parent
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        clip: true
                    }
                    anchors.leftMargin: 30
                }

                Rectangle {
                    id: rectangle8
                    width: 100
                    height: 40
                    color: "#ffffff"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: rectangle7.bottom
                    TextInput {
                        id: txtCustomerID
                        width: 100
                        height: 40
                        color: "#000000"
                        anchors.fill: parent
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        clip: true
                    }
                    anchors.rightMargin: 130
                    anchors.leftMargin: 30
                    anchors.topMargin: 30
                }
            }
        }

        Button {
            id: btnAddRecord
            x: 516
            y: 419
            text: qsTr("ADD RECORD")
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.rightMargin: 25
            anchors.bottomMargin: 20
            onClicked: save()
        }
    }

    function save(){
        var balance = 12.0;
        var date = 123;
        backend.addPayment(txtLoanID.text, txtAssID.text, parseFloat(txtAmountPaid.text), balance, date,  txtOfficerID.txt, txtCustomerID.text)
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:640}D{i:8}D{i:19}
}
##^##*/
