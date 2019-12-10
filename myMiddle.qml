import QtQuick 2.0

Item {



    ScrollView {
        height: 300

        Component {
                id: c
                Item {
                    width: parent.width; height: 100
                    Column {
                        width : parent.width/2
                        x: 0
                        Text { text: '<b>Name:</b> ' + name }
                        Text { text: '<b>Weight:</b> ' + weight }
                    }
                    Column {
                        width : parent.width/2
                        x: parent.width/2
                        height: parent.height

                        TextInput {
                            id: textInput
                            x: parent.width - 110
                            y: parent.height/2 - 10
                            width: 80
                            //height: 50
                            text: qsTr("0")
                            font.pixelSize: 20
                        }

                    }

                }
            }
        ListView {
            width: parent.width
            anchors.fill: parent
            y : 110
            height:parent.height-110
            model: TypeChoco {}
            delegate: c
            highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
            focus: true
        }
    }
}
