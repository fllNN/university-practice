import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Basic

Window {
    title: qsTr("FALL SUN")
    width: 1280
    height: 720
    visible: true

    StackView {
        id: stackView
        initialItem: pStart
    }

    Text {
        text: "FALL SUN"
        x: parent.width / 2 - 107
        y: 40
        font.pixelSize: 50
        font.bold: true
    }

    //gradients for buttons
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

    property string colorStoryText: "#D5876B"

    //exit button
    Button {
        id: exitButton
        width: 40
        height: width

        anchors.right: parent.right
        anchors.bottom: parent.bottom

        anchors.rightMargin: 15
        anchors.bottomMargin: 15
        flat: true

        contentItem: Text {

            anchors.centerIn: parent
            font.pixelSize: 20
            text: "[->"
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
            Qt.quit();
        }
    }

    //storyline
    Page {
        id: pStart
        width: 1280
        height: 720
        visible: false
        background: Image {
            anchors.fill: parent
            source: "qrc:/images/images/taganrog.png"
        }

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
            }
        }

        Rectangle {
            id: storyBlock
            width: 963
            height: 416
            radius: 10
            x: 158
            y: 140
            border.color: "#7A594D"
            border.width: 1

            gradient: Gradient {
                GradientStop {position: 0.0; color: "#CB5D3B"}
                GradientStop {position: 0.4; color: "#752F1A"}
                GradientStop {position: 0.9; color: "#1B1716"}
            }

            Text {
                id: textpStart
                x: 20
                y: 10
                color: colorStoryText
                font.pixelSize: 24

                text: "2122 год. Ученые давно стали предпологать о возможности подобного исхода.
Но никто и подумать не мог, что все произойдет так скоро...

Звезда, которая сопровождала человека и всех живых существ на нашей планете
с самого ее зарождения, стала терять былую мощь.
Лето, даже в самых жарких уголках нашей планеты, стало холоднее самой
суровой зимы в Антарктиде.
Катастрофа подобного масштаба повлекла за собой, раузмеется, не только смену
климата...

Но, как и ко всему, люди вынуждены привыкать и адаптироваться.
И вы не исключение!"
            }
        }
    }

    Page {
        id: pStart_2
        width: 1280
        height: 720
        visible: false
        background: Image {
            anchors.fill: parent
            source: "qrc:/images/images/taganrog.png"
        }

        Button {
            width: 225
            height: 60
            font.pixelSize: 25
            text: "Начать историю"
            x: 527
            y: 603

            background: Rectangle {
                radius: 10
                color: "#CCCCB2"
            }

            onClicked: {
                stackView.replace(story1_1);
            }
        }

        Rectangle {
            width: 963
            height: 416
            radius: 10
            color: "#CCCCB2"
            x: 158
            y: 140

            Text {
                text: "Ваше путешествие начинается в России, Ростовской области, в городе Таганрог.
Вам предстоит попытаться выжить в нынешних суровых реалиях.
Лишь от ваших собственных решений зависит то, где вы окажитесь."
                x: 20
                y: 10
                font.pixelSize: 24
            }
        }
    }

    Page {
        id: story1_1
        width: 1280
        height: 720
        visible: false
        background: Image {
            anchors.fill: parent
            source: "qrc:/images/images/taganrog.png"
        }

        Rectangle {
            width: 963
            height: 182
            radius: 10
            color: "#CCCCB2"
            x: 158
            y: 140

            Text {
                text: "1.1"
                x: 20
                y: 10
                font.pixelSize: 24
            }
        }

        Button {
            width: 963
            height: 60
            font.pixelSize: 25
            text: "2.1"
            x: 158
            y: 346

            background: Rectangle {
                radius: 10
                color: "#CCCCB2"
            }

            onClicked: {
                stackView.replace(story2_1);
            }
        }

        Button {
            width: 963
            height: 60
            font.pixelSize: 25
            text: "2.2"
            x: 158
            y: 430

            background: Rectangle {
                radius: 10
                color: "#CCCCB2"
            }

            onClicked: {
                stackView.replace(story1_1);
            }
        }

        Button {
            width: 963
            height: 60
            font.pixelSize: 25
            text: "Слишком сложно (сдаться)"
            x: 158
            y: 514

            background: Rectangle {
                radius: 10
                color: "#CCCCB2"
            }

            onClicked: {
                Qt.quit();
            }
        }
    }

    Page {
        id: story2_1
        width: 1280
        height: 720
        visible: false
        background: Image {
            anchors.fill: parent
            source: "qrc:/images/images/taganrog.png"
        }

        Rectangle {
            width: 963
            height: 182
            radius: 10
            color: "#CCCCB2"
            x: 158
            y: 140

            Text {
                text: "2.1"
                x: 20
                y: 10
                font.pixelSize: 24
            }
        }

        Button {
            width: 963
            height: 60
            font.pixelSize: 25
            text: "3.1"
            x: 158
            y: 346

            background: Rectangle {
                radius: 10
                color: "#CCCCB2"
            }

            onClicked: {
                stackView.replace(story1_1);
            }
        }

        Button {
            width: 963
            height: 60
            font.pixelSize: 25
            text: "3.2"
            x: 158
            y: 430

            background: Rectangle {
                radius: 10
                color: "#CCCCB2"
            }

            onClicked: {
                stackView.replace(story1_1);
            }
        }

        Button {
            width: 963
            height: 60
            font.pixelSize: 25
            text: "Слишком сложно (сдаться)"
            x: 158
            y: 514

            background: Rectangle {
                radius: 10
                color: "#CCCCB2"
            }

            onClicked: {
                Qt.quit();
            }
        }
    }
}
