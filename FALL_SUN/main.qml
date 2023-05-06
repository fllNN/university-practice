import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls


Window {
    title: qsTr("FALL SUN")
    width: 1280
    height: 720
    visible: true


    StackView {
        id: stackView
        initialItem: pStart
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

        Text {
            text: "FULL SUN"
            x: pStart.width / 2 - 107
            y: 40
            font.pixelSize: 50
        }

        Button {
            width: 225
            height: 60
            font.pixelSize: 25
            text: "Далее"
            x: 527
            y: 603

            background: Rectangle {
                radius: 10
                color: "#CCCCB2"
            }

            onClicked: {
                stackView.replace(pStart_2);
            }
        }

        Rectangle {
            width: 963
            height: 416
            radius: 10
            color: "#CCCCB2"
            opacity: 0.5
            x: 158
            y: 140
            border.color: "black"
            border.width: 3

            Text {
                text: "2122 год. Ученые давно стали предпологать о возможности подобного исхода.
Но никто и подумать не мог, что все произойдет так скоро...

Звезда, которая сопровождала человека и всех живых существ на нашей планете
с самого ее зарождения, стала терять былую мощь.
Лето, даже в самых жарких уголках нашей планеты, стало холоднее самой
суровой зимы в Антарктиде.
Катастрофа подбного масштаба повлекла за собой, раузмеется, не только смену
климата...

Но, как и ко всему, люди вынуждены привыкать и адаптироваться.
И вы не исключение!"
                x: 20
                y: 10
                font.pixelSize: 24
                layer.enabled: false
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

        Text {
            text: "FULL SUN"
            x: pStart_2.width / 2 - 107
            y: 40
            font.pixelSize: 50
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

        Text {
            text: "FULL SUN"
            x: story1_1.width / 2 - 107
            y: 40
            font.pixelSize: 50
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
                stackView.replace(pStart);
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

        Text {
            text: "FULL SUN"
            x: story2_1.width / 2 - 107
            y: 40
            font.pixelSize: 50
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
                stackView.replace(pStart);
            }
        }
    }
}
