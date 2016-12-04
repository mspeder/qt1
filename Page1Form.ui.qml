import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    id: item1
    property alias button1: button1
    property alias button2: button2

    ColumnLayout {
        id: columnLayout1
        anchors.bottomMargin: 20
        anchors.fill: parent
        spacing: 5
        clip: false

        BusyIndicator {
            id: busyIndicator1
            Layout.fillWidth: false
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }

        RowLayout {
            spacing: 20
            Layout.fillHeight: false
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            anchors.centerIn: parent

            Button {
                id: button1
                text: qsTr("Press Me 1")
            }

            Button {
                id: button2
                text: qsTr("Press Me Too")
            }
        }

        ProgressBar {
            id: progressBar1
            width: 202
            height: 31
            topPadding: 5
            bottomPadding: 5
            Layout.fillHeight: false
            Layout.fillWidth: false
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            indeterminate: true
            value: 0.5
        }

    }

    Text {
        id: text1
        x: 391
        y: 24
        text: qsTr("Text")
        anchors.right: parent.right
        anchors.rightMargin: 36
        font.italic: true
        font.bold: true
        textFormat: Text.PlainText
        font.family: "Times New Roman"
        font.pixelSize: 120
    }

}
