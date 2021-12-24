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

.topnav a {
  float: left;
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
.search{
    background-color: #282828;
    color:white;
    border-radius:15px;
}
</style>
</head>
<body>
<?php
$num = $_GET['num'];
    $dbh = new PDO('mysql:dbname=Garanin;host=localhost' , 'Garanin' , 'rwuJiXRn');
    $sth = $dbh->prepare("SELECT provider_rates.id, provider_rates.rateTitle, provider_rates.rateText, provider_rates.ratePrice, provider_rates.rateVolume, provider_rates.rateSpeed FROM provider_rates WHERE provider_rates.id = $num");
    $sth->execute();
    $users = $sth->fetchAll();
    foreach ($users as $user) {
        $a = $user['rateTitle'];
    }
    ?>
<div class="topnav">
  <a class="active" href="#"><?echo $a?></a>
  <a href="catalog.php">Тарифы</a>
  <a href="users.php">Пользователи</a>
</div>
<div style="padding-left:16px">
    <?php
 $sth = $dbh->prepare("SELECT provider_users.id, `name`, `idRate`, `timeConnect`, `active`, `debt`, `rateTitle` FROM `provider_users`
 join provider_rates on provider_rates.id = provider_users.idRate where provider_rates.id = $num
 ");
 $sth->execute();
 $users = $sth->fetchAll();
 foreach ($users as $user) {
 $a = $user['debt'];
 $b = $user['id'];
 if($a>0){
   $sth = $dbh->prepare("UPDATE `provider_users` SET `active`='0' WHERE provider_users.id = $b");
   $sth->execute();
 }
 $c = $user['active'];
 if ($c == 1) {
   $c = 'Активен';
 } else {
   $c = 'Не активен';
 }
     echo 'Имя пользователя: '.$user['name'].'<br>Тариф пользователя: '. $user['rateTitle'].'<br>Дата подключения тарифа: '. $user['timeConnect'].'<br> Долг пользователя: '. $user['debt'] . '<br> ID пользователя: ' . $user['id'] .'<br> Активен или нет:' . $c. '<br><hr>';

     ;}
     ?>