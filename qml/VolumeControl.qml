import QtQuick 2.0

Item
{
    Rectangle
    {
        id: level5
        color: "black"
        y: 0
        height: parent.height * 0.15
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width
        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                setColors(5);
                audioPlayerGui.setVolume(100);
            }
        }
    }

    Rectangle
    {
        id: level4
        color: "pink"
        y: parent.height * 0.2
        height: parent.height * 0.15
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width * 0.8
        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                setColors(4);
                audioPlayerGui.setVolume(75);
            }
        }
    }

    Rectangle
    {
        id: level3
        color: "pink"
        y: parent.height * 0.4
        height: parent.height * 0.15
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width * 0.6
        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                setColors(3);
                audioPlayerGui.setVolume(50);
            }
        }
    }

    Rectangle
    {
        id: level2
        color: "pink"
        y: parent.height * 0.6
        height: parent.height * 0.15
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width * 0.4
        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                setColors(2);
                audioPlayerGui.setVolume(25);
            }
        }
    }

    Rectangle
    {
        id: level1
        color: "pink"
        y: parent.height * 0.8
        height: parent.height * 0.15
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width * 0.2
        MouseArea
        {
            anchors.fill: parent
            onClicked:
            {
                setColors(1);
                audioPlayerGui.setVolume(0);
            }
        }
    }

    function setColors(level)
    {
        if(level === 1)
        {
            level5.color = "black";
            level4.color = "black";
            level3.color = "black";
            level2.color = "black";
        }
        else if(level === 2)
        {
            level5.color = "black";
            level4.color = "black";
            level3.color = "black";
            level2.color = "pink";
        }
        else if(level === 3)
        {
            level5.color = "black";
            level4.color = "black";
            level3.color = "pink";
            level2.color = "pink";
        }
        else if(level === 4)
        {
            level5.color = "black";
            level4.color = "pink";
            level3.color = "pink";
            level2.color = "pink";
        }
        else if(level === 5)
        {
            level5.color = "pink";
            level4.color = "pink";
            level3.color = "pink";
            level2.color = "pink";
        }
    }
}
