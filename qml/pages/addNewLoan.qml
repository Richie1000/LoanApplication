import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    readonly property string identifier: "addLoan"
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
            onClicked: save()
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
                    text: qsTr("Method")
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
                        id: txtMethod
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
                        id: txtGracePeriod
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

            Label {
                id: label6
                x: 422
                width: 86
                height: 32
                color: "#e9eaeb"
                text: qsTr("Interest Rate")
                anchors.top: parent.top
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.topMargin: 30
            }

            Rectangle {
                id: rectangle7
                y: 30
                height: 35
                color: "#ffffff"
                anchors.left: label6.right
                anchors.right: parent.right
                anchors.top: rectangle4.bottom
                TextInput {
                    id: txtInterestRate
                    width: 50
                    anchors.fill: parent
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }
                anchors.rightMargin: 8
                anchors.leftMargin: 10
                anchors.topMargin: 35
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

    function save(){
        var loanID = 100;
        backend.addLoan(txtLoanName.text, loanID, txtMethod.text, parseInt(txtNumberOfTerms.text), parseFloat(txtLoanFees.text), txtGracePeriod.text  )
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:640}
}
##^##*/
