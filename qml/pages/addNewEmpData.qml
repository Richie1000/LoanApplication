import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Controls.Imagine 2.3

Item {
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
                    text: qsTr("Occupation")
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
                    text: qsTr("Employer")
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
                    text: qsTr("Highest Education")
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
                    id: label3
                    height: 45
                    color: "#ffffff"
                    text: qsTr("SSN")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: label2.bottom
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.topMargin: 20
                    anchors.rightMargin: 10
                    font.pointSize: 12
                    anchors.leftMargin: 10
                }

                Label {
                    id: label4
                    height: 45
                    color: "#ffffff"
                    text: qsTr("TIN")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: label3.bottom
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
                    text: qsTr("Emolyer Address")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: label4.bottom
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.topMargin: 20
                    anchors.rightMargin: 10
                    font.pointSize: 12
                    anchors.leftMargin: 10
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
                        id: txtOccupation
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
                        id: txtEmployer
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
                        id: txtHighEdu
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
                    id: rectangle5
                    width: 100
                    height: 40
                    color: "#ffffff"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: rectangle4.bottom
                    anchors.topMargin: 30
                    anchors.rightMargin: 130
                    TextInput {
                        id: txtSSN
                        width: 100
                        color: "#000000"
                        anchors.fill: parent
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        maximumLength: 15
                        clip: true
                        validator: IntValidator {
                            locale: ""


                        }

                    }
                    anchors.leftMargin: 30
                }

                Rectangle {
                    id: rectangle6
                    width: 100
                    height: 40
                    color: "#ffffff"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: rectangle5.bottom
                    anchors.topMargin: 30
                    anchors.rightMargin: 130
                    TextInput {
                        id: txtTin
                        width: 100
                        height: 40
                        color: "#000000"
                        anchors.fill: parent
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        maximumLength: 15
                        clip: true
                        validator: IntValidator {
                            locale: ""
                            //bottom: 0
                            //top: 9999999
                        }

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
                    anchors.top: rectangle6.bottom
                    anchors.rightMargin: 130
                    anchors.topMargin: 30
                    TextInput {
                        id: txtEmpAddress
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
            }
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:640}
}
##^##*/
