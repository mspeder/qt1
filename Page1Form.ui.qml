import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    property alias button1: button1
    property alias button2: button2

    RowLayout {
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
        x: 220
        y: 285
        width: 202
        height: 31
        indeterminate: true
        value: 0.5
    }
}
