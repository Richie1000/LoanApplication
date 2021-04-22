    import QtQuick 2.0
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import "controls"
import QtQuick.Timeline 1.0


Window {
    id: splashScreen
    width: 380
    height: 580
    visible: true
    color: "#00000000"
    title: qsTr("Welcome!")

    //Striping of titlebar
    flags: Qt.SplashScreen | Qt.FramelessWindowHint

    //Internal Function to switch to the main screen upon successful login
    QtObject {
        id: internal

        function checkLogin(username, password) {
            if (username === "Richie"||password === "password123") {
                var Component = Qt.createComponent("main.qml")
                var win = Component.createObject()
                //win.username = username
                //win.password = password
                win.show()
                visible = false
            }
        }
    }

    Rectangle {
        id: bg
        x: 110
        y: 209
        z: 1
        width: 360
        height: 560
        color: "#2c313c"
        radius: 10
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter

        Image {
            id: logoImage
            x: 130
            width: 300
            height: 80
            opacity: 1
            anchors.top: btnLogin1.bottom
            source: "qrc:/qtquickplugin/images/template_image.png"
            anchors.topMargin: 5
            anchors.horizontalCenter: parent.horizontalCenter
            sourceSize.height: 300
            fillMode: Image.PreserveAspectFit
        }

        CircularProgress {
            id: circularProgress
            x: 55
            opacity: 1
            anchors.top: logoImage.bottom
            value: 100
            anchors.topMargin: 10
            textSize: 12
            progressWidth: 8
            strokeBgWidth: 4
        }

        Button {
            id: btnLogin
            x: 105
            y: 494
            width: 200
            opacity: 1
            text: qsTr("Login")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
            background: Rectangle{
                color: "#55aaff"
            }
            onClicked: internal.checkLogin(txtUsername.text, txtPassword.text)
        }

        Label {
            id: label
            x: 147
            y: 299
            opacity: 0
            color: "#ffffff"
            text: qsTr("Sign in ")
            anchors.bottom: label1.top
            anchors.bottomMargin: 10
            font.family: "Segoe UI"
            font.pointSize: 15
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Label {
            id: label1
            x: 104
            y: 340
            opacity: 1
            color: "#ffffff"
            text: qsTr("User Name and Password")
            anchors.bottom: txtUsername.top
            anchors.bottomMargin: 10
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 10
            font.family: "Segoe UI"
        }

        TextField {
            id: txtUsername
            x: 80
            y: 401
            opacity: 1
            placeholderText: qsTr("Username")
        }

        TextField {
            id: txtPassword
            x: 80
            y: 447
            opacity: 1
            placeholderText: qsTr("Password")
            echoMode: "Password"
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
            onClicked: splashScreen.close()
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
                running: true
                loops: 1
                duration: 3000
                to: 3000
                from: 0
            }
        ]
        enabled: true
        startFrame: 0
        endFrame: 3000

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
            target: logoImage
            property: "opacity"
            Keyframe {
                value: 0
                frame: 1797
            }

            Keyframe {
                value: 1
                frame: 2298
            }

            Keyframe {
                value: 0
                frame: 0
            }
        }

        KeyframeGroup {
            target: label
            property: "opacity"
            Keyframe {
                value: 0
                frame: 1897
            }

            Keyframe {
                frame: 2398
                value: 1
            }

            Keyframe {
                frame: 0
                value: 0
            }
        }

        KeyframeGroup {
            target: label1
            property: "opacity"
            Keyframe {
                frame: 1997
                value: 0
            }

            Keyframe {
                frame: 2498
                value: 1
            }

            Keyframe {
                frame: 0
                value: 0
            }
        }

        KeyframeGroup {
            target: btnLogin
            property: "opacity"
            Keyframe {
                frame: 2097
                value: 0
            }

            Keyframe {
                frame: 2600
                value: 1
            }

            Keyframe {
                frame: 0
                value: 0
            }
        }

        KeyframeGroup {
            target: textField
            property: "opacity"
            Keyframe {
                frame: 2198
                value: 0
            }

            Keyframe {
                frame: 2700
                value: 1
            }

            Keyframe {
                frame: 0
                value: 0
            }
        }

        KeyframeGroup {
            target: textField1
            property: "opacity"
            Keyframe {
                frame: 2298
                value: 0
            }

            Keyframe {
                frame: 2799
                value: 1
            }

            Keyframe {
                frame: 0
                value: 0
            }
        }

        KeyframeGroup {
            target: bg
            property: "height"
            Keyframe {
                frame: 1303
                value: 380
            }

            Keyframe {
                easing.bezierCurve: [0.219,0.00661,0.221,1,1,1]
                frame: 1900
                value: 560
            }

            Keyframe {
                frame: 0
                value: 380
            }
        }

        KeyframeGroup {
            target: circularProgress
            property: "opacity"
            Keyframe {
                frame: 1303
                value: 1
            }

            Keyframe {
                frame: 1800
                value: 0
            }

            Keyframe {
                frame: 0
                value: 1
            }
        }
    }
}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}D{i:7}D{i:14}
}
##^##*/
