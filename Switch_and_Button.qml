import QtQuick 2.0
import QtQuick.Controls 2.13
import QtQuick.Controls.Material 2.0

Item {
    signal checker(bool checked);
    signal btnPress(bool checked);
    width: 400
    height: 400
    Switch {
        id: sw1;
        x: 152
        y: 148
        text: "OFF";
        onCheckedChanged: {
            sw1.text = sw1.checked ? "ON" : "OFF";
            if(sw1.text == "ON")
                parent.checker(true);
            else
                parent.checker(false);
        }
    }

    Button {
        id: button;
        x: 158
        y: 214
        text: "OFF";
        checkable: true
        checked: false
        onCheckedChanged: {
            button.text = button.checked ? "ON" : "OFF";
            if(button.text == "ON")
                parent.btnPress(true);
            else
                parent.btnPress(false);
        }
    }

}


