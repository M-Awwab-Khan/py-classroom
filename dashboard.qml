import QtQuick 2.16
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Window
import QtQuick.Controls.Material

Page {
    title: "Dashboard"

    Grid {
        columns: 3
        spacing: 2
        Pane {
            Item {
                Rectangle {
                    width: 100
                    height: 200
                    color: "salmon"
                }
            }
        }
        Pane {
            Item {
                Rectangle {
                    width: 100
                    height: 200
                    color: "blue"
                }
            }
        }
        Pane {
            Item {
                Rectangle {
                    width: 100
                    height: 200
                    color: "green"
                }
            }
        }
    }

}