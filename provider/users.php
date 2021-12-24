<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
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

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}
.hoverable:hover + .hover{
    display:inline;
}
.hover{
    display:none;
}
.hover:hover{
    display:inline;
}
</style>
</head>
<body>
<div class="topnav">
  <a  href="catalog.php">Тарифы</a>
  <a href="users.php" class = "hoverable active">Пользователи</a>
  <div class = "hover">
  <a href="users.php?a=1">Абоненты просрочившие абонентскую плату</a>
  <a href="users.php?a=2">100 самых долгосрочных абонентов</a>
</div>
</div>
<div style="padding:16px">
 <?php
$dbh = new PDO('mysql:dbname=Garanin;host=localhost' , 'Garanin' , 'rwuJiXRn');
$sth = $dbh->prepare("SET NAMES UTF8");
$sth->execute();
     $sort = $_GET['a'];
     if(!isset($sort)){
      $sth = $dbh->prepare("SELECT provider_users.id, `name`, `idRate`, `timeConnect`, `active`, `debt`, `rateTitle` FROM `provider_users`
      join provider_rates on provider_rates.id = provider_users.idRate;
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
          echo 'Имя пользователя: '.$user['name'].'<br>Тариф пользователя: '. $user['rateTitle'].'<br>Дата подключения тарифа: '. $user['timeConnect'].'<br> Долг пользователя: '. $user['debt'] . '<br> ID пользователя: ' . $user['id'] .'<br> Активен или нет:' . $c. '<br>';
          echo '<a href="del.php?id='.$user['id'].'">Удалить</a>' . '<br><hr>';
          ;}
   }
   if($sort == 1){
    $sth = $dbh->prepare("SELECT provider_users.id, `name`, `idRate`, `timeConnect`, `active`, `debt`, `rateTitle` FROM `provider_users`
    join provider_rates on provider_rates.id = provider_users.idRate where provider_users.active = 0
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
        }
 }

 if($sort == 2){
  $sth = $dbh->prepare("SELECT provider_users.id, `name`, `idRate`, `timeConnect`, `active`, `debt`, `rateTitle` FROM `provider_users`
  join provider_rates on provider_rates.id = provider_users.idRate order by `timeConnect` desc LIMIT 100
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
      }
 }


    ?></div>
</body>
</html>



