import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

Page {
    id: _rooot

    property alias backColor: _backRect.color
    signal buttonClicked();

    background: Rectangle {
        id: _backRect
    }

    ColumnLayout {
        anchors.fill: parent
        spacing: defMargin

        Item {
            Layout.fillWidth: true
            height: 100
        }

        GridLayout
        {
            id: _rowLay
            Layout.fillWidth: true
            Layout.fillHeight: true
            rows: 2
            columns: 2


            AppsIcons {
                Layout.column: 0
                Layout.row: 0
                Layout.fillHeight: true
                Layout.fillWidth: true
                backColor: mAreaPressed ? fieldBgColor : Qt.darker( bgColor, 1.1)
                border.color: fieldBgColor
                border.width: 2
                sourceForImage: "/images/images/chat.png"
                onIconClicked: {
                    _stackView.push(_chat);
                }
                iconRadius: defRadius

            }
            AppsIcons {
                Layout.column: 1
                Layout.row: 0
                Layout.fillHeight: true
                Layout.fillWidth: true
                backColor: mAreaPressed ? fieldBgColor : Qt.darker( bgColor, 1.1)
                border.color: fieldBgColor
                border.width: 2
                sourceForImage: "/images/images/games.png"
                iconRadius: defRadius
            }
            AppsIcons {
                Layout.column: 0
                Layout.row: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
                backColor: mAreaPressed ? fieldBgColor : Qt.darker( bgColor, 1.1)
                border.color: fieldBgColor
                border.width: 2
                sourceForImage: "/images/images/groups.png"
                iconRadius: defRadius

            }
            AppsIcons {
                Layout.column: 1
                Layout.row: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
                backColor: mAreaPressed ? fieldBgColor : Qt.darker( bgColor, 1.1)
                border.color: fieldBgColor
                border.width: 2
                iconRadius: defRadius
            }

        }

        Item {
            Layout.fillWidth: true
            height: 100
        }

    }

}
