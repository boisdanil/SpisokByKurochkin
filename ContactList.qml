import QtQuick 2.0
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

ListView{
    id:list
    clip: true
    boundsBehavior: ListView.StopAtBounds
    ScrollBar.vertical: ScrollBar{}
    delegate: ContactItem{
        text: name
        icon: picture
        being: beeing
        selected: list.currentIndex === index
        onLeftClick: {
            list.currentIndex = index
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
