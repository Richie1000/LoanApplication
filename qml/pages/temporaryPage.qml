import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    Rectangle {
        id: rectangle
        color: "#2c313c"
        anchors.fill: parent

        ScrollView {
            id: scrollView
            anchors.fill: parent
        }
    }

}
