import QtQuick 2.13
import QtQuick.Controls 2.13

ApplicationWindow {
    id: window
    visible: true
    width: 1024
    height: 768
    title: qsTr("Just F*cking Write")

    header: ToolBar {
        contentHeight: toolButton.implicitHeight

        ToolButton {
            id: toolButton
            text: stackView.depth > 1 ? "\u25C0" : "\u2630"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                } else {
                    drawer.open()
                }
            }
        }

        Label {
            text: stackView.currentItem.title
            anchors.centerIn: parent
        }
    }

    Drawer {
        id: drawer
        width: window.width * 0.66
        height: window.height

        Column {
            anchors.fill: parent

            ItemDelegate {
                text: qsTr("Page 1")
                width: parent.width
                onClicked: {
                    stackView.push("Page1Form.ui.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Page 2")
                width: parent.width
                onClicked: {
                    stackView.push("Page2Form.ui.qml")
                    drawer.close()
                }
            }

            ItemDelegate {
                text: qsTr("Write something")
                width: parent.width
                onClicked: {
                    stackView.push("EditorForm.ui.qml")
                    console.info(stackView.children[1].title)
                    drawer.close()
                }
            }

            ItemDelegate {
                text: qsTr("Go fullscreen")
                width: parent.width
                onClicked: {
                    window.showFullScreen()
                }
            }
            ItemDelegate {
                text: qsTr("Just f*cking quit")
                width: parent.width
                onClicked: {
                    window.close()
                }
            }

        }
    }

    StackView {
        id: stackView
        initialItem: "HomeForm.ui.qml"
        anchors.fill: parent
    }
}
