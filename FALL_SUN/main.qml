import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Basic
import Qt.labs.settings
import Qt5Compat.GraphicalEffects
import QtQuick.Effects

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
        color: "#000000"
    }

    TextColors {id: set}

    Plot {id: plot}

    GameButton {
        id: exitButton
        width: 40
        height: width
        anchors.rightMargin: 15
        anchors.bottomMargin: 15

        Image {
            anchors.fill: parent
            source: "qrc:/images/images/exit.png"

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

        GameButton {
            width: 225
            height: 60
            anchors.bottomMargin: 54
            text: "Далее"

            onClicked: {
                stackView.replace(pStart_2);
                tmrpStart_2.restart();
            }
        }

        TextBlock {

            GameText {
                id: ptpStart_1
                font.pixelSize: 22

                property int i
                property string plttxt: plot.srcTxtpStart

                function type() {
                    text = plttxt.slice(0, ++i);
                    if (text === plttxt) return tmrpStart_1.stop()
                    ptpStart_1.text = text;
                }

                Timer {
                    id: tmrpStart_1
                    interval: 10
                    repeat: true
                    running: true

                    onTriggered: parent.type()
                }
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

        GameButton {
            width: 225
            height: 60
            anchors.bottomMargin: 54
            text: "Начать историю"

            onClicked: {
                stackView.replace(story1_1);
                tmr1_1.start();
            }
        }

        TextBlock {

            GameText {
                id: ptpStart_2
                font.pixelSize: 22

                property int i

                function type() {
                    text = plot.srcTxtpStart_2.slice(0, ++i);

                    if (text === plot.srcTxtpStart_2) return tmrpStart_2.stop()
                    ptpStart_2.text = text;
                }

                Timer {
                    id: tmrpStart_2
                    interval: 10
                    repeat: true

                    onTriggered: parent.type()
                }
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
            source: "qrc:/images/images/sclad.png"
        }

        TextBlock {
            height: 182

            GameText {
                id: pt1_1

                property int i

                function type() {
                    text = plot.srcTxtstory1_1.slice(0, ++i);

                    if (text === plot.srcTxtstory1_1) return tmr1_1.stop()
                    pt1_1.text = text;
                }

                Timer {
                    id: tmr1_1
                    interval: 10
                    repeat: true

                    onTriggered: pt1_1.type()
                }
            }
        }

        GameButton {
            anchors.bottomMargin: 315
            text: "Старый генератор"

            onClicked: {
                stackView.replace(story2_1);
                tmr2_1.start();
            }
        }

        GameButton {
            anchors.bottomMargin: 230
            text: "Какая-то карта"

            onClicked: {
                stackView.replace(story2_2);
                tmr2_2.start();
            }
        }

        GameButton {
            anchors.bottomMargin: 145
            text: "Слишком сложно (сдаться)"

            onClicked: {
                stackView.replace(pSurr);
                tmrSurr.start();
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
            source: "qrc:/images/images/generator.png"
        }

        TextBlock {
            height: 182

            GameText {
                id: pt2_1

                property int i

                function type() {
                    text = plot.srcTxtstory2_1.slice(0, ++i);

                    if (text === plot.srcTxtstory2_1) return tmr2_1.stop()
                    pt2_1.text = text;
                }

                Timer {
                    id: tmr2_1
                    interval: 10
                    repeat: true

                    onTriggered: pt2_1.type()
                }
            }
        }

        GameButton {
            anchors.bottomMargin: 315
            text: "Испытать свою удачу и попробовать его восстановить"

            onClicked: {
                stackView.replace(story3_1);
                tmr3_1.start();
            }
        }

        GameButton {
            anchors.bottomMargin: 230
            text: "Найти другой источник энергии"

            onClicked: {
                stackView.replace(story3_2);
                tmr3_2.start();
            }
        }

        GameButton {
            anchors.bottomMargin: 145
            text: "Слишком сложно (сдаться)"

            onClicked: {
                stackView.replace(pSurr);
                tmrSurr.start();
            }
        }
    }

    Page {
        id: story2_2
        width: 1280
        height: 720
        visible: false

        background: Image {
            anchors.fill: parent
            source: "qrc:/images/images/karta.png"
        }

        TextBlock {
            height: 182

            GameText {
                id: pt2_2

                property int i

                function type() {
                    text = plot.srcTxtstory2_2.slice(0, ++i);

                    if (text === plot.srcTxtstory2_2) return tmr2_2.stop()
                    pt2_2.text = text;
                }

                Timer {
                    id: tmr2_2
                    interval: 10
                    repeat: true

                    onTriggered: pt2_2.type()
                }
            }
        }

        GameButton {
            anchors.bottomMargin: 315
            text: "Все же отправиться на поиски выживших"

            onClicked: {
                stackView.replace(story3_3);
                tmr3_3.start();
            }
        }

        GameButton {
            anchors.bottomMargin: 230
            text: "Выживать в одиночку"

            onClicked: {
                stackView.replace(story3_4);
                tmr3_4.start();
            }
        }

        GameButton {
            anchors.bottomMargin: 145
            text: "Слишком сложно (сдаться)"

            onClicked: {
                stackView.replace(pSurr);
                tmrSurr.start();
            }
        }
    }

    Page {
        id: story3_1
        width: 1280
        height: 720
        visible: false

        background: Image {
            anchors.fill: parent
            source: "qrc:/images/images/generator.png"
        }

        TextBlock {
            height: 182

            GameText {
                id: pt3_1

                property int i

                function type() {
                    text = plot.srcTxtstory3_1.slice(0, ++i);

                    if (text === plot.srcTxtstory3_1) return tmr3_1.stop()
                    pt3_1.text = text;
                }

                Timer {
                    id: tmr3_1
                    interval: 10
                    repeat: true

                    onTriggered: pt3_1.type()
                }
            }
        }

        GameButton {
            anchors.bottomMargin: 315
            text: "Орел"

            onClicked: {
                stackView.replace(story4_1);
                tmr4_1.start();
            }
        }

        GameButton {
            anchors.bottomMargin: 230
            text: "Решка"

            onClicked: {
                stackView.replace(story4_2);
                tmr4_2.start();
            }
        }

        GameButton {
            anchors.bottomMargin: 145
            text: "Слишком сложно (сдаться)"

            onClicked: {
                stackView.replace(pSurr);
                tmrSurr.start();
            }
        }
    }

    Page {
        id: story3_2
        width: 1280
        height: 720
        visible: false

        background: Image {
            anchors.fill: parent
            source: "qrc:/images/images/sclad.png"
        }

        TextBlock {
            height: 182

            GameText {
                id: pt3_2

                property int i

                function type() {
                    text = plot.srcTxtstory3_2.slice(0, ++i);

                    if (text === plot.srcTxtstory3_2) return tmr3_2.stop()
                    pt3_2.text = text;
                }

                Timer {
                    id: tmr3_2
                    interval: 10
                    repeat: true

                    onTriggered: pt3_2.type()
                }
            }
        }

        GameButton {
            anchors.bottomMargin: 315
            text: "Солнечные батареи"

            onClicked: {
                stackView.replace(story4_3);
                tmr4_3.start();
            }
        }

        GameButton {
            anchors.bottomMargin: 230
            text: "Ветрогенератор"

            onClicked: {
                stackView.replace(story4_4);
                tmr4_4.start();
            }
        }

        GameButton {
            anchors.bottomMargin: 145
            text: "Слишком сложно (сдаться)"

            onClicked: {
                stackView.replace(pSurr);
                tmrSurr.start();
            }
        }
    }

    Page {
        id: story3_3
        width: 1280
        height: 720
        visible: false

        background: Image {
            anchors.fill: parent
            source: "qrc:/images/images/pustosh.png"
        }

        TextBlock {
            height: 182

            GameText {
                id: pt3_3

                property int i

                function type() {
                    text = plot.srcTxtstory3_3.slice(0, ++i);

                    if (text === plot.srcTxtstory3_3) return tmr3_3.stop()
                    pt3_3.text = text;
                }

                Timer {
                    id: tmr3_3
                    interval: 10
                    repeat: true

                    onTriggered: pt3_3.type()
                }
            }
        }

        GameButton {
            anchors.bottomMargin: 315
            text: "Пойти по наиболее безопасному пути"

            onClicked: {
                stackView.replace(story4_5);
                tmr4_5.start();
            }
        }

        GameButton {
            anchors.bottomMargin: 230
            text: "Довериться подозрительной метке"

            onClicked: {
                stackView.replace(story4_6);
                tmr4_6.start();
            }
        }

        GameButton {
            anchors.bottomMargin: 145
            text: "Слишком сложно (сдаться)"

            onClicked: {
                stackView.replace(pSurr);
                tmrSurr.start();
            }
        }
    }

    Page {
        id: story3_4
        width: 1280
        height: 720
        visible: false

        background: Image {
            anchors.fill: parent
            source: "qrc:/images/images/karta.png"
        }

        TextBlock {
            height: 182

            GameText {
                id: pt3_4

                property int i

                function type() {
                    text = plot.srcTxtstory3_4.slice(0, ++i);

                    if (text === plot.srcTxtstory3_4) return tmr3_4.stop()
                    pt3_4.text = text;
                }

                Timer {
                    id: tmr3_4
                    interval: 10
                    repeat: true

                    onTriggered: pt3_4.type()
                }
            }
        }

        GameButton {
            anchors.bottomMargin: 315
            text: "Строить долговечное надежное укрытие"

            onClicked: {
                stackView.replace(story4_7);
                tmr4_7.start();
            }
        }

        GameButton {
            anchors.bottomMargin: 230
            text: "Отправиться в путешествие"

            onClicked: {
                stackView.replace(story4_8);
                tmr4_8.start();
            }
        }

        GameButton {
            anchors.bottomMargin: 145
            text: "Слишком сложно (сдаться)"

            onClicked: {
                stackView.replace(pSurr);
                tmrSurr.start();
            }
        }
    }

    Page {
        id: story4_1
        width: 1280
        height: 720
        visible: false

        background: Image {
            anchors.fill: parent
            source: "qrc:/images/images/generator.png"
        }

        TextBlock {

            GameText {
                id: pt4_1

                property int i

                function type() {
                    text = plot.srcTxtstory4_1.slice(0, ++i);

                    if (text === plot.srcTxtstory4_1) return tmr4_1.stop()
                    pt4_1.text = text;
                }

                Timer {
                    id: tmr4_1
                    interval: 10
                    repeat: true

                    onTriggered: pt4_1.type()
                }
            }
        }
    }

    Page {
        id: story4_2
        width: 1280
        height: 720
        visible: false

        background: Image {
            anchors.fill: parent
            source: "qrc:/images/images/generator.png"
        }

        TextBlock {

            GameText {
                id: pt4_2

                property int i

                function type() {
                    text = plot.srcTxtstory4_2.slice(0, ++i);

                    if (text === plot.srcTxtstory4_2) return tmr4_2.stop()
                    pt4_2.text = text;
                }

                Timer {
                    id: tmr4_2
                    interval: 10
                    repeat: true

                    onTriggered: pt4_2.type()
                }
            }
        }
    }

    Page {
        id: story4_3
        width: 1280
        height: 720
        visible: false

        background: Image {
            anchors.fill: parent
            source: "qrc:/images/images/solnbat.png"
        }

        TextBlock {

            GameText {
                id: pt4_3

                property int i

                function type() {
                    text = plot.srcTxtstory4_3.slice(0, ++i);

                    if (text === plot.srcTxtstory4_3) return tmr4_3.stop()
                    pt4_3.text = text;
                }

                Timer {
                    id: tmr4_3
                    interval: 10
                    repeat: true

                    onTriggered: pt4_3.type()
                }
            }
        }
    }

    Page {
        id: story4_4
        width: 1280
        height: 720
        visible: false

        background: Image {
            anchors.fill: parent
            source: "qrc:/images/images/vetrogenerator.png"
        }

        TextBlock {

            GameText {
                id: pt4_4

                property int i

                function type() {
                    text = plot.srcTxtstory4_4.slice(0, ++i);

                    if (text === plot.srcTxtstory4_4) return tmr4_4.stop()
                    pt4_4.text = text;
                }

                Timer {
                    id: tmr4_4
                    interval: 10
                    repeat: true

                    onTriggered: pt4_4.type()
                }
            }
        }
    }

    Page {
        id: story4_5
        width: 1280
        height: 720
        visible: false

        background: Image {
            anchors.fill: parent
            source: "qrc:/images/images/vijivshie.png"
        }

        TextBlock {

            GameText {
                id: pt4_5

                property int i

                function type() {
                    text = plot.srcTxtstory4_5.slice(0, ++i);

                    if (text === plot.srcTxtstory4_5) return tmr4_5.stop()
                    pt4_5.text = text;
                }

                Timer {
                    id: tmr4_5
                    interval: 10
                    repeat: true

                    onTriggered: pt4_5.type()
                }
            }
        }
    }

    Page {
        id: story4_6
        width: 1280
        height: 720
        visible: false

        background: Image {
            anchors.fill: parent
            source: "qrc:/images/images/noj.png"
        }

        TextBlock {

            GameText {
                id: pt4_6

                property int i

                function type() {
                    text = plot.srcTxtstory4_6.slice(0, ++i);

                    if (text === plot.srcTxtstory4_6) return tmr4_6.stop()
                    pt4_6.text = text;
                }

                Timer {
                    id: tmr4_6
                    interval: 10
                    repeat: true

                    onTriggered: pt4_6.type()
                }
            }
        }
    }

    Page {
        id: story4_7
        width: 1280
        height: 720
        visible: false

        background: Image {
            anchors.fill: parent
            source: "qrc:/images/images/ukritie.png"
        }

        TextBlock {

            GameText {
                id: pt4_7

                property int i

                function type() {
                    text = plot.srcTxtstory4_7.slice(0, ++i);

                    if (text === plot.srcTxtstory4_7) return tmr4_7.stop()
                    pt4_7.text = text;
                }

                Timer {
                    id: tmr4_7
                    interval: 10
                    repeat: true

                    onTriggered: pt4_7.type()
                }
            }
        }
    }

    Page {
        id: story4_8
        width: 1280
        height: 720
        visible: false

        background: Image {
            anchors.fill: parent
            source: "qrc:/images/images/pustosh.png"
        }

        TextBlock {

            GameText {
                id: pt4_8

                property int i

                function type() {
                    text = plot.srcTxtstory4_8.slice(0, ++i);

                    if (text === plot.srcTxtstory4_8) return tmr4_8.stop()
                    pt4_8.text = text;
                }

                Timer {
                    id: tmr4_8
                    interval: 10
                    repeat: true

                    onTriggered: pt4_8.type()
                }
            }
        }
    }

    Page {
        id: pSurr
        width: 1280
        height: 720
        visible: false

        background: Image {
            anchors.fill: parent
            source: "qrc:/images/images/giveup.png"
        }

        TextBlock {

            GameText {
                id: ptSurr

                property int i

                function type() {
                    text = plot.srcTxtpSurr.slice(0, ++i);

                    if (text === plot.srcTxtpSurr) return tmrSurr.stop()
                    ptSurr.text = text;
                }

                Timer {
                    id: tmrSurr
                    interval: 10
                    repeat: true

                    onTriggered: ptSurr.type()
                }
            }
        }
    }
}
