import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.12

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Отображение данных измерения на графике")

    DropArea {
        id: dropArea
        anchors.fill: parent
        property string filepath: ""

        onDropped: {
            var url = drop.urls[0].toString();
            var filePath = url.replace('file://', '');

            filepath = filePath;
            console.log(filePath)
        }
    }
}
