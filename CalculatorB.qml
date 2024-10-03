import QtQuick
import QtQuick.Controls
import LogicModule 1.0

Grid {
    id: _CalculatorB
    columns: 4
    rows: 6
    spacing: 3
    width: parent.width * 0.9  // Занимаем 90% ширины окна
    height: parent.height * 0.6  // Занимаем 60% высоты окна

    property var buttons: ["1", "2", "3", "X", "4", "5", "6", "-", "7", "8", "9", "+", "0", "*", "/", ".", "="]
    property string output: ""
    property string currentOperator: ""
    property int first_operator: 0
    property int second_operator: 0
    property string value
    signal buttonPressed(string value)
    Repeater {
        model: buttons.length
        delegate: Button_model {
            width: (_CalculatorB.width / _CalculatorB.columns) - _CalculatorB.spacing * 0.5
            height: (_CalculatorB.height / _CalculatorB.rows) - _CalculatorB.spacing * 0.5
            Text {
                text: buttons[index]
                color: "yellow"
                anchors.centerIn: parent
                font.bold: true
                font.pointSize: Math.min(parent.height, parent.width) / 3
            }
            MouseArea
            {
                anchors.fill: parent
                onClicked:
                {
                    if(buttons[index] !== "X" && buttons[index] !== "*" && buttons[index] !== "+" && buttons[index] !== "-" && buttons[index] !== "/")
                    {
                        first_operator += buttons[index]

                    }
                    else
                    {
                        second_operator += buttons[index]
                    }

                }
            }
        }
    }

}





