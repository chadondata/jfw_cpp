import QtQuick 2.4
import QtQuick.Controls 2.4

Page {
    title: qsTr("Write something. Anything")
    id: page
    ScrollView {
        id: view
        anchors.rightMargin: 5
        anchors.leftMargin: 5
        anchors.bottomMargin: 5
        anchors.topMargin: 5
        anchors.fill: parent

        TextArea {
            id: edit
            font.pointSize: 16
            font.family: "Courier"
            textFormat: Text.RichText
            placeholderText: qsTr("Just f*cking write")
            focus: true
            selectByMouse: true
            wrapMode: TextEdit.Wrap
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

