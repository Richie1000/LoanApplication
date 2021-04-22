import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import "controls"
import QtQuick.Layouts 1.11

Window {
    id: mainWindow
    width: 1000
    height: 580
    visible: true
    color: "#00000000"

    //Properties
    property alias btnCloseBtnIconSource: btnClose.btnIconSource
    property int windowStatus: 0
    property int windowMargin: 10
    property url source: "pages/homePage.qml"

    function changeView (source){
        stackView.push(Qt.resolvedUrl(source))
    }

    //Getting rid of the title Bar
    flags: Qt.Window | Qt.FramelessWindowHint

    //Internal Functions
    QtObject{
        id: interval

        function maximizeRestore(){
            if(windowStatus == 0) {
                mainWindow.showMaximized()
                windowStatus = 1
                windowMargin = 0
                btnMaximixeRestore.btnIconSource = "../images/svg_images/restore_icon.svg"
            }
            else {
                mainWindow.showNormal()
                windowStatus = 0
                windowMargin = 10
                btnMaximixeRestore.btnIconSource = "../images/svg_images/maximize_icon.svg"

            }
        }


        function ifMaximizedWindowRestore(){
            if (windowStatus == 10) {
                mainWindow.showNormal()
                windowStatus = 1
                windowMargin = 10
                btnMaximixeRestore.btnIconSource = "../images/svg_images/maximize_icon.svg"
            }
        }

        function restoreMargins(){
            windowMargin = 10
            windowStatus = 0
            btnMaximixeRestore.btnIconSource = "../images/svg_images/maximize_icon.svg"
        }
    }

    title: qsTr("Home")

    Rectangle {
        id: bg
        y: 190
        color: "#2c313c"
        border.color: "#383e4c"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: windowMargin
        anchors.rightMargin: windowMargin
        anchors.leftMargin: windowMargin
        anchors.bottomMargin: windowMargin
        z: 1

        Rectangle {
            id: appContainer
            color: "#00000000"
            anchors.fill: parent
            anchors.rightMargin: 1
            anchors.leftMargin: 1
            anchors.bottomMargin: 1
            anchors.topMargin: 1

            Rectangle {
                id: topBar
                height: 60
                color: "#1c1d20"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0

                ToggleButton {
                    onClicked: animationMenu.running = true

                }

                Rectangle {
                    id: topBarDescription
                    y: 34
                    height: 25
                    color: "#282c34"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    anchors.leftMargin: 70
                    anchors.bottomMargin: 0

                    Label {
                        id: labelTopInfo
                        color: "#c3cbdd"
                        text: qsTr("Application Infomation")
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        verticalAlignment: Text.AlignVCenter
                        anchors.leftMargin: 10
                        anchors.rightMargin: 300
                        anchors.bottomMargin: 0
                        anchors.topMargin: 0
                    }

                    Label {
                        id: labelRightinfo
                        color: "#c3cbdd"
                        text: qsTr("Application Infomation")
                        anchors.left: labelTopInfo.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        anchors.leftMargin: 0
                        anchors.rightMargin: 0
                        anchors.topMargin: 0
                        anchors.bottomMargin: 0
                    }
                }

                Rectangle {
                    id: titleBar
                    height: 35
                    color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.rightMargin: 105
                    anchors.leftMargin: 70
                    anchors.topMargin: 0

                    DragHandler {
                        onActiveChanged: if(active){
                                             mainWindow.startSystemMove()
                                             interval.ifMaximizedWindowRestore()
                                         }
                    }

                    Image {
                        id: iconApp
                        width: 22
                        height: 22
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        source: "qrc:/qtquickplugin/images/template_image.png"
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 5
                        anchors.topMargin: 0
                        fillMode: Image.PreserveAspectFit
                    }

                    Label {
                        id: label
                        color: "#c3bddd"
                        text: qsTr("Loan Application")
                        anchors.left: iconApp.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        verticalAlignment: Text.AlignVCenter
                        anchors.leftMargin: 5
                    }
                }

                Row {
                    id: rowBtns
                    x: 872
                    width: 105
                    height: 35
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.rightMargin: 0
                    anchors.topMargin: 0

                    TopBarButton {
                        id: btnMinimize
                        onClicked: {
                            mainWindow.showMinimized()
                            interval.restoreMargins()
                        }

                    }

                    TopBarButton {
                        id: btnMaximixeRestore
                        btnIconSource: "../images/svg_images/maximize_icon.svg"
                        onClicked: interval.maximizeRestore()
                    }

                    TopBarButton {
                        id: btnClose
                        btnColorClicked: "#da0351"
                        btnIconSource: "../images/svg_images/close_icon.svg"
                        onClicked: mainWindow.close()
                    }
                }
            }

            Rectangle {
                id: content
                color: "#00000000"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: topBar.bottom
                anchors.bottom: parent.bottom
                anchors.topMargin: 0

                Rectangle {
                    id: leftMenu
                    width: 70
                    color: "#1c1d20"
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0

                    PropertyAnimation {
                        id: animationMenu
                        target: leftMenu
                        property: "width"
                        to: if(leftMenu.width == 70) return 200; else return 70
                        duration: 500
                        easing.type: Easing.OutBack
                    }

                    Column {
                        id: columnMenu
                        width: 70
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                        anchors.bottomMargin: 90
                        anchors.topMargin: 0

                        LeftMenuBtn {
                            id: btnHome
                            width: leftMenu.width
                            height: 60
                            text: qsTr("Home")
                            isActiveMenu: true
                            onClicked: {
                                btnHome.isActiveMenu = true
                                btnSettings.isActiveMenu = false
                                btnLoaan.isActiveMenu = false
                                btnAnalysis.isActiveMenu = false
                                btnCustomer.isActiveMenu = false
                                btnSearch.isActiveMenu = false
                                stackView.push(Qt.resolvedUrl("pages/homePage.qml"))
                                //pageView.setSource(Qt.resolvedUrl("pages/homePage.qml"))
                            }
                        }

                        LeftMenuBtn {
                            id: btnCustomer
                            width: leftMenu.width
                            height: 60
                            text: qsTr("Customer")
                            btnIconSource: "../images/svg_images/contact_icon.svg"
                            onClicked: {
                                btnHome.isActiveMenu = false
                                btnSettings.isActiveMenu = false
                                btnCustomer.isActiveMenu = true
                                btnLoaan.isActiveMenu = false
                                btnAnalysis.isActiveMenu = false
                                btnSearch.isActiveMenu = false
                                stackView.push(Qt.resolvedUrl("pages/customerPage.qml"))
                            }
                        }

                        LeftMenuBtn {
                            id: btnLoaan
                            width: leftMenu.width
                            height: 60
                            text: qsTr("Loan")
                            btnIconSource: "../images/svg_images/money_icon.svg"
                            onClicked: {
                                btnHome.isActiveMenu = false
                                btnSettings.isActiveMenu = false
                                btnCustomer.isActiveMenu = false
                                btnLoaan.isActiveMenu = true
                                btnAnalysis.isActiveMenu = false
                                btnSearch.isActiveMenu - false
                                stackView.push(Qt.resolvedUrl("pages/loanPage.qml"))
                            }
                        }

                        LeftMenuBtn {
                            id: btnAnalysis
                            width: leftMenu.width
                            height: 60
                            text: qsTr("Analysis")
                            btnIconSource: "../images/svg_images/graph_icon.svg"
                            onClicked: {
                                btnHome.isActiveMenu = false
                                btnSettings.isActiveMenu = false
                                btnCustomer.isActiveMenu = false
                                btnLoaan.isActiveMenu = false
                                btnAnalysis.isActiveMenu = true
                                btnSearch.isActiveMenu - false
                                stackView.push(Qt.resolvedUrl("pages/analysisPage.qml"))
                            }
                        }

                        LeftMenuBtn {
                            id: btnSearch
                            width: leftMenu.width
                            height: 60
                            text: qsTr("Search ")
                            btnIconSource: "../images/svg_images/search_icon.svg"

                            onClicked: {
                                btnHome.isActiveMenu = false
                                btnSettings.isActiveMenu = false
                                btnCustomer.isActiveMenu = false
                                btnLoaan.isActiveMenu = false
                                btnAnalysis.isActiveMenu = false
                                btnSearch.isActiveMenu = true
                                stackView.push(Qt.resolvedUrl("pages/searchPage.qml"))
                            }
                        }
                    }

                    LeftMenuBtn {
                        id: btnSettings
                        width: leftMenu.width
                        height: 60
                        text: qsTr("Settings")
                        anchors.bottom: parent.bottom
                        btnIconSource: "../images/svg_images/settings_icon.svg"
                        anchors.bottomMargin: 25
                        clip: false
                        onClicked: {
                            btnHome.isActiveMenu = false
                            btnSettings.isActiveMenu = true
                            btnAnalysis.isActiveMenu = false
                            btnCustomer.isActiveMenu = false
                            btnLoaan.isActiveMenu = false
                            btnSearch.isActiveMenu = false
                            stackView.push(Qt.resolvedUrl("pages/settingsPage.qml"))
                            //pageView.setSource(Qt.resolvedUrl("pages/settingsPage.qml"))
                        }
                    }
                }

                Rectangle {
                    id: contentPages
                    color: "#2c313c"
                    anchors.left: leftMenu.right
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    clip: true
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 26
                    anchors.topMargin: 0



                    StackView {
                        id: stackView
                        anchors.fill: parent
                        initialItem: Qt.resolvedUrl("pages/homePage.qml")
                    }

//                    Loader {
//                        id: pageView
//                        anchors.fill: parent
//                        source: Qt.resolvedUrl("pages/homePage.qml")

//                    }
                }

                Rectangle {
                    id: rectangle
                    width: 200
                    color: "#282c34"
                    anchors.left: leftMenu.right
                    anchors.right: parent.right
                    anchors.top: contentPages.bottom
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0

                    Label {
                        id: labelTopInfo1
                        color: "#c3cbdd"
                        text: qsTr("Application Infomation")
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 30
                        anchors.topMargin: 0
                        anchors.leftMargin: 10
                        anchors.bottomMargin: 0
                    }
                }
            }
        }
    }
    DropShadow {
        anchors.fill: bg
        horizontalOffset: 0
        verticalOffset:  0
        radius: 10
        samples: 16
        color: "#80000000"
        source: bg
        z: 0
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}
}
##^##*/
