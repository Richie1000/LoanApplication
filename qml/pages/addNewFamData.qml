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
                    text: qsTr("Married")
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
                    text: qsTr("Spouse Name")
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
                    text: qsTr("Children")
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
                    text: qsTr("Next of Kin")
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
                    text: qsTr("Next of Kin Relation")
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
                    text: qsTr("Next of Kin Contact")
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
                    text: "Next of Kin Age"
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
                    id: rectangle3
                    width: 100
                    height: 60
                    color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: rectangle2.bottom
                    anchors.topMargin: 25
                    anchors.rightMargin: 50
                    anchors.leftMargin: 30

                    RadioButton {
                        id: rdBtnSingle
                        height: 20
                        text: qsTr("")
                        anchors.top: parent.top
                        anchors.topMargin: 6
                        rotation: -1.544
                        display: AbstractButton.IconOnly
                    }

                    RadioButton {
                        id: rdBtnMarried
                        height: 20
                        text: qsTr("")
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 2
                        display: AbstractButton.IconOnly
                    }

                    Label {
                        id: label7
                        width: 54
                        height: 23
                        color: "#ffffff"
                        text: qsTr("Single")
                        anchors.left: rdBtnSingle.right
                        anchors.top: parent.top
                        verticalAlignment: Text.AlignVCenter
                        anchors.topMargin: 5
                        font.pointSize: 11
                        anchors.leftMargin: 5
                    }

                    Label {
                        id: label8
                        width: 77
                        height: 20
                        color: "#ffffff"
                        text: qsTr("Married")
                        anchors.left: rdBtnMarried.right
                        anchors.top: label7.bottom
                        font.pointSize: 11
                        anchors.leftMargin: 5
                        anchors.topMargin: 10
                    }
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
                        id: txtSpouseName
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
                        id: txtNoChildren
                        width: 100
                        color: "#000000"
                        anchors.fill: parent
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        maximumLength: 2
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
                        id: txtNOK
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
                        id: txtNOKRelation
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
                    id: rectangle8
                    width: 100
                    height: 35
                    color: "#ffffff"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: rectangle7.bottom
                    anchors.rightMargin: 130
                    anchors.topMargin: 25
                    TextInput {
                        id: txtNOKContact
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
                    id: rectangle9
                    width: 100
                    height: 35
                    color: "#ffffff"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: rectangle8.bottom
                    anchors.topMargin: 20
                    anchors.rightMargin: 130
                    TextInput {
                        id: txtNOKAge
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
            }
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:640}D{i:5}D{i:6}D{i:7}D{i:8}
D{i:9}D{i:10}D{i:3}D{i:2}D{i:14}D{i:13}D{i:15}D{i:17}D{i:19}D{i:21}D{i:23}D{i:25}
D{i:12}D{i:11}D{i:1}
}
##^##*/
