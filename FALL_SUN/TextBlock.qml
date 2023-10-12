import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Basic
import Qt.labs.settings
import Qt5Compat.GraphicalEffects
import QtQuick.Effects

Rectangle {
    id: rec
    width: 963
    height: 416
    radius: 10
    x: 158
    y: 140
    border.color: "#BD9E83"
    border.width: 2
    color: "#ff0f0f0f"

    ShaderEffectSource {
        id: effectSource
        visible: false
        sourceItem: stackView.currentItem.background
        anchors.fill: parent
        sourceRect: Qt.rect(parent.x,parent.y, parent.width, parent.height)
    }

    GaussianBlur {
        id: blur
        anchors.fill: parent
        source: effectSource
        radius: 32
        samples: 70
        transparentBorder: true
        deviation: 16
    }
}
