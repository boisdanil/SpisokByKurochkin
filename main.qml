import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Window {
    visible: true
    color: "#12121c"
    width: 320
    height: 560
    title: qsTr("Чаты")

    ListModel{
        id:contactsModel
        ListElement{
            name: "Яндыкс.чепожрать"

            picture: "icons/food.png"
            line2: "Добро пожаловать в чат. Напишите..."
            line1: "Бот:"

        }
        ListElement{
            name:"Кама"

            picture: "icons/cama.png"
            line2: "Привет. Как дела? Где деньги? Тшаааа"
        }
        ListElement{
            name:"Браток"
            color: "White"
            picture: "icons/bratok.png"
            line2: "Добро пожаловать в чат. Напишите..."
        }
        ListElement{
            name:"Неудачин"
            color: "White"
            picture: "icons/Neudachin.png"
            line2: "Перед сдачей 9 и 10 лабы напишите..."
        }


    }

    ColumnLayout{
        anchors.fill: parent
        TopRawLayout {
            id: topRawLayout
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        MainToolBar{
                  Layout.leftMargin: 10
                  Layout.rightMargin: 10
                  Layout.fillWidth: true
                  onNewItem: {
                      contactsModel.append({name:text})
                  }
        }

        ContactList{
            Layout.fillHeight: true
            Layout.fillWidth: true
            model:contactsModel
        }

    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.25}
}
##^##*/
