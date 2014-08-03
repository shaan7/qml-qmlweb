import QtQuick 2.0
import "ComponentCreation.js" as ComponentCreation
import info.shaan7.qmlweb 0.1 as QmlWeb

Text {
    property string url

    color: mouseArea.pressed ? "red" : "blue"
    font.underline: true

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: ComponentCreation.navigate(url)
    }

    QmlWeb.MouseCursor {
        target: parent
        cursorShape: mouseArea.containsMouse ? Qt.PointingHandCursor : Qt.ArrowCursor
    }
}

