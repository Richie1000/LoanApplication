import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.11
import "../controls"

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
        anchors.topMargin: 5
        anchors.leftMargin: 10
        Text {
            id: text1
            color: "#f7f6f6"
            text: qsTr("Analysis")
            anchors.fill: parent
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        anchors.rightMargin: 10
    }

    Rectangle {
        id: rectangle3
        color: "#00000000"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 40
        anchors.leftMargin: 60
        Text {
            id: text2
            height: 42
            color: "#ffffff"
            text: qsTr("What would you like to Analyze?")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            font.pixelSize: 21
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.topMargin: 0
            anchors.leftMargin: 0
            minimumPixelSize: 16
            anchors.rightMargin: 0
        }

        GridLayout {
            id: gridLayout
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: text2.bottom
            anchors.bottom: parent.bottom
            anchors.topMargin: 20
            anchors.leftMargin: 0
            flow: GridLayout.TopToBottom
            HomeWidgets {
                id: btnLoanPerformance
                text: "Loan Performance"
                btnIconSource: "../../images/svg_images/customer.svg"
            }

            HomeWidgets {
                id: btnCustLoanPerf
                text: "Customer Loan Performance"
                btnIconSource: "../../images/svg_images/edit.svg"
            }

            HomeWidgets {
                id: btnOfficerLoanPerformance
                text: "Loan Officer Loan Performance"
                btnIconSource: "../../images/svg_images/loan (1).svg"
            }

            HomeWidgets {
                id: btnLog
                text: "Log"
                btnIconSource: "../../images/svg_images/delete (1).svg"
            }

            HomeWidgets {
                id: btnLoanRepayAnalysis
                text: "Loan Repayment Analysis"
                btnIconSource: "../../images/svg_images/customer.svg"
            }

            HomeWidgets {
                id: btnRetRawData
                text: "Retrieve Raw Data"
                btnIconSource: "../../images/svg_images/customer.svg"
            }
            anchors.rightMargin: 0
            rows: 3
            anchors.bottomMargin: 20
            columns: 2
        }
        anchors.rightMargin: 60
        anchors.bottomMargin: 80
    }
}
}
/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
