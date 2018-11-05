function Plus_Click() 
{
    var first = parseInt(document.getElementById('ctl00_ContentPlaceHolder1_TextBox1').value);
    var second = parseInt(document.getElementById('ctl00_ContentPlaceHolder1_TextBox2').value);
    PageMethods.plus(first, second, onRequestComplete, null, 'ctl00_ContentPlaceHolder1_Label1');
}

function Minus_Click() {
    var first = parseInt(document.getElementById('ctl00_ContentPlaceHolder1_TextBox1').value);
    var second = parseInt(document.getElementById('ctl00_ContentPlaceHolder1_TextBox2').value);
    PageMethods.minus(first, second, onRequestComplete, null, 'ctl00_ContentPlaceHolder1_Label1');
}
function onRequestComplete(result, context) 
{
   document.getElementById(context).innerText = result.toString();
}