import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import "controls"
import QtGraphicalEffects 1.15
import QtQuick.Timeline 1.0
import "pages"

Window {
    id: splashScreen1
    width: 380
    height: 580
    visible: true
    color: "#00000000"

    //removing the standard titlebar
    flags: Qt.SplashScreen  | Qt.FramelessWindowHint

    //Javascript function to switch screens to the main page
    QtObject {
        id: internal

        function checkLogin(username, password) {
            if (username === "Richie"||password === "password123") {
                var Component = Qt.createComponent("main.qml")
                var win = Component.createObject()
                win.show()
                visible = false
            }
        }
    }

    Rectangle {
        id: bg
        x: 90
        y: 190
        width: 360
        height: 560
        color: "#151515"
        radius: 10
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        z: 1

        Image {
            id: logImage
            x: 130
            width: 300
            height: 120
            opacity: 1
            anchors.top: parent.top
            source: "qrc:/qtquickplugin/images/template_image.png"
            anchors.topMargin: 30
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
        }

        CircularProgress {
            id: circularProgress
            x: 55
            y: 179
            opacity: 1
            anchors.verticalCenter: parent.verticalCenter
            value: 100
            progressWidth: 15
            dropShadowWidth: 9
            progressColor: "#55aaff"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button {
            id: btnLogin
            x: 123
            y: 470
            width: 100
            opacity: 1
            text: qsTr("Login")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 40
            anchors.horizontalCenter: parent.horizontalCenter
            background: Rectangle{
                           color: "#55aaff"
                       }
            onClicked: {
                internal.checkLogin(txtUsername.text,txtPassword.text)
                backend.welcomeText(txtUsername.text)
            }

        }

        TextField {
            id: txtPassword
            x: 80
            y: 424
            opacity: 1
            anchors.bottom: btnLogin.top
            anchors.bottomMargin: 10
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            placeholderText: qsTr("Password")
            echoMode: "Password"
            Keys.onEnterPressed: {
                internal.checkLogin(txtUsername.text,txtPassword.text)
                backend.welcomeText(txtUsername.text)
            }
        }

        TextField {
            id: txtUsername
            x: 80
            y: 385
            opacity: 1
            anchors.bottom: txtPassword.top
            anchors.bottomMargin: 10
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            placeholderText: qsTr("Username")
            Keys.onEnterPressed: {
                internal.checkLogin(txtUsername.text,txtPassword.text)
                backend.welcomeText(txtUsername.text)
            }

        }
        Button {
            id: btnClose
            x: 99
            width: 30
            height: 30
            opacity: 1
            text: qsTr("X")
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 15
            anchors.topMargin: 10
            background: Rectangle {
                color: "#55aaff"
            }
            onClicked: splashScreen1.close()
        }
    }

    DropShadow {
        anchors.fill: bg
        source: bg
        verticalOffset: 0
        horizontalOffset: 0
        radius: 10
        color: "#40000000"
        z: 0
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                loops: 1
                running: true
                duration: 3000
                to: 3000
                from: 0
            }
        ]
        startFrame: 0
        endFrame: 3000
        enabled: true

        KeyframeGroup {
            target: circularProgress
            property: "value"
            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                value: 100
                frame: 1300
            }
        }

        KeyframeGroup {
            target: circularProgress
            property: "opacity"
            Keyframe {
                value: 1
                frame: 1297
            }

            Keyframe {
                value: 0
                frame: 1800
            }

            Keyframe {
                value: 1
                frame: 0
            }
        }

        KeyframeGroup {
            target: logImage
            property: "opacity"
            Keyframe {
                value: 0
                frame: 1801
            }

            Keyframe {
                value: 1
                frame: 2300
            }

            Keyframe {
                value: 0
                frame: 0
            }
        }

        KeyframeGroup {
            target: txtUsername
            property: "opacity"
            Keyframe {
                value: 0
                frame: 1895
            }

            Keyframe {
                value: 1
                frame: 2400
            }

            Keyframe {
                value: 0
                frame: 0
            }
        }

        KeyframeGroup {
            target: txtPassword
            property: "opacity"
            Keyframe {
                value: 0
                frame: 2003
            }

            Keyframe {
                value: 1
                frame: 2500
            }

            Keyframe {
                value: 0
                frame: 0
            }
        }

        KeyframeGroup {
            target: btnLogin
            property: "opacity"
            Keyframe {
                value: 0
                frame: 2097
            }

            Keyframe {
                value: 1
                frame: 2600
            }

            Keyframe {
                value: 0
                frame: 0
            }
        }

        KeyframeGroup {
            target: bg
            property: "height"
            Keyframe {
                value: 360
                frame: 1297
            }

            Keyframe {
                easing.bezierCurve: [0.217,0.00132,0.221,1,1,1]
                value: 560
                frame: 1900
            }

            Keyframe {
                value: 360
                frame: 0
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}D{i:12}
}
##^##*/
