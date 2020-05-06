import QtQuick 2.0
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

ListView{
    id:list
    property int menuIndex: null
    signal menu()
    clip: true
    boundsBehavior: ListView.StopAtBounds
    ScrollBar.vertical: ScrollBar{}
    delegate: ContactItem{
        text: name
        icon: picture
        text1: line1
        text2: line2
        selected: list.currentIndex === index
        onLeftClick: {
            list.currentIndex = index
        }
        onRightClick: {
            menuIndex = index;
            menu();
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
