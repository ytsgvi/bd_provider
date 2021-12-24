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
.search{
    background-color: #282828;
    color:white;
    border-radius:15px;
}
.right{
float:right;
}
</style>
</head>
<body>
<div class="topnav">
  <a class="active left" href="catalog.php">Тарифы</a>
  <a href="users.php" class= "left">Пользователи</a>
  <a href="reg.php" class = 'right'>Регистрация</a>
</div>
<div style="padding-left:16px">
<h3>Сортировка по: </h3>
<h3><a href="catalog.php?sort=ratePrice">Цене </a></h3>
<h3><a href="catalog.php?sort=rateSpeed&a=WHERE rateVolume = 0">Скорость больше 30мбс и нет ограничения по трафику</a></h3> <br>

    <?php
    $dbh = new PDO('mysql:dbname=Garanin;host=localhost' , 'Garanin' , 'rwuJiXRn');
    $sth = $dbh->prepare("SET NAMES UTF8");
    $sth->execute();
    $search = 0;
    $sort = $_GET['sort'];
    $search = $_POST['search'];

    if(!isset($sort)){
       $sort = "ratePrice"; 
    }
    $a = $_GET['a'];
    if(!isset($a)){
       $a = " "; 
    }
    $sth = $dbh->prepare("SELECT provider_rates.id, provider_rates.rateTitle, provider_rates.rateText, provider_rates.ratePrice, provider_rates.rateVolume, provider_rates.rateSpeed
    FROM provider_rates
    $a
    ORDER BY provider_rates.$sort DESC LIMIT 5
    ");
    $sth->execute();
    $users = $sth->fetchAll();
    foreach ($users as $user) {
      $vol = $user['rateVolume'];
      if ($vol == 0) {
        $vol = "нет ограничений на использование трафика";
      }else{
        $vol = $vol . ' Гб в месяц';
      }
        echo '<h4>' . $user['rateTitle'] . ' </h4><br>Описание:' . $user['rateText'] .'<br>Максимальная скорость: '. $user['rateSpeed'] .'мб/c<br> Объем трафика:' .$vol .'<br> Цена: '. $user['ratePrice'] . ' рублей в месяц<br>'. '<a href ="str.php?num=' .$user['id']. ' ">Подключенные абоненты</a><hr>';
    }
echo "<br>";
    ?>
</body>
</html>
</body>
</html>