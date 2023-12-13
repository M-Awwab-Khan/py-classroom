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
            }
            width: parent.width - 200 // Adjusted width
            // Two-Column Layout
            RowLayout {
                width: parent.width
                anchors {
                    top: parent.top
                    topMargin: 120
                }

                // Left Column
                Column {
                    Layout.maximumWidth: 900
                    Layout.minimumWidth: parent.width - 400
                    spacing: 20

                    // Title, Teacher Name, Publish Date
                    Text {
                        text: "Assignment Title" // Replace with the actual assignment title
                        font.bold: true
                        font.pixelSize: 24
                    }

                    Text {
                        text: "Teacher: Mr. Smith | Published on Jan 20, 2023" // Replace with actual teacher name and date
                        color: "#7f8c8d"
                        font.pixelSize: 12
                    }

                    // Points and Due Date
                    RowLayout {
                        width: parent.width
                        Text {
                            text: "Points: 100" // Replace with the actual points
                            color: "#2ecc71" // Points color
                            font.pixelSize: 14
                        }

                        Text {
                            text: "Due Date: Jan 31, 2023" // Replace with the actual due date
                            color: "#e74c3c" // Due date color
                            font.pixelSize: 14
                            anchors {
                                right: parent.right
                                rightMargin: 20
                            }
                            
                        }
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

                // Right Column
                Column {
                    anchors {
                        right: parent.right
                    }
                    Layout.alignment: Qt.AlignRight
                    Layout.maximumWidth: 300
                    Layout.minimumWidth: 300
                    spacing: 10

                    Rectangle {
                        width: parent.width
                        height: 200
                        color: "white"
                        radius: 10
                        border.color: "#bdc3c7"
                        border.width: 1
                        smooth: true

                        Column {
                            anchors.centerIn: parent
                            spacing: 10

                            Text {
                                text: "Your Work"
                                font.bold: true
                                font.pixelSize: 18
                                color: "#2c3e50"
                            }

                            Button {
                                text: "Add or Create"
                                width: 200
                                Material.background: Material.accent
                                highlighted: true
                                onClicked: {
                                    // Handle the button click event
                                    console.log("Add or Create clicked");
                                }
                            }

                            Button {
                                text: "Mark as Done"
                                width: 200
                                Material.background: Material.accent
                                highlighted: true
                                onClicked: {
                                    // Handle the button click event
                                    console.log("Mark as Done clicked");
                                }
                            }
                        }
                    }
                }
            }
        }
    }   
}
