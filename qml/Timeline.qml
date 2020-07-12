import QtQuick 2.0

Item
{

    Rectangle
    {
        id: line
        color: "pink"
        x: 0
        width: parent.width
        y: parent.height * 0.4
        height: parent.height * 0.2        
    }

    Rectangle
    {
        id: marker
        color: "black"
        x: 0
        width: parent.width * 0.025
        y: 0
        height: parent.height
        PropertyAnimation
        {
            id: markerForward
            target: marker
            properties: "x"
            from: marker.x
            to: line.x + line.width
            duration: 5000
        }
    }

    MouseArea
    {
        anchors.fill: parent
        onClicked:
        {
            markerForward.stop();
            marker.x = mouseX
            markerForward.start();
            audioPlayerGui.play();
        }
    }

    function forward()
    {
        markerForward.duration = audioPlayer.getAudioLength() - marker.x;
        markerForward.start();        
    }

    function stay()
    {
        markerForward.stop();
    }

    function toStart()
    {
        markerForward.stop();
        marker.x = 0
    }

    function getPosition()
    {
        return (marker.x * 100) / line.width;
    }

}
