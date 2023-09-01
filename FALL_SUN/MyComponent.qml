import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Basic

Button {
    width: 225
    height: 60
    anchors.bottom: parent.bottom
    anchors.right: parent.right

    anchors.bottomMargin: 54
    anchors.rightMargin: parent.width / 2 - width / 2

    contentItem: Text {
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter

        text: "Далее"
        font.pixelSize: 25
        font.bold: true

        color: (parent.pressed ? pressedColorText :
                                 (parent.hovered ? hoveredColorText :
                                                   normalColorText))
    }

    background: Rectangle {
        radius: 10
        border.color: "#7A594D"

        gradient: (parent.pressed ? pressedGradient :
                                    (parent.hovered ? hoveredGradient :
                                                      normalGradient))
    }

    onClicked: {
        stackView.replace(pStart_2);
        tmrpStart_2.start();
    }
}
