import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12


Page {
    id: root

    property alias backMainColor:_backRect.color

    property alias backChildColor: _backChildRect.color
    property alias laySpacing: _rowLay.spacing


    signal buttonClicked();

    background: Rectangle {
        id: _backRect
    }

    RowLayout {
        id: _rowLay
        anchors.fill: parent

        Rectangle {
            color: "transparent"
            Layout.fillHeight: true
            Layout.preferredWidth: 60

            ColumnLayout {
                id: menuPanel
            }
        }

        Rectangle {
            id: _backChildRect
            color: "red"
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.minimumWidth: 200
            radius: 10

            ListView {
                id: _chatPeopleListView
                anchors.fill: parent

                model: _chatModel

                delegate: Rectangle {
                    id: _chatPeopleDelegate
                    height: 60
                    width: _chatPeopleListView.width
                    color: "blue"

                    Text {
                        anchors.centerIn: parent
                        text: model.text
                    }

                }

            }
        }


        Rectangle {
            color: "transparent"
            visible: false
            Layout.preferredWidth: 60
            Layout.minimumWidth: 20
        }

    }

    ListModel {
        id:_chatModel
        ListElement {
            //id: _elem

            text: "lol"

        }

    }



}
