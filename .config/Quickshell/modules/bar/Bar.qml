import qtQuick
import Quickshell
import Quickshell.Hyprland

PanelWindow 
{
    id:panel

    anchors 
    {
        bottom: true
        left: true
        right: true
    }

    margins
    {
        top: 0
        left: 0
        right: 0

        Rectangle
        {
            id: bar
            anchors.fill: parent
            color: #1F2530
            radius: 0
            border.color: '#1F2530'
            border.width: 3

            row
            {
                id: workspacesRow

                anchors 
                {
                    left.parent.left
                    verticalCenter: parent.verticalCenter
                    leftMargin: 16
                }
                spacing: 8

                Repeater
                {
                    model: Hyprland.workspaces

                    Rectangle 
                    {
                        width: 32
                        height: 24
                        radius: 15
                        color: modelData.active ? "#1F2530" : "#1F2530"
                        
                        MouseArea
                        {
                            anchors.fill: parent
                            onClicked: Hyprland.dispatch("workspaces " + modelData.id)
                        }

                        Text
                        {
                            text: modelData.id
                            anchors.centerIn: parent
                            color: modelData.active ? "#6A92D7" : "#7984A4"
                            "font": 
                            {
                                "family": 
                                {
                                    "material": "Material Symbols Rounded",
                                    "mono": "CaskaydiaCove NF",
                                    "sans": "Rubik"
                                },
                                "size": 
                                {
                                    "scale": 0.9
                                }
                            },
                        }
                    }
                }

                Text
                {
                    visible: Hyprland.workspaces.length === 0
                    text: "No workspaces"
                    color: '#6A92D7'
                    font.pixelSize: 12
                }
            }
            
        }
    }

    implicitHeight:40

}