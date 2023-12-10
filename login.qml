import QtQuick 2.16
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Window
import QtQuick.Controls.Material

Page {
    title: "Py-Classroom"
    Column {
        anchors.centerIn: parent
        spacing: 10

        Text {
            text: "Login\n\n"
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 24; font.bold: true
        }

        ComboBox {
            id: loginRole
            width: parent.width
            model: [ "Student", "Teacher" ]
        }

        TextField {
            id: usernameField
            placeholderText: qsTr("Username or Email")
            width: 300
        }

        TextField {
            id: passwordField
            placeholderText: qsTr("Secret Password")
            width: 300
            echoMode: TextInput.Password
        }

        Button {
            text: qsTr("LOGIN")
            width: 300
            Material.background: Material.accent
            highlighted: true
            onClicked: {
                con.login(usernameField.text, passwordField.text, loginRole.currentValue);
                stackView.push("dashboard.qml");
            }
        }
    }
}