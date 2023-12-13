import QtQuick 2.16
import QtQuick.Controls 2.16
import QtQuick.Layouts 1.16
import QtQuick.Window
import Qt5Compat.GraphicalEffects
import QtQuick.Controls.Material 2.12

Page {
    visible: true
    title: "Assignment Page"

    Rectangle {
        width: parent.width
        height: parent.height

        // Navigation Bar
        Rectangle {
            width: parent.width
            height: 50
            color: "#F07167" // Header background color

            Text {
                text: "Differential and Integral Calculus" // Replace with the actual class name
                font.pixelSize: 18
                color: "white"
                font.bold: true
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.topMargin: 15
                anchors.leftMargin: 20

            }
        }
        Rectangle {
            anchors {
                top: parent.top
                horizontalCenter: parent.horizontalCenter // Center horizontally
                topMargin: 100
            }
            width: parent.width - 400 // Adjusted width
            

            // Mid Column
            ColumnLayout {
                width: parent.width
                anchors {
                    top: parent.top
                    horizontalCenter: parent.horizontalCenter // Center horizontally
                }
                spacing: 15
                // Title, Teacher Name, Publish Date
                Text {
                    text: "Assignment Title" // Replace with the actual assignment title
                    font.bold: true
                    font.pixelSize: 24
                }

                Text {
                    text: "Teacher: Mr. Smith • Published on Jan 20, 2023" // Replace with actual teacher name and date
                    color: "#7f8c8d"
                    font.pixelSize: 12
                }

                // Separator
                Rectangle {
                    width: parent.width - 20
                    height: 1
                    color: "#bdc3c7" // Separator color
                }

                // Description
                Text {
                    text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ..." // Replace with the actual description
                    color: "#34495e" // Text color
                }
            }

        }
    }   
}
