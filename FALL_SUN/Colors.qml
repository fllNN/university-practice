import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Basic

QtObject {

    Gradient {
        id: normalGradient

        GradientStop {position: 0.0; color: "#CB5D3B"}
        GradientStop {position: 0.4; color: "#752F1A"}
        GradientStop {position: 0.9; color: "#1B1716"}
    }

    Gradient {
        id: hoveredGradient

        GradientStop {position: 0.0; color: "#C58774"}
        GradientStop {position: 0.4; color: "#934F3A"}
        GradientStop {position: 0.9; color: "#141312"}
    }

    Gradient {
        id: pressedGradient

        GradientStop {position: 0.0; color: "#CF491F"}
        GradientStop {position: 0.4; color: "#762811"}
        GradientStop {position: 0.9; color: "#000000"}
    }

    //colors for texts
    property string normalColorText: "#A4654F"
    property string hoveredColorText: "#E0A690"
    property string pressedColorText: "#934E35"

    property string colorStoryText: "#BD9E83"

}
