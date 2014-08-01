import QtQuick 2.0
import "ComponentCreation.js" as ComponentCreation

Text {
    property string url

    MouseArea {
        anchors.fill: parent
        onClicked: ComponentCreation.navigate(url)
    }
}

