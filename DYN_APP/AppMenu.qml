import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

Page { 
    id: _root

    StackView {
        id: _stackView
        anchors.fill: parent
        initialItem: _menu
    }

    PageMenu {
        id: _menu
        backColor: bgColor
    }

    PageChat {
        id: _chat
        visible: false
        backMainColor: bgColor
        laySpacing: defMargin
    }
}
