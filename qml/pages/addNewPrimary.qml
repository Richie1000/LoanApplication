import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Controls.Imagine 2.3

Item {
    readonly property string identifier: "addNewPrimary"
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
                    text: qsTr("First Name")
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
                    text: qsTr("Surname")
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
                    text: qsTr("Other names")
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
                    text: qsTr("Year of Birth")
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
                    text: qsTr("Month of Birth")
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
                    text: qsTr("Day of Birth")
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
                    text: qsTr("Sex")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: label5.bottom
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Verdana"
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
                        id: firstname
                        property alias firstName: firstname
                        width: 100
                        color: "#000000"
                        anchors.fill: parent
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.WordWrap
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
                    anchors.topMargin: 25
                    anchors.rightMargin: 130
                    TextInput {
                        id: surname
                        property alias lastName: surname
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
                        id: oname
                        property alias otherName: oname
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
                        id: yob
                        property alias year: yob
                        width: 100
                        color: "#000000"
                        anchors.fill: parent
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        maximumLength: 4
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
                        id: mob
                        property alias month: mob
                        width: 100
                        color: "#000000"
                        text: ""
                        anchors.fill: parent
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        inputMask: "99"
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
                        id: dob
                        property alias day: dob
                        width: 100
                        color: "#000000"
                        text: ""
                        anchors.fill: parent
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        maximumLength: 2
                        inputMask: "99"
                        clip: true
                    }
                    anchors.leftMargin: 30
                }

                Rectangle {
                    id: rectangle8
                    color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: rectangle7.bottom
                    anchors.rightMargin: 390
                    anchors.topMargin: 25
                    RadioButton {
                        id: rdBtnMale
                        property alias btnMale: rdBtnMale
                        x: -7
                        y: -7
                        width: 35
                        height: 15
                        text: qsTr("")
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.topMargin: 5
                        display: AbstractButton.IconOnly
                        anchors.leftMargin: 5
                    }

                    RadioButton {
                        id: rdBtnFemale
                        property alias btnFemale: rdBtnFemale
                        x: -7
                        y: 33
                        width: 36
                        height: 15
                        text: qsTr("")
                        anchors.left: parent.left
                        anchors.top: rdBtnMale.bottom
                        anchors.topMargin: 20
                        font.pointSize: 10
                        display: AbstractButton.IconOnly
                        anchors.leftMargin: 5
                    }

                    Label {
                        id: label7
                        width: 167
                        height: 25
                        color: "#fbfbfb"
                        text: qsTr("Male")
                        anchors.left: rdBtnMale.right
                        anchors.top: parent.top
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        font.pointSize: 12
                        anchors.topMargin: 0
                        anchors.leftMargin: 10
                    }

                    Label {
                        id: label8
                        width: 167
                        height: 25
                        color: "#fbfbfb"
                        text: qsTr("Female")
                        anchors.left: rdBtnFemale.right
                        anchors.top: label7.bottom
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        font.pointSize: 12
                        anchors.topMargin: 10
                        anchors.leftMargin: 5
                    }
                    anchors.leftMargin: 30
                }
            }
        }

    }

    function save(){
        var ismale = true;
        if (rdBtnMale.checked)
            ismale = true;
        if (rdBtnFemale.checked)
            ismale = false;
        backend.addPrimaryData(firstname.text,surname.text, oname.text, parseInt(yob.text), parseInt(mob.text), parseInt(dob), rdBtnMale)
    }


}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:640}
}
##^##*/
