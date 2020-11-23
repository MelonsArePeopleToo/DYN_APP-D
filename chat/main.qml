import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Page {
        id:_page
        anchors.fill: parent

        footer: Button{
            onClicked: {
                var newMsg = {};
                newMsg.text = "loolol";
                newMsg.time = Qt.formatTime(new Date (), "hh:mm");
                _listModel.append(newMsg);
            }
        }

        ListView {
            id: _listView
            anchors.fill: parent
            spacing: 10

            model: _listModel

            delegate: Rectangle {
                height: 60
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.margins: 10
                color:"grey"
                border.color: "black"
                radius: 10

                Text {

                    anchors.fill: parent
                    anchors.margins: 10
                    text: model.text
                }
                Text {
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    anchors.margins: 10
                    text: model.time
                }
            }
        }

        ListModel {
            id: _listModel



        }
    }
}
