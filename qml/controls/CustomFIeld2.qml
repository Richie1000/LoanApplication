import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    id: custom
    width: 200
    height: 40

    //properties
    property string txt: "Password"

    Rectangle {
        id: rectangle
        color: "#2c313c"
        anchors.fill: parent

        TextField {
            id: textField
            anchors.fill: parent
            placeholderText: custom.txt
            placeholderTextColor: "#ffffff"
            background: Rectangle { color: "#2c313c"; width: 200; height: 40}
            echoMode: TextInput.Password
        }
    }

}
