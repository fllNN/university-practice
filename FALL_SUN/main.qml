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
        initialItem: rWindow
    }

    //Registration page
    Page {
        id: rWindow
        width: 1280
        height: 720
        visible: true
        background: Rectangle {
            color: "#B3B483"
        }

        Text {
            text: "Регистрация"
            x: rWindow.width / 2 - 143
            y: 127
            font.pixelSize: 50
        }

        Text {
            text: "Логин"
            x: rLoginwindow.x
            y: rLoginwindow.y - 15
            font.pixelSize: 10
        }

        Text {
            text: "Пароль"
            x: rPasswordwindow.x
            y: rPasswordwindow.y - 15
            font.pixelSize: 10
        }

        Text {
            text: "Повторите пароль"
            x: reprPasswordwindow.x
            y: reprPasswordwindow.y - 15
            font.pixelSize: 10
        }

        Button {
            width: 225
            height: 60
            font.pixelSize: 20
            text: "Зарегистрироваться"
            x: 528
            y: 532

            background: Rectangle {
                radius: 10
                color: "#CCCCB2"
            }
        }

        Button {
            width: 225
            height: 30
            font.pixelSize: 15
            text: "У меня уже есть аккаунт"
            x: 528
            y: 600

            background: Rectangle {
                radius: 10
                color: "#CCCCB2"
            }

            onClicked: {
                stackView.replace(lWindow);
            }
        }

        Rectangle {
            id: rLoginwindow
            width: 225
            height: 60
            radius: 10
            color: "#D9D9D9"
            x: 528
            y: 238
            clip: true

            TextInput {
                id: rLogininput
                color: "#151515"
                font.pixelSize: 20
                width: rLoginwindow.width
                anchors.centerIn: rLoginwindow
                focus: true
            }
        }

        Rectangle {
            id: rPasswordwindow
            width: 225
            height: 60
            radius: 10
            color: "#D9D9D9"
            x: 528
            y: 336
            clip: true

            TextInput {
                id: rPasswordinput
                color: "#151515"
                font.pixelSize: 20
                width: rPasswordwindow.width
                anchors.centerIn: rPasswordwindow
                focus: true
            }
        }

        Rectangle {
            id: reprPasswordwindow
            width: 225
            height: 60
            radius: 10
            color: "#D9D9D9"
            x: 528
            y: 434
            clip: true

            TextInput {
                id: reprPasswordinput
                color: "#151515"
                font.pixelSize: 20
                width: reprPasswordwindow.width
                anchors.centerIn: reprPasswordwindow
                focus: true
            }
        }
    }

    //Login page
    Page {
        id: lWindow
        width: 1280
        height: 720
        visible: false
        background: Rectangle {
            color: "#B3B483"
        }

        Text {
            text: "Авторизация"
            x: lWindow.width / 2 - 154
            y: 170
            font.pixelSize: 50
        }

        Text {
            text: "Логин"
            x: loginwindow.x
            y: loginwindow.y - 15
            font.pixelSize: 10
        }

        Text {
            text: "Пароль"
            x: passwordwindow.x
            y: passwordwindow.y - 15
            font.pixelSize: 10
        }

        Button {
            width: 225
            height: 60
            font.pixelSize: 25
            text: "Войти"
            x: 527
            y: 477

            background: Rectangle {
                radius: 10
                color: "#CCCCB2"
            }

            onClicked: {
                stackView.replace(pStart); //test button
            }
        }

        Button {
            width: 225
            height: 30
            font.pixelSize: 15
            text: "У меня нет аккаунта"
            x: 527
            y: 545

            background: Rectangle {
                radius: 10
                color: "#CCCCB2"
            }

            onClicked: {
                stackView.replace(rWindow);
            }
        }

        Rectangle {
            id: loginwindow
            width: 225
            height: 60
            radius: 10
            color: "#D9D9D9"
            x: 527
            y: 281
            clip: true

            TextInput {
                id: logininput
                color: "#151515"
                font.pixelSize: 20
                width: loginwindow.width
                anchors.centerIn: loginwindow
                focus: true
            }
        }

        Rectangle {
            id: passwordwindow
            width: 225
            height: 60
            radius: 10
            color: "#D9D9D9"
            x: 527
            y: 379
            clip: true

            TextInput {
                id: passwordinput
                color: "#151515"
                font.pixelSize: 20
                width: passwordwindow.width
                anchors.centerIn: passwordwindow
                focus: true
            }
        }
    }

    //storyline
    Page {
        id: pStart
        width: 1280
        height: 720
        visible: false
        background: Rectangle {
            color: "#B3B483"
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
            x: 158
            y: 140

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
            }
        }
    }

    Page {
        id: pStart_2
        width: 1280
        height: 720
        visible: false
        background: Rectangle {
            color: "#B3B483"
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
        background: Rectangle {
            color: "#B3B483"
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
        background: Rectangle {
            color: "#B3B483"
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
