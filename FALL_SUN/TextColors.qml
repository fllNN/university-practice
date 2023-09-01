import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Basic
import Qt.labs.settings

QtObject {
    id: set

    //gradients for buttons
    property var normalGradient: Gradient {

        GradientStop {position: 0.0; color: "#CB5D3B"}
        GradientStop {position: 0.4; color: "#752F1A"}
        GradientStop {position: 0.9; color: "#1B1716"}
    }

    property var hoveredGradient: Gradient {

        GradientStop {position: 0.0; color: "#C58774"}
        GradientStop {position: 0.4; color: "#934F3A"}
        GradientStop {position: 0.9; color: "#141312"}
    }

    property var pressedGradient: Gradient {

        GradientStop {position: 0.0; color: "#CF491F"}
        GradientStop {position: 0.4; color: "#762811"}
        GradientStop {position: 0.9; color: "#000000"}
    }

    property string normalColor: "#BD9E83"
    property string hoveredColor: "#0fBD9E83"
    property string pressedColor: "#0fBD9E83"

    //colors for texts
    property string normalColorText: "#393646"
    property string hoveredColorText: "#E0A690"
    property string pressedColorText: "#934E35"

    property string colorStoryText: "#BD9E83"
}
