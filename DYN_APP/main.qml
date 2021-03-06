import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

ApplicationWindow {
    id: _bigMAMA
    visible: true
    width: 640
    height: 480
    title: qsTr("Dyn_APP :D")

    FontLoader {id: komika_hand; source: "/fonts/fonts/komika-hand.ttf"}

    readonly property color bgColor: "#26262B"
    readonly property color fieldBgColor: "#343439"
    readonly property color textColor: "white"
    readonly property int defMargin: 10
    readonly property int defRadius: 10

    StackView {
        id: _mainStackView
        anchors.fill: parent
        initialItem: _authPage



    }

    LoginPage {
        id: _authPage
        backColor: bgColor

        onButtonClicked: {
               _mainStackView.push(_mainPage);
        }
    }
    AppMenu {
        id: _mainPage

        visible: false
    }
}
