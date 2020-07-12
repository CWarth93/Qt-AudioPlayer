import QtQuick 2.11
import QtQuick.Window 2.11

import "./qml"

Window
{
    id: root
    visible: true
    width: screen.width * 0.7
    height: screen.height * 0.13
    title: qsTr("Audio Player")

    Rectangle
    {
        id: audioPlayerGui
        anchors.fill: parent
        color: "cyan"
        border.width: height * 0.03

        Buttonbar
        {
            x: parent.width * 0.1
            width: parent.width * 0.25
            y: parent.height * 0.3
            height: parent.height * 0.5
        }

        Timeline
        {
            id: timeline
            x: parent.width * 0.4
            width: parent.width * 0.3
            y: parent.height * 0.3
            height: parent.height * 0.5
        }

        VolumeControl
        {
            id: volumeControl
            x: parent.width * 0.75
            width: parent.width * 0.15
            y: parent.height * 0.3
            height: parent.height * 0.5
        }

        function setVolume(volume)
        {
            audioPlayer.setVolume(volume);
        }

        function setAudio(filePath)
        {
            audioPlayer.addAudio(filePath);
        }

        function play()
        {
            audioPlayer.setPosition((timeline.getPosition() * audioPlayer.getAudioLength()) / 100);
            audioPlayer.play();
            timeline.forward();
        }

        function pause()
        {
            audioPlayer.pause();
            timeline.stay();
        }

        function stop()
        {
            audioPlayer.stop();
            timeline.toStart();
        }

    }

}
