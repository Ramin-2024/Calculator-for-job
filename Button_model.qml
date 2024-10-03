import QtQuick
import QtQuick.Controls
import LogicModule 1.0

Rectangle
{
    id: _button
    signal clicked()
    color: "red"
    border.width: 3
    radius: 6
    width: 50
    height: 50




    Text {
        id: _textfif
        color: "white"
        anchors.centerIn: _button
        font.bold: true
        font.pointSize: Math.min(_button.height, _button.width) / 3
    }



}
