import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Basic
import Qt.labs.settings
import Qt5Compat.GraphicalEffects
import QtQuick.Effects

Button {
    id: gb
    width: 963
    height: 60

    anchors.rightMargin: parent.width / 2 - width / 2


    anchors.bottom: parent.bottom
    anchors.right: parent.right

    contentItem: Text {
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter

        text: parent.text
        font.pixelSize: 25
        font.bold: true

        color: (parent.pressed ? set.pressedColorText :
               (parent.hovered ? set.hoveredColorText :
                                 set.normalColorText))
    }

    background: Rectangle {
        id: aw
        radius: 10
        border.color: "#BD9E83"
        border.width: 2

        color: (parent.pressed ? set.pressedColor :
                  (parent.hovered ? set.hoveredColor :
                                    set.normalColor))
    }

    DropShadow {
        id: drop
        anchors.fill: aw
        source: aw
        horizontalOffset: 0
        verticalOffset: 2
        radius: 9
        samples: 16
        color: "#393646"
        transparentBorder: true
        spread: 0.4
    }

    SequentialAnimation {
        id: anim

        PropertyAnimation {
            target: gb
            property: "scale"
            from: 1.0
            to: 0.95
            duration: 150
            easing.type: Easing.InQuad
        }

        PropertyAnimation {
            target: gb
            property: "scale"
            from: 0.95
            to: 1.0
            duration: 150
            easing.type: Easing.InOutQuad
        }
    }

    onPressed: anim.start()
}
