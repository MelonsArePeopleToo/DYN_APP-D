import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12


Page {
    id: root

    StackView {
        id: _mainPageStackView
        anchors.fill: parent
        initialItem: _allChats
    }

    Page {
        id: _allChats
        Rectangle {
            id: _menu
            color: bgColor
            anchors.fill: parent

            RowLayout {
               anchors.fill: parent

               Rectangle {
                   Layout.fillHeight: true
                   Layout.alignment: Qt.AlignLeft
                   Layout.preferredWidth: _menu.width > _menu.height ? _menu.height / 6 : _menu.width / 6   // / 6
                   color: "transparent"

                   ColumnLayout {
                        anchors.fill: parent

                        Jopa {
                            Layout.alignment: Qt.AlignTop
                            width: 20
                            height: 20

                            rectradius: width / 2
                            backColor: "orange"
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
}
