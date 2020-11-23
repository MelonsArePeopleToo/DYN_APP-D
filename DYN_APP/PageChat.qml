import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12


Page {
    id: root

    property alias backColor: _backRect.color
    signal buttonClicked();



        Rectangle {
            id: _backRect
            color: bgColor
            anchors.fill: parent

            RowLayout {
               anchors.fill: parent

               Rectangle {
                   id: _lol

                   //visible: false
                   Layout.fillHeight: true
                   Layout.alignment: Qt.AlignLeft
                   Layout.preferredWidth: _menu.width > _menu.height ? _menu.height / 6 : _menu.width / 6   // / 6
                   color: "transparent"

                   ColumnLayout {
                        anchors.fill: parent

                        AppsIcons {                           //TODO
                            Layout.alignment: Qt.AlignCenter
                            width: 20
                            height: 20

                        }


                   }
               }

                Rectangle {
                    Layout.fillHeight: true
                    Layout.preferredWidth: _menu.width > _menu.height ? _menu.height * (2/3) : _menu.width * (2/3)
                    radius: 10
                    color: "blue"


                }

                Rectangle {

                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    color: "transparent"
                }

            }
        }

}
