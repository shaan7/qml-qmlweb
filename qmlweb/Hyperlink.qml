import QtQuick 2.0
import "ComponentCreation.js" as ComponentCreation

Text {
    property string url

    color: "blue"
    font.underline: true
    MouseArea {
        anchors.fill: parent
        onClicked: ComponentCreation.navigate(url)
    }
}

