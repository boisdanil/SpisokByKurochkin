import QtQuick 2.0
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

RowLayout{
    signal newItem(string text)
    width: 300
    height: 40
    spacing: 15
    TextField{
        id:textField
        font.bold: false
        font.strikeout: false
        font.italic: false
        font.underline: false
        transformOrigin: Item.Center
        clip: false
        color: "#0f002d"
        focus: true

        Layout.fillWidth: true
        selectByMouse: true
        placeholderText: "Поиск чата"
    }

    function add()
    {
        newItem(textField.text);
        textField.clear();
    }

    Button{
        text: "Добавить"
        highlighted: true
        onClicked: {
            add();
        }
    }
    Keys.onReturnPressed: {
        add();
    }
    Keys.onEnterPressed: {
        add();
    }
}
