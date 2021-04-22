import QtQuick 2.15
import QtQuick.Shapes 1.15
import QtGraphicalEffects 1.15


Item {
    id: progressControl
    implicitWidth: 250
    implicitHeight: 250

    property bool roundCap: true
    property int startAngle: -90
    property color bgColor: "transparent"
    property color bgStrokeColor: "7e7e7e"
    property int bgStrokeWIdth: 10

    //progress cirlce properties
    property color progressColor: "#55aaff"
    property int progressWidth: 16

    Shape {
        id:shape
        anchors.fill: parent
        layer.enabled:true
        layer.samples: 12

        ShapePath {
            id: pathBg
            fillColor: progressControl.bgColor
            strokeColor: progressControl.bgStrokeColor
            strokeWidth: progressControl.bgStrokeWIdth
            capStyle: progressControl.roundCap ? ShapePath.RoundCap : ShapePath.FlatCap

            PathAngleArc {
                radiusX: (progressControl.width/2) - (progressControl.progressWidth / 2)
                radiusY: (progressControl.height/2) - (progressControl.progressWidth / 2)
                centerX: progressControl.width /2
                centerY: progressControl.height /2
                startAngle: progressControl.startAngle
                sweepAngle: 360
            }

        }

        ShapePath {
            id: path
            fillColor: "transparent"
            strokeColor: progressControl.bgStrokeColor
            strokeWidth: progressControl.bgStrokeWIdth
            capStyle: progressControl.roundCap ? ShapePath.RoundCap : ShapePath.FlatCap

            PathAngleArc {
                radiusX: (progressControl.width/2) - (progressControl.progressWidth / 2)
                radiusY: (progressControl.height/2) - (progressControl.progressWidth/ 2)
                centerX: progressControl.width /2
                centerY: progressControl.height /2
                startAngle: progressControl.startAngle
                sweepAngle: 360
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;height:250;width:250}
}
##^##*/
