import QtQuick 2.16
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Window
import QtQuick.Controls.Material

ApplicationWindow {
    visible: true
    width: 1280
    height: 720
    font.family: "Rethink Sans"
    title: qsTr("Py Classroom")
    flags: Qt.Window | Qt.MSWindowsFixedSizeDialogHint | Qt.WindowCloseButtonHint
    Material.theme: Material.Light
    Material.accent: "#F07167"

    StackView {
        id: stackView
        initialItem: "login.qml"
        anchors.fill: parent
    }
}