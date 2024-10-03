import QtQuick
import QtQuick.Controls
import LogicModule 1.0
    Window {
        visible: true
        title: "Calculator"

        minimumWidth: 450
        minimumHeight: 600
        maximumWidth: 450
        maximumHeight: 600

        Logic
        {
            id: _logic
        }

        Button_model
        {

        }

        ResultFiels
        {
            id: _result
            anchors.top:parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            readOnly: true
        }

        CalculatorB
        {
            anchors.top: _result.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 10

            onButtonPressed:
            {

            _result.text += value; // Прием значения и введение в _result

            }
        }


}
