import QtQuick 2.15
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.3

ApplicationWindow {

    id: window
    width: 500
    height: 500
    visible: true
    title: qsTr("ComboBox in a Dialog issue")


    Button {
        anchors.centerIn: parent
        text: "Open a dialog with a ComboBox inside"
        anchors.verticalCenterOffset: 77
        anchors.horizontalCenterOffset: 1
        onClicked: {
            dialog.open()
        }
    }

    Label {
        x: 150
        y: 69
        color: "#d8048404"
        text: "This ComboBox WORKS properly"
    }

    ComboBox {
        x: 161
        y: 103
        width: 177
        height: 25
        model: ["Item 1", "Item 2"]

        Label {
            x: -87
            y: 258
            color: "#d8fa0505"
            text: "The ComboBox INSIDE the dialog does NOT work properly"
        }
    }


    Dialog {
        id: dialog
        standardButtons: StandardButton.Ok
        width: 300
        height: 300

        Label {
            text: "This ComboBox does NOT work properly"
        }

        ComboBox {
            anchors.centerIn: parent
            model: ["Item 1", "Item 2"]
        }

    }

}
