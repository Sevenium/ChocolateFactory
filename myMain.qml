import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.5
import QtQuick.Window 2.2

ApplicationWindow {
    id: applicationWindow2
    visible: true
    width: 640
    height: 480
    title: qsTr("Chocolate Factory")

    //Functions

    //Interface Milk
    function setTextMilk(messageText)
    {
        milk.text = "Milk\n"+messageText
    }

    //Interface Choco
    function setTextChoco(messageText)
    {
        choco.text = "Chocolate\n    "+messageText
    }



    //Setters
    function setNameBlack(messageText)
    {
        nameBlack.text = messageText
    }
    function setMilkBlack(milk)
    {
        valueMilkBlack.text = "- Milk : "+milk
    }
    function setChocoBlack(choco)
    {
        valueChocoBlack.text = "- Chocolate :"+choco
    }
    function setWeightBlack(weight)
    {
        weightBlack.text = "- Weight: "+weight+" g"
    }
    function setCaloriesBlack(calories)
    {

        caloriesBlack.text = "- Calories: "+calories+" cal"
    }
    function setPMBlack(percMilk)
    {
        percMilkBlack.text ="- % Milk: "+percMilk+" %"
    }
    function setPCBlack(percChoco)
    {
        percChocoBlack.text ="- % Chocolate: "+percChoco+" %"
    }

    function setNameKinder(messageText)
    {
        nameKinder.text = messageText
    }
    function setMilkKinder(milk)
    {
        valueMilkKinder.text = "- Milk : "+milk
    }
    function setChocoKinder(choco)
    {
        valueChocoKinder.text = "- Chocolate :"+choco
    }
    function setWeightKinder(weight)
    {
        weightKinder.text = "- Weight: "+weight+" g"
    }
    function setCaloriesKinder(calories)
    {

        caloriesKinder.text = "- Calories: "+calories+" cal"
    }
    function setPMKinder(percMilk)
    {
        percMilkKinder.text ="- % Milk: "+percMilk+" %"
    }
    function setPCKinder(percChoco)
    {
        percChocoKinder.text ="- % Chocolate: "+percChoco+" %"
    }

    function setNameMars(messageText)
    {
        nameMars.text = messageText
    }
    function setMilkMars(milk)
    {
        valueMilkMars.text = "- Milk : "+milk
    }
    function setChocoMars(choco)
    {
        valueChocoMars.text = "- Chocolate :"+choco
    }
    function setWeightMars(weight)
    {
        weightMars.text = "- Weight: "+weight+" g"
    }
    function setCaloriesMars(calories)
    {

        caloriesMars.text = "- Calories: "+calories+" cal"
    }
    function setPMMars(percMilk)
    {
        percMilkMars.text ="- % Milk: "+percMilk+" %"
    }
    function setPCMars(percChoco)
    {
        percChocoMars.text ="- % Chocolate: "+percChoco+" %"
    }
    // End setters

    //Function Popup
    function openPopup(message){
        textPopup.text = message +"\nPress ESC to exit"
        popup.open()
    }

    // Main Frame
    Column{
        spacing: 10
        width : parent.width
        height : parent.height


        Popup {
                id: popup
                x: Math.round((parent.width - width) / 2)
                y: Math.round((parent.height - height) / 2)
                modal: true
                focus: true
                closePolicy: Popup.CloseOnEscape
                contentItem : Text {
                    id: textPopup
                    text: "Content"
                    horizontalAlignment: Text.AlignHCenter
                }
        }

        // Header
        Rectangle{
            width : parent.width
            height : parent.height/4 - 30
            color:"#ececec"
                Rectangle {
                    color: "brown"
                    width: parent.width
                    height: parent.height

                    Row{
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.fill : parent
                        Rectangle{ //Title
                            width: parent.width/3
                            height: parent.height
                            Text {
                                id: textArea
                                text: qsTr("ChocolateFactory")
                                anchors.centerIn: parent
                                font.pixelSize: 20
                                color: "brown"
                            }

                        }

                        Column{ //Milk
                            width: parent.width/3
                            height: parent.height

                            Text {
                                id: milk
                                 anchors.horizontalCenter: parent.horizontalCenter;
                                text: qsTr("Milk")
                                font.pixelSize: 15
                                lineHeight: 1.3
                                color: "white"

                            }
                            Button {
                                anchors { horizontalCenter: parent.horizontalCenter}
                                anchors.bottom: parent.bottom;
                                anchors.bottomMargin : 5
                                id: buttonMilk
                                objectName: "buttonMilk"
                                text: qsTr("Order : 100")
                                width: parent.width/2
                                height: parent.height/3
                                signal sendMilkSupply()
                                MouseArea {
                                    anchors.fill: parent
                                    onClicked: buttonMilk.sendMilkSupply()
                                }
                            }
                        }
                        Column{ //Chocolate
                            width: parent.width/3
                            height: parent.height
                            Text {
                                id: choco
                                anchors.horizontalCenter: parent.horizontalCenter;
                                text: qsTr("Chocolate")
                                font.pixelSize: 15
                                lineHeight: 1.3
                                color: "white"
                            }
                            Button {
                                anchors { horizontalCenter: parent.horizontalCenter }
                                anchors.bottom: parent.bottom;
                                anchors.bottomMargin : 5
                                id: buttonChoco
                                objectName: "buttonChoco"
                                text: qsTr("Order : 100")
                                width: parent.width/2
                                height: parent.height/3
                                signal sendChocoSupply()
                                MouseArea {
                                    anchors.fill: parent
                                    onClicked: buttonChoco.sendChocoSupply()
                                }
                            }
                        }
                    }//Row
                }
            //}//Column
        }//Rectangle

        //First Chocolate
        Rectangle {
            width : parent.width
            height : parent.height/4
            color: "#800000"
            Column{
                height: parent.height
                Text {
                    id: nameBlack
                    topPadding: 5
                    leftPadding: 15
                    bottomPadding: 5
                    text: qsTr("Black Chocolate")
                    //height: parent.height/2
                    font.pixelSize: 19
                    color: "white"
                    font.bold: true
                }
                Row{
                    Text {
                        id: valueMilkBlack
                        topPadding: 5
                        leftPadding: 15
                        bottomPadding: 5
                        text: qsTr("- Milk:")
                        //height: parent.height/2
                        font.pixelSize: 17
                        color: "white"
                        font.bold: true
                    }
                    Text {
                        id: valueChocoBlack
                        topPadding: 5
                        leftPadding: 15
                        bottomPadding: 5
                        text: qsTr("- Chocolate:")
                        //height: parent.height/2
                        font.pixelSize: 17
                        color: "white"
                        font.bold: true
                    }
                }

                Row{
                    Text {
                        id: weightBlack
                        topPadding: 5
                        leftPadding: 15
                        text: qsTr("- Weight:")
                        font.pixelSize: 12
                        color: "white"
                    }

                    Text {
                        id: caloriesBlack
                        topPadding: 5
                        leftPadding: 15
                        text: qsTr("- Calories:")
                        font.pixelSize: 12
                        color: "white"
                    }
                }
                Row{
                    Text {
                        id: percMilkBlack
                        topPadding: 5
                        leftPadding: 15
                        text: qsTr("- % Milk:")
                        font.pixelSize: 12
                        color: "white"
                    }

                    Text {
                        id: percChocoBlack
                        topPadding: 5
                        leftPadding: 15
                        text: qsTr("- % Chocolate:")
                        font.pixelSize: 12
                        color: "white"
                    }
                }


             }

            Button {
                id:buttonBlack
                objectName: "buttonBlack"
                signal sendBlackSignal();

                x : 3*parent.width/4
                y : (parent.height-50)/2
                text: "Produce"

                MouseArea {
                    anchors.fill: parent
                    onClicked: buttonBlack.sendBlackSignal()
                }
            }
        }//Rectangle Black

        //Second Chocolate
        Rectangle {
            width : parent.width
            height : parent.height/4
            color: "#a0522d"
            Column{
                height: parent.height
                Text {
                    id: nameKinder
                    topPadding: 5
                    leftPadding: 15
                    bottomPadding: 5
                    text: qsTr("Kinder Chocolate")
                    //height: parent.height/2
                    font.pixelSize: 19
                    color: "white"
                    font.bold: true
                }
                Row{
                    Text {
                        id: valueMilkKinder
                        topPadding: 5
                        leftPadding: 15
                        bottomPadding: 5
                        text: qsTr("- Milk:")
                        //height: parent.height/2
                        font.pixelSize: 17
                        color: "white"
                        font.bold: true
                    }
                    Text {
                        id: valueChocoKinder
                        topPadding: 5
                        leftPadding: 15
                        bottomPadding: 5
                        text: qsTr("- Chocolate:")
                        //height: parent.height/2
                        font.pixelSize: 17
                        color: "white"
                        font.bold: true
                    }
                }

                Row{
                    Text {
                        id: weightKinder
                        topPadding: 5
                        leftPadding: 15
                        text: qsTr("- Weight:")
                        font.pixelSize: 12
                        color: "white"
                    }

                    Text {
                        id: caloriesKinder
                        topPadding: 5
                        leftPadding: 15
                        text: qsTr("- Calories:")
                        font.pixelSize: 12
                        color: "white"
                    }
                }
                Row{
                    Text {
                        id: percMilkKinder
                        topPadding: 5
                        leftPadding: 15
                        text: qsTr("- % Milk:")
                        font.pixelSize: 12
                        color: "white"
                    }

                    Text {
                        id: percChocoKinder
                        topPadding: 5
                        leftPadding: 15
                        text: qsTr("- % Chocolate:")
                        font.pixelSize: 12
                        color: "white"
                    }
                }


             }
            Button {
                id:buttonKinder
                objectName: "buttonKinder"
                signal sendKinderSignal();

                x : 3*parent.width/4
                y : (parent.height-50)/2
                text: "Produce"

                MouseArea {
                    anchors.fill: parent
                    onClicked: buttonKinder.sendKinderSignal()
                }
            }
        }//Rectangle Kinder

        //Third Chocolate
        Rectangle {
            width : parent.width
            height : parent.height/4
            color: "#8b4513"
            Column{
                height: parent.height
                Text {
                    id: nameMars
                    topPadding: 5
                    leftPadding: 15
                    bottomPadding: 5
                    text: qsTr("Mars Chocolate")
                    //height: parent.height/2
                    font.pixelSize: 19
                    color: "white"
                    font.bold: true
                }
                Row{
                    Text {
                        id: valueMilkMars
                        topPadding: 5
                        leftPadding: 15
                        bottomPadding: 5
                        text: qsTr("- Milk:")
                        //height: parent.height/2
                        font.pixelSize: 17
                        color: "white"
                        font.bold: true
                    }
                    Text {
                        id: valueChocoMars
                        topPadding: 5
                        leftPadding: 15
                        bottomPadding: 5
                        text: qsTr("- Chocolate:")
                        //height: parent.height/2
                        font.pixelSize: 17
                        color: "white"
                        font.bold: true
                    }
                }

                Row{
                    Text {
                        id: weightMars
                        topPadding: 5
                        leftPadding: 15
                        text: qsTr("- Weight:")
                        font.pixelSize: 12
                        color: "white"
                    }

                    Text {
                        id: caloriesMars
                        topPadding: 5
                        leftPadding: 15
                        text: qsTr("- Calories:")
                        font.pixelSize: 12
                        color: "white"
                    }
                }
                Row{
                    Text {
                        id: percMilkMars
                        topPadding: 5
                        leftPadding: 15
                        text: qsTr("- % Milk:")
                        font.pixelSize: 12
                        color: "white"
                    }

                    Text {
                        id: percChocoMars
                        topPadding: 5
                        leftPadding: 15
                        text: qsTr("- % Chocolate:")
                        font.pixelSize: 12
                        color: "white"
                    }
                }


             }
            Button {
                id:buttonMars
                objectName: "buttonMars"
                signal sendMarsSignal();

                x : 3*parent.width/4
                y : (parent.height-50)/2
                text: "Produce"

                MouseArea {
                    anchors.fill: parent
                    onClicked: buttonMars.sendMarsSignal()
                }
            }
        }//Rectangle Mars
    }




}//ApplicationWindow
