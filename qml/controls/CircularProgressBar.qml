import QtQuick 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15

Item {
    id: progress
    implicitWidth: 250
    implicitHeight: 250

    //General Properties
    property bool roundCap: true
    property int startAngle: -90
    property real maxValue: 100
    property real value: 20
    property int samples: 12

    //properties of Background Circle
    property color bgColor: "transparent"
    property color bgStrokeColor: "7e7e7e"
    property int strokeBgWidth: 16

    //properties of circle
    property color progressColor: "#55aaff"
    property int progressWidth: 16

    //properties of text
    property string text: "S"
    property bool textShowValue: true
    property string textFontFamily: "Segoe UI"
    property int textSize: 16
    property color textColor: "#7c7c7c"


    Shape {
        id: shape
        anchors.fill: parent
        layer.enabled: true
        layer.samples: progress.samples

        ShapePath {
            id: pathBg
            strokeColor: progress.bgStrokeColor
            fillColor: progress.bgColor
            strokeWidth: progress.strokeBgWidth
            capStyle: progress.roundCap ? ShapePath.RoundCap : ShapePath.FlatCap

            PathAngleArc {
                radiusX: (progress.width / 2) - (progress.progressWidth / 2)
                radiusY: (progress.height / 2) - (progress.progressWidth / 2)
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
                radiusX: (progress.width / 2) - (progress.progressWidth / 2)
                radiusY: (progress.height / 2) - (progress.progressWidth / 2)
                centerX: progress.width / 2
                centerY: progress.height / 2
                startAngle: progress.startAngle
                sweepAngle: (360 / progress.maxValue * progress.value)
            }
        }

        Text {
            id: progresText
            text: progress.value
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            color: progress.textColor
            font.pointSize: progress.textSize
            font.family: progress.textFontFamily
        }
    }
}
