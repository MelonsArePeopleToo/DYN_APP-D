import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12


Page {
    id: root

    property alias backColor: _backRect.color

    background: Rectangle {
        id: _backRect
    }

    ColumnLayout {
        id: _loginCol
        spacing: defMargin
        anchors.fill: parent

        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.minimumHeight: 300
        Layout.minimumWidth: 200

        Item {
            height: 20
        }

        Text {
            Layout.fillWidth: true

            text: "DYN_APP :D"
            color: textColor
            font.pointSize: 22 //здесь должна быть функция
            font.bold: true
            font.family: komika_hand.name
            horizontalAlignment: Text.AlignHCenter
        }

        Label {
            text: "Логин"
            color: textColor
            font.family: "cousine"
            font.bold: true

        }

        TextField {
            id: _loginField
            placeholderText: "Введите логин"
            selectByMouse: true
            color: textColor

            Layout.fillWidth: true

            background: Rectangle {
                color: fieldBgColor1
            }

        }

        Label {
            text: "Пароль"
            color: textColor
            font.family: "cousine"
            font.bold: true

        }

        TextField {
            id: _passField
            placeholderText: "Введите пароль"
            selectByMouse: true
            color: textColor

            Layout.fillWidth: true

            background: Rectangle {
                color: fieldBgColor1
            }

        }

        RowLayout {
            Layout.fillWidth: true
            height: 100

            Item {
                Layout.fillWidth: true
            }

            Button {
                Text {
                    text: "---->"
                    font.family: komika_hand.name
                    font.bold: true
                    color: textColor

                    anchors.centerIn: parent
                }
                flat: true

                onClicked: {
                    _stackView.push(_mainPage);
                }
            }

        }

        Item {
            Layout.fillHeight: true
        }
    }
}
