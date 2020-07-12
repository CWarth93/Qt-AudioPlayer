import QtQuick 2.0
import QtQuick.Dialogs 1.0

Item
{
    Rectangle
    {
        anchors.fill: parent
        color: "transparent"

        Image
        {
            source: "../img/open.png"
            x: 0
            width: parent.width * 0.2
            y: 0
            height: parent.height
            MouseArea
            {
                anchors.fill: parent
                onClicked:
                {
                    fileDialog.open();
                }
            }
        }

        FileDialog
        {
            id: fileDialog
            title: "Wähle deine Audiodatei"
            folder: shortcuts.home
            onAccepted:
            {
                console.log("You chose: " + fileDialog.fileUrls);
                audioPlayerGui.setAudio(fileDialog.fileUrls);
            }
            onRejected:
            {
                console.log("Canceled");
            }
        }

        Image
        {
            source: "../img/play.png"
            x: parent.width * 0.25
            width: parent.width * 0.2
            y: 0
            height: parent.height
            MouseArea
            {
                anchors.fill: parent
                onClicked:
                {
                    audioPlayerGui.play();
                }
            }
        }

        Image
        {
            source: "../img/stop.png"
            x: parent.width * 0.5
            width: parent.width * 0.2
            y: 0
            height: parent.height
            MouseArea
            {
                anchors.fill: parent
                onClicked:
                {
                    audioPlayerGui.stop();
                }
            }
        }

        Image
        {
            source: "../img/pause.png"
            x: parent.width * 0.75
            width: parent.width * 0.2
            y: 0
            height: parent.height
            MouseArea
            {
                anchors.fill: parent
                onClicked:
                {
                    audioPlayerGui.pause();
                }
            }
        }
    }
}
