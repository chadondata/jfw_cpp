import QtQuick 2.4
import QtQuick.Controls 2.4

ScrollView {
    id: view
    anchors.rightMargin: 5
    anchors.leftMargin: 5
    anchors.bottomMargin: 5
    anchors.topMargin: 5
    anchors.fill: parent

    TextArea {
        id: edit
        placeholderText: qsTr("Just f*cking write")
        focus: true
        selectByMouse: true
        wrapMode: TextEdit.Wrap
    }
}
