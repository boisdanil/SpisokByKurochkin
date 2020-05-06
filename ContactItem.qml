import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Rectangle {
    id:me
    property alias icon: icon.source
    property alias text: label.text
    property alias text1: label1.text
    property alias text2: label2.text
    property bool selected: false
    signal leftClick()
    signal rightClick()
    color: {
        if(selected)
            return "black"
        if (area.containsMouse)
            return "black"
        return "#12121c";
    }
    width:parent.width
    height: 60
    RowLayout{


        anchors.fill: parent

        anchors.leftMargin: 4
        anchors.rightMargin: 4

        Image {
            id:icon
            source: "icons/unknown.png"
            Layout.fillHeight: true
            Layout.preferredWidth: height
            Layout.margins: 4
        }
        ColumnLayout{

            Layout.fillWidth: true
            Layout.fillHeight: true
            spacing: 0.5
            Label{
                id:label
                Layout.fillHeight: true
                elide: Label.ElideRight
                color: "white"
                font.bold:true
            }
            Label{
                id:label1
                Layout.fillHeight: true
                elide: Label.ElideRight
                color: "grey"
                text:"Сообщение:"

            }
            Label{
                id:label2

                Layout.fillWidth: parent
                Layout.fillHeight: true
                elide: Label.ElideRight
                color: "grey"
                text:"Добро пожаловать в чат. Напишите..."

            }

        }
    }
    MouseArea{
        id:area
        anchors.fill: parent
        hoverEnabled: true
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onClicked: {
            if (mouse.button===Qt.LeftButton)
                leftClick();
            if (mouse.button===Qt.RightButton)
                rightClick();
        }
    }
}
