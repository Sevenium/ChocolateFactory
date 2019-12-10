import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.5
import QtQuick.Window 2.2

ApplicationWindow {
    id: applicationWindow2
    visible: true
    width: 640
    height: 480
    function setTextMilk(messageText)
    {
        milk.text = "Milk : "+messageText
    }

    title: qsTr("Scroll")
        Rectangle{
            anchors.fill: parent
            color:"#ececec"
            width:parent.width
            Column{
                anchors.fill: parent
                spacing : 5
                Rectangle {
                    color: "lightblue"
                    radius: 10.0
                    clip: true
                    width: parent.width
                    height: parent.height/5

                    Row{
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.fill : parent
                        Rectangle{
                            width: parent.width/3
                            height: parent.height
                            TextArea {
                                id: textArea
                                text: qsTr("ChocolateFactory")
                                anchors.fill : parent
                            }
                        }

                        Column{
                            width: parent.width/3
                            height: parent.height
                            TextArea {
                                id: milk

                                text: qsTr("Milk")
                                width: parent.width
                                height: 2*parent.height/3
                            }
                            Button {
                                anchors { horizontalCenter: parent.horizontalCenter}
                                id: buttonMilk
                                text: qsTr("Order")
                                width: parent.width/2
                                height: parent.height/3
                            }
                        }
                        Column{
                            function setTextChoco(messageText)
                            {
                                choco.text = "Choco : "+messageText
                            }
                            width: parent.width/3
                            height: parent.height
                            TextArea {
                                id: choco
                                text: qsTr("Chocolate")
                                width: parent.width
                                height: 2*parent.height/3
                            }
                            Button {
                                anchors { horizontalCenter: parent.horizontalCenter }
                                id: buttonChoco
                                text: qsTr("Order")
                                width: parent.width/2
                                height: parent.height/3
                            }
                        }
                    }
                }
                Rectangle {
                    color: "lightblue"
                    radius: 10.0
                    clip: true
                    width: parent.width
                    height: 3*parent.height/5

                    Component {
                            id: c
                            Item {
                                width: parent.width; height: parent.height/3
                                Column {
                                    width : parent.width/2
                                    x: 0
                                    Text { text: '<b>Name:</b> ' + name }
                                    Text { text: '<b>Weight:</b> ' + weight }
                                }
                                Column {
                                    width : parent.width/4
                                    x: parent.width/2
                                    height: parent.height

                                    TextInput {
                                        id: textInput
                                        x:parent.width/4
                                        y:parent.height/3
                                        width: 80
                                        //height: 50
                                        text: qsTr("0")
                                        font.pixelSize: 20

                                    }
                                    signal buttonClicked(int value, int nb)
                                    Button {
                                        id: buttonProduction
                                        text: qsTr("Produce")
                                        width: parent.width/2
                                        x: parent.width
                                        height: parent.height/3
                                        onClicked: buttonClicked(textInput.text)
                                    }

                                }

                            }
                        }
                    ListView {
                        anchors.rightMargin: 0
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.fill: parent
                        model: TypeChoco {}
                        delegate: c
                        highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
                        focus: true
                    }
                }
                Rectangle {
                    color: "lightblue"
                    radius: 10.0
                    clip: true
                    width: parent.width
                    height: parent.height/5

                }
            }
        }

}
