import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Dyn_APP :D")

    FontLoader {id: komika_hand; source: "/fonts/fonts/komika-hand.ttf"}

    readonly property color bgColor: "#26262B"
    readonly property color fieldBgColor1: "#343439"
    readonly property color textColor: "white"
    readonly property int defMargin: 10

    StackView {
        id: _stackView
        anchors.fill: parent
        initialItem: _authPage
    }

    LoginPage {
        id: _authPage
        backColor: bgColor
    }

    MainPage {
        id: _mainPage
    }
}
