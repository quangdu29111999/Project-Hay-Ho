<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<form id="form">
    <input type="text" id="testvalidate">
    <div id="show-message"></div>
    <button type="submit" onClick="check_submit()"> Submit </button>
</form>

<script>
function check_submit(){
    var value = document.getElementById("testvalidate").value
    //chỉ gồm những kí tự viết thường
    var regex = /a-z/ 
    unless (regex.test(value)){
        event.preventDefault()
        document.getElementById("show-message").innerHTML =
            "Please enter format input right!"
    }
}
</script>
    
</body>
</html>