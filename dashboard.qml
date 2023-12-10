import QtQuick 2.15
import QtQuick.Layouts
import QtQuick.Controls 2.15
import QtQuick.Window
import Qt5Compat.GraphicalEffects
import QtQuick.Controls.Material 2.12

Page {
    visible: true
    width: 800
    height: 600
    title: "Student Dashboard"

    Rectangle {
        width: parent.width
        height: parent.height

        // Header
        Rectangle {
            width: parent.width
            height: 50
            color: "#F07167" // Header background color

            Text {
                anchors.centerIn: parent
                text: "Dashboard"
                font.pixelSize: 18
                color: "white"
            }

            // Student Avatar
            Image {
                width: 30
                height: 30
                source: "avatar.png" // Set the actual path to the avatar image
                anchors {
                    top: parent.top
                    right: parent.right
                    topMargin: 10
                    rightMargin: 10
                }

                // Create a circular mask for the avatar
                sourceSize.width: 30
                sourceSize.height: 30
                layer.enabled: true
                layer.effect: OpacityMask {
                    maskSource: Rectangle { width: 30; height: 30; radius: 15 }
                }
            }
        }

        // Welcome Text
        Text {
            text: "Welcome John Doe" // Replace with the actual student's name
            font.pixelSize: 20
            font.bold: true
            anchors {
                top: parent.top
                left: parent.left
                topMargin: 80
                leftMargin: 40
            }
        }

        // Grid of Classes
        GridView {
            anchors {
                top: parent.top
                left: parent.left
                topMargin: 120
                leftMargin: 30
            }
            width: parent.width - 20
            height: parent.height - 100
            cellWidth: 200
            cellHeight: 250
            model: ListModel {
                ListElement { subject: "Math"; teacher: "Mr. Smith"; illustration: "math.jpg" }
                ListElement { subject: "History"; teacher: "Ms. Johnson"; illustration: "history.jpg" }
                // Add more classes as needed
            }

            delegate: Pane {
                width: 200
                height: 250
                clip: true
                Rectangle {
                    id: classcard
                    width: 180
                    height: 230
                    color: "white"
                    radius: 10
                    border.color: "#bdc3c7"
                    border.width: 1
                    smooth: true

                    Image {
                        width: parent.width
                        height: 150
                        source: model.illustration
                    }

                    Text {
                        anchors {
                            top: parent.top
                            horizontalCenter: parent.horizontalCenter
                            topMargin: 170
                        }
                        text: model.subject
                        font.pixelSize: 20
                        font.bold: true
                    }

                    Text {
                        anchors {
                            top: parent.top
                            horizontalCenter: parent.horizontalCenter
                            topMargin: 200
                        }
                        text: "Teacher: " + model.teacher
                        color: "#7f8c8d"
                        font.pixelSize: 10
                    }
                }
                
            }
        }
    }
}

