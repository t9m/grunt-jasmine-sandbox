function insertText(value, index) {
    var test1Element = document.getElementById('test1'),
        test2Element = document.getElementById('test2'),
        test3Elements = document.getElementsByClassName('test3');
    if (!index) {
        index = 0;
    }
    test3Elements[index].innerHTML = value;
}
