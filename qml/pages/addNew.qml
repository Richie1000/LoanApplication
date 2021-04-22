import QtQuick 2.0
import QtQuick.Controls 2.15


Item {
    Rectangle {
        id: rectangle
        color: "#2c313c"
        anchors.fill: parent
        //property url pageSource: "addNewPrimary.qml"
        property bool isActive: false
        //property url nextPage: " "

        // Need to create a function which will change url of page
        QtObject {
            id: internal
            property var pageSource: "addNewPrimary.qml"
            property var nextPage: "addNewPrimary"
            property var prevPage: "addNewPrimary.qml"

            function getPageSource() { if(pageSource == "addNewPrimary.qml") {
                    nextPage = "addNewContact.qml"
                    pageSource = nextPage
                    prevPage = "addNewPrimary.qml"

                }
                else if(pageSource == "addNewContact.qml") {
                    nextPage = "addNewEmpData.qml"
                    pageSource = "addNewEmpData.qml"
                    prevPage = "addNewContact.qml"
                }
                else if (pageSource == "addNewEmpData.qml"){
                    nextPage = "addNewFamData.qml"
                    pageSource = "addNewFamData.qml"
                    prevPage = "addNewFamData.qml"
                }
                return pageSource

            }


            function getPrevPage() {
                if (pageSource == "addNewContact.qml") {
                    pageSource = "addNewPrimary.qml"
                }
                else if (pageSource == "addNewFamData.qml") {
                    pageSource = "addNewEmpData.qml"
                }
                else if (pageSource == "addNewEmpData.qml")
                    pageSource = "addNewContact.qml"
                return pageSource
            }
        }

        Rectangle {
            id: rectangle1
            color: "#00000000"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: btnCancel.top
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 0
            anchors.bottomMargin: 5

            StackView {
                id: stackView
                anchors.fill: parent
                initialItem: Qt.resolvedUrl(internal.pageSource)
            }
        }

        Button {
            id: btnNext
            text: qsTr("Next >")
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.rightMargin: 5
            anchors.bottomMargin: 0
            onClicked: {
                stackView.push(Qt.resolvedUrl(internal.getPageSource()))

            }
        }

        Button {
            id: btnBack
            text: qsTr("Back <")
            anchors.right: btnNext.left
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.rightMargin: 5
            onClicked: {
                stackView.push(internal.getPrevPage())

            }
        }

    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.9;height:480;width:640}
}
##^##*/
