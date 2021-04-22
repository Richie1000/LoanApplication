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
                    text: qsTr("Mobile Phone1")
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
                    height: 40
                    color: "#ffffff"
                    text: qsTr("Mobile Phone2")
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
                    height: 40
                    color: "#ffffff"
                    text: qsTr("Secondary Contact")
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
                    height: 40
                    color: "#ffffff"
                    text: qsTr("Email")
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
                    height: 40
                    color: "#ffffff"
                    text: qsTr("Postal Address")
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
                    height: 40
                    color: "#ffffff"
                    text: qsTr("Region of Residence")
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

                Label {
                    id: label6
                    height: 40
                    color: "#ffffff"
                    text: qsTr("Residential Address")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: label5.bottom
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 12
                    anchors.rightMargin: 10
                    anchors.topMargin: 20
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
                    height: 35
                    color: "#ffffff"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.rightMargin: 130
                    anchors.leftMargin: 30
                    anchors.topMargin: 5

                    TextInput {
                        id: txtPhone1
                        width: 100
                        color: "#000000"
                        text: ""
                        anchors.fill: parent
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.NoWrap
                        maximumLength: 10
                        clip: true
                        focus: true
                        activeFocusOnPress: true
                        validator: IntValidator {
                            locale: ""
                            bottom: 0
                        }

                        //maximumLengthChanged: 105

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
                    anchors.topMargin: 25
                    anchors.rightMargin: 130
                    TextInput {
                        id: txtPhone2
                        width: 100
                        color: "#000000"
                        anchors.fill: parent
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        maximumLength: 10
                        activeFocusOnPress: true
                        clip: true
                        validator: IntValidator {
                            locale: ""
                            bottom: 0
                        }

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
                    anchors.topMargin: 25
                    anchors.rightMargin: 130
                    TextInput {
                        id: txtSecCont
                        width: 100
                        color: "#000000"
                        anchors.fill: parent
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        maximumLength: 11
                        clip: true
                        validator: IntValidator {
                            locale: ""
                            bottom: 0
                        }

                    }
                    anchors.leftMargin: 30
                }

                Rectangle {
                    id: rectangle5
                    width: 100
                    height: 35
                    color: "#ffffff"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: rectangle4.bottom
                    anchors.topMargin: 25
                    anchors.rightMargin: 130
                    TextInput {
                        id: txtEmail
                        width: 100
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
                    id: rectangle6
                    width: 100
                    height: 35
                    color: "#ffffff"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: rectangle5.bottom
                    anchors.topMargin: 25
                    anchors.rightMargin: 130
                    TextInput {
                        id: txtPosAdd
                        width: 100
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
                    height: 35
                    color: "#ffffff"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: rectangle6.bottom
                    anchors.rightMargin: 130
                    anchors.topMargin: 25
                    TextInput {
                        id: txtRegRes
                        width: 100
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
                    id: rectangle1
                    x: 0
                    y: 0
                    width: 100
                    height: 35
                    color: "#ffffff"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: rectangle7.bottom
                    anchors.rightMargin: 130
                    anchors.leftMargin: 30
                    anchors.topMargin: 25

                    TextInput {
                        id: txtResAdd
                        width: 100
                        color: "#000000"
                        anchors.fill: parent
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        clip: true
                    }
                }
            }
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:480;width:640}
}
##^##*/
