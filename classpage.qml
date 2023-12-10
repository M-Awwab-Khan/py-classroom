import QtQuick 2.16
import QtQuick.Controls 2.16
import QtQuick.Layouts 1.16
import QtQuick.Window
import Qt5Compat.GraphicalEffects
import QtQuick.Controls.Material 2.12

Page {
    visible: true
    title: "Classroom Page"

    Rectangle {
        width: parent.width
        height: parent.height

        // Header with Image Background
        Rectangle {
            width: 800
            height: 200
            color: "#3498db" // Header background color

            Image {
                anchors.fill: parent
                source: "img/WorldHistory.jpg" // Set the actual path to the class header image
                fillMode: Image.PreserveAspectCrop
            }

            // Subject Information
            ColumnLayout {
                anchors {
                    left: parent.left
                    bottom: parent.bottom
                    leftMargin: 10
                    bottomMargin: 10
                }

                Text {
                    text: "History" // Replace with the actual subject name
                    font.pixelSize: 24
                    color: "white"
                }

                Text {
                    text: "Miss Shamsa Qamar" // Replace with the actual section subtitle
                    font.pixelSize: 14
                    color: "white"
                }
            }
        }

        // List of Assignments
        ListView {
            anchors {
                top: parent.top
                left: parent.left
                topMargin: 200
                leftMargin: 10
            }
            width: parent.width - 20
            height: parent.height - 200
            clip: true

            model: ListModel {
                ListElement { assignment: "Homework 1"; date: "Published on Jan 10, 2023" }
                ListElement { assignment: "Project Submission"; date: "Published on Jan 15, 2023" }
                // Add more assignments as needed
            }

            delegate: Item {
                width: parent.width
                height: 120

                Rectangle {
                    width: parent.width
                    height: 120
                    color: "white"
                    radius: 10
                    border.color: "#bdc3c7"
                    border.width: 1
                    smooth: true

                    ColumnLayout {
                        anchors.fill: parent
                        spacing: 5

                        Text {
                            text: model.assignment
                            font.bold: true
                            font.pixelSize: 16
                            color: "#2c3e50"
                            horizontalAlignment: Text.AlignHCenter
                        }

                        Text {
                            text: model.date
                            font.pixelSize: 12
                            color: "#7f8c8d"
                            horizontalAlignment: Text.AlignHCenter
                        }
                    }

                    // Add shadow effect
                    DropShadow {
                        anchors.fill: parent
                        horizontalOffset: 2
                        verticalOffset: 2
                        radius: 5
                        samples: 20
                    }
                }
            }
        }
    }
}
