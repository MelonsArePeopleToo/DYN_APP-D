import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12


Rectangle {
    id: _root

    signal iconClicked();
    property alias sourceForImage: _img.source
    property alias backColor: _root.color
    property bool mAreaPressed: _mouseArea.containsPress


    radius: defRadius


    MouseArea {
        id: _mouseArea
        anchors.fill: parent

        onClicked: {
            _root.iconClicked();
        }
    }

    Image {
        id: _img
        anchors.centerIn: parent
        width: _root.width > _root.height ? _root.height - 20 :_root.width - 20
        height:  _img.width

    }
}
