import QtQuick 2.15
import QtQuick.Layouts
import QtQuick.Controls 2.15
import QtQuick.Window
import Qt5Compat.GraphicalEffects
import QtQuick.Controls.Material 2.12

Page {
    visible: true
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
                font.family: "Rethink Sans"
                font.pixelSize: 18
                color: "black"
            }

            // Student Avatar
            Image {
                width: 30
                height: 30
                source: "img/avatar.png" // Set the actual path to the avatar image
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
            font.family: "Rethink Sans"
            anchors {
                top: parent.top
                left: parent.left
                topMargin: 80
                leftMargin: 60
            }
        }

        // Grid of Classes
        GridView {
            anchors {
                top: parent.top
                left: parent.left
                topMargin: 120
                leftMargin: 50
            }
            width: parent.width - 20
            height: parent.height - 100
            cellWidth: 250
            cellHeight: 300
            model: ListModel {
                ListElement { subject: "Math"; teacher: "Mr. Smith"; illustration: "img/math.jpg" }
                ListElement { subject: "History"; teacher: "Ms. Johnson"; illustration: "img/history.jpg" }
                // Add more classes as needed
            }

            delegate: Pane {
                width: 250
                height: 300
                clip: true
                Rectangle {
                    id: classcard
                    width: parent.width
                    height: parent.height
                    color: "white"
                    radius: 10
                    border.color: "#bdc3c7"
                    border.width: 1
                    smooth: true

                    Image {
                        width: parent.width
                        height: 170
                        source: model.illustration
                    }

                    Text {
                        anchors {
                            top: parent.top
                            horizontalCenter: parent.horizontalCenter
                            topMargin: 200
                        }
                        font.family: "Rethink Sans"
                        text: model.subject
                        font.pixelSize: 22
                        font.bold: true
                    }

                    Text {
                        anchors {
                            top: parent.top
                            horizontalCenter: parent.horizontalCenter
                            topMargin: 230
                        }
                        font.family: "Rethink Sans"
                        text: "Teacher: " + model.teacher
                        color: "#7f8c8d"
                        font.pixelSize: 12
                    }
                }
                // MouseArea for handling clicks
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        // Handle the click event here
                        con.classpage(model.subject);
                        // Add navigation logic here, e.g., change the current page
                        stackView.push("classpage.qml")
                    }
                }
            }
        }
    }
}

