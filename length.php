<?php

include("includes/ayarlar.php");
require_once('includes/functions.php');

$from_value = '';
$from_unit = '';
$to_unit = '';
$to_value = '';


//Bu kısımda backend hesaplamaları yapılmıştır.
if (isset($_POST['submit'])) {
  $from_value = $_POST['from_value'];
  $from_unit = $_POST['from_unit'];
  $to_unit = $_POST['to_unit'];
  //Bugünün tarihini aldık
  $tarih = date("Y-m-d");
  //Kullanıcı ip adresi çekme-localhost sisteminde çalıştığımız için ip adresi "1" olarak gözükecektir ama canlı sitede kullanıcının ip adresi olucaktır.
  $ip_adresi = $_SERVER['REMOTE_ADDR'];
  $to_value = convert_length($from_value, $from_unit, $to_unit);
  $result = float_to_string($to_value);

  //veritabanına kaydetme işlemi
  $islem = $db->prepare("INSERT INTO length_and_distance(girilen,nerden,sonuc,nereye,ip_adresi,tarih) Values (?,?,?,?,?,?)");
  $islemekle = $islem->execute(array($from_value, $from_unit, $result, $to_unit,$ip_adresi,$tarih));


}

?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>Convert Length</title>
  <link href="styles.css" rel="stylesheet" type="text/css">
</head>

<body>

  <div id="main-content">

    <h1>Convert Length</h1>

    <form action="" method="post">

      <div class="entry">
        <label>From:</label>&nbsp;
        <input type="text" name="from_value" value="<?php echo $from_value; ?>" />&nbsp;
        <select name="from_unit">
          <option value="inches" <?php if ($from_unit == 'inches') {
                                    echo " selected";
                                  } ?>>inches</option>
          <option value="feet" <?php if ($from_unit == 'feet') {
                                  echo " selected";
                                } ?>>feet</option>
          <option value="yards" <?php if ($from_unit == 'yards') {
                                  echo " selected";
                                } ?>>yards</option>
          <option value="miles" <?php if ($from_unit == 'miles') {
                                  echo " selected";
                                } ?>>miles</option>
          <option value="millimeters" <?php if ($from_unit == 'millimeters') {
                                        echo " selected";
                                      } ?>>millimeters</option>
          <option value="centimeters" <?php if ($from_unit == 'centimeters') {
                                        echo " selected";
                                      } ?>>centimeters</option>
          <option value="meters" <?php if ($from_unit == 'meters') {
                                    echo " selected";
                                  } ?>>meters</option>
          <option value="kilometers" <?php if ($from_unit == 'kilometers') {
                                        echo " selected";
                                      } ?>>kilometers</option>
        </select>
      </div>

      <div class="entry">
        <label>To:</label>&nbsp;
        <input type="text" name="to_value" value="<?php echo float_to_string($to_value); ?>" />&nbsp;
        <select name="to_unit">
          <option value="inches" <?php if ($to_unit == 'inches') {
                                    echo " selected";
                                  } ?>>inches</option>
          <option value="feet" <?php if ($to_unit == 'feet') {
                                  echo " selected";
                                } ?>>feet</option>
          <option value="yards" <?php if ($to_unit == 'yards') {
                                  echo " selected";
                                } ?>>yards</option>
          <option value="miles" <?php if ($to_unit == 'miles') {
                                  echo " selected";
                                } ?>>miles</option>
          <option value="millimeters" <?php if ($to_unit == 'millimeters') {
                                        echo " selected";
                                      } ?>>millimeters</option>
          <option value="centimeters" <?php if ($to_unit == 'centimeters') {
                                        echo " selected";
                                      } ?>>centimeters</option>
          <option value="meters" <?php if ($to_unit == 'meters') {
                                    echo " selected";
                                  } ?>>meters</option>
          <option value="kilometers" <?php if ($to_unit == 'kilometers') {
                                        echo " selected";
                                      } ?>>kilometers</option>
        </select>

      </div>

      <input type="submit" name="submit" value="Submit" />
    </form>

    <!-- Veri tabanından sonucları yazdırma -->
    <?php
    $cevaplar = $db->prepare("SELECT * FROM length_and_distance GROUP BY id DESC");
    $cevaplar->execute();
    $rows = $cevaplar->fetchAll(PDO::FETCH_ASSOC);
    foreach ($rows as $key => $row) {
      $key++;
      echo "on ".$row["tarih"]." "."was converted from ".$row["girilen"]." ".$row["nerden"]." "."to ".$row["sonuc"]." ".$row["nereye"]." "."by the ".$row["ip_adresi"]."<br />";
    }
     
    ?>

    <br />
    <a href="index.php">Return to menu</a>

  </div>
</body>

</html>