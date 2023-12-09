import QtQuick 2.16
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Window
import QtQuick.Controls.Material

Page {
    title: "Dashboard"
    Column {
        anchors.centerIn: parent
        spacing: 10
        Rectangle {
            x: 20
            y: 20
            width: parent.width
            height: 200
            color: Material.Amber
            radius: 30
        }
}   }