import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    property string inputText: "abacca"
    property string typeOfInput: "Numbers"

    function testValid(inputText){


    }

    Dialog {
        id: inputError
        title: "Input Error!"
        standardButtons: StandardButton.Ok
        modal:  Qt.ApplicationModal
        onAccepted: Qt.quit()
        Text: "Please Enter only " + typeOfInput

    }
}
