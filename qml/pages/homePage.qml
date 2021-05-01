import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.11
import "../controls"




Item {
    id: item1

    Rectangle {
        id: rectangle
        color: "#2c313c"
        anchors.fill: parent
        anchors.rightMargin: 8
        anchors.bottomMargin: 0
        anchors.leftMargin: -8
        anchors.topMargin: 0

        Rectangle {
            id: rectangleUpper
            width: 500
            height: 30
            color: "#00000000"
            radius: 20
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0

            Label {
                id: txtWelcome
                color: "#f7f6f6"
                text: qsTr("Welcome")
                anchors.fill: parent
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

        }

        Rectangle {
            id: rectangleLower
            color: "#191c2d"
            radius: 10
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: rectangleUpper.bottom
            anchors.bottom: parent.bottom
            anchors.topMargin: 10

            ScrollView {
                id: scrollView
                anchors.fill: parent

                Rectangle {
                    id: rectangle2
                    height: 49
                    color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.rightMargin: 10
                    anchors.leftMargin: 10
                    anchors.topMargin: 5

                    Text {
                        id: text2
                        height: 42
                        color: "#ffffff"
                        text: qsTr("What would you like to do?")
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        font.pixelSize: 21
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 0
                        anchors.topMargin: 0
                        anchors.leftMargin: 0
                        minimumPixelSize: 16
                    }
                }

                Rectangle {
                    id: rectangle3
                    color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 70
                    anchors.leftMargin: 70
                    anchors.bottomMargin: 80
                    anchors.topMargin: 40

                    GridLayout {
                        id: gridLayout
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: rectangle1.bottom
                        anchors.bottom: parent.bottom
                        rows: 4
                        columns: 2
                        flow: GridLayout.TopToBottom
                        anchors.bottomMargin: 10
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                        anchors.topMargin: 5

                        HomeWidgets {
                            id: btnNewCustomer
                            width: 200
                            text: "Add New Customer"
                            btnIconSource: "../../images/svg_images/customer.svg"
                            onClicked: {
                                stackView.push(Qt.resolvedUrl("addNew.qml"))
                            }

                        }

                        HomeWidgets {
                            id: btnEmailSet
                            width: 200
                            text: "Emaill notifiction Template"
                            btnIconSource: "../../images/svg_images/email.svg"
                        }

                        HomeWidgets {
                            id: btnAssignLoan
                            width: 200
                            text: "Assign Loan to Customer"
                            btnIconSource: "../../images/svg_images/loan (1).svg"
                            onClicked: mainWindow.changeView("pages/assignLoanToCustomer.qml")
                        }

                        HomeWidgets {
                            id: btnPerfLoanAnalysis
                            width: 200
                            text: "Performing Loan Analysis"
                            btnIconSource: "../../images/svg_images/stats.svg"
                        }

                        HomeWidgets {
                            id: btnEmailSet1
                            width: 200
                            text: "View Loan Product"
                            btnIconSource: "../../images/svg_images/edit.svg"
                        }

                        HomeWidgets {
                            id: btnNewCustomer1
                            width: 200
                            text: "Loan Performance"
                            btnIconSource: "../../images/svg_images/customer.svg"
                        }

                        HomeWidgets {
                            id: btnEmailSet2
                            width: 200
                            text: "Revise Loan Product"
                            btnIconSource: "../../images/svg_images/edit.svg"
                        }

                        HomeWidgets {
                            id: btnAssignLoan1
                            width: 200
                            text: "Loan Officer Loan Performance"
                            btnIconSource: "../../images/svg_images/loan (1).svg"
                            onClicked: mainWindow.changeView("splashScreen.qml")
                        }
                    }

                    Rectangle {
                        id: rectangle1
                        height: 40
                        color: "#ffffff"
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.leftMargin: 0
                        anchors.rightMargin: 70
                        anchors.topMargin: 10

                        TextField {
                            id: textField
                            anchors.fill: parent
                            placeholderText: qsTr("Search")
                        }
                    }

                    HomeTopButton {
                        height: 40
                        anchors.left: rectangle1.right
                        anchors.top: parent.top
                        anchors.topMargin: 10
                        anchors.leftMargin: 10

                    }
                }
            }
        }
    }

    Connections {
        target: backend

        function onSetName(name){
                    txtWelcome.text = name
                }
    }

}



/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.9;height:480;width:640}
}
##^##*/
