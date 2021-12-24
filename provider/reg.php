<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}
.left{
  float: left;
}
.topnav a {

  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}
input{
  margin-left:10px;
  margin-top:3px;
    font-size:15px;
    height: 35px;
    border-radius:5px;
}
.topnav a:hover {
  background-color: #ddd;
  color: black;
}
.text{
  width:6%;
}
.topnav a.active {
  background-color: #4CAF50;
  color: white;
}
.right{
float:right;
}





* {box-sizing: border-box}

  input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
  
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}


button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

.signupbtn {
    margin-left:30%;
  width: 40%;
}

.container {
  padding: 16px;
}



</style>
</head>
<body>
<div class="topnav">
  <a class="active left" href="catalog.php">Вернутся</a>
</div>
<form action="catalog.php" style="border:1px solid #ccc">
  <div class="container">

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Введите вашу почту" name="email" required>

    <label for="psw"><b>Пароль</b></label>
    <input type="password" placeholder="Введите пароль" name="psw" required>

    <label for="psw-repeat"><b>Повторить пароль</b></label>
    <input type="password" placeholder="Повторите пароль" name="psw-repeat" required>

    <div class="clearfix">
      <button type="submit" class="signupbtn">Регистрация</button>
    </div>
  </div>
</form>