import QtQuick 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15

Item {
    id: progress
    implicitHeight: 250
    implicitWidth: 250


    //Properties
    //General
    property bool roundCap: true
    property int startAngle: -90
    property real maxValue: 100
    property int value: 50
    property int samples: 12

    //Drop Shadow
    property bool enableDropShadow: true
    property color dropShadowColor: "#20000000"
    property int dropShadowWidth:  10

    //bg of Circle
    property color bgColor: "transparent"
    property color bgStrokeColor: "#7e7e7e"
    property int strokeBgWidth: 15

    //progress Circle
    property color progressColor: "#55aaff"
    property int progressWidth: 15

    //property text
    property string text: ""
    property bool  textShowValue: true
    property string textFontFamily : "Segoe UI"
    property int textSize: 12
    property color textColor: "#7c7c7c"

    //Internal Properties/Functions
    QtObject {
        id: internal

        property Component dropShadow: DropShadow {
            color: progress.dropShadowColor
            fast: true
            verticalOffset: 0
            horizontalOffset: 0
            samples: progress.samples
            radius: progress.dropShadowWidth
        }
    }

    Shape {
        id: shape
        anchors.fill: parent
        layer.enabled: true
        layer.samples: progress.samples
        layer.effect: progress.enableDropShadow ? internal.dropShadow: null

        ShapePath {
            id: pathBg
            strokeColor: progress.bgStrokeColor
            fillColor: progress.bgColor
            strokeWidth: progress.strokeBgWidth
            capStyle: progress.roundCap ? ShapePath.RoundCap : ShapePath.FlatCap


            PathAngleArc {
                radiusX: (progress.width / 2) - (progress.progressWidth /2)
                radiusY: (progress.height / 2) - (progress.progressWidth /2)
                centerX: progress.width / 2
                centerY: progress.height / 2
                startAngle: progress.startAngle
                sweepAngle: 360
            }
        }

        ShapePath {
            id: path
            strokeColor: progress.progressColor
            fillColor: "transparent"
            strokeWidth: progress.progressWidth
            capStyle: progress.roundCap ? ShapePath.RoundCap : ShapePath.FlatCap


            PathAngleArc {
                radiusX: (progress.width / 2) - (progress.progressWidth/2)
                radiusY: (progress.height / 2) - (progress.progressWidth/2)
                centerX: progress.width / 2
                centerY: progress.height / 2
                startAngle: progress.startAngle
                sweepAngle: (360 / progress.maxValue * progress.value)
            }
        }

        Text {
            id: textProgress
            text: progress.value
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            color: progress.textColor
            font.pointSize: progress.textSize
            font.family: progress.textFontFamily
        }
    }
}
