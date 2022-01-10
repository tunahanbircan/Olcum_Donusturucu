<?php

include("includes/ayarlar.php");
require_once('includes/functions.php');

$from_value = '';
$from_unit = '';
$to_unit = '';
$to_value = '';

if (isset($_POST['submit'])) {
  $from_value = $_POST['from_value'];
  $from_unit = $_POST['from_unit'];
  $to_unit = $_POST['to_unit'];

  //Bugünün tarihini aldık
  $tarih = date("Y-m-d");
  //Kullanıcı ip adresi çekme-localhost sisteminde çalıştığımız için ip adresi "1" olarak gözükecektir ama canlı sitede kullanıcının ip adresi olucaktır.
  $ip_adresi = $_SERVER['REMOTE_ADDR'];
  $to_value = convert_mass($from_value, $from_unit, $to_unit);
  $result = float_to_string($to_value);

  //veritabanına kaydetme işlemi
  $islem = $db->prepare("INSERT INTO mass(girilen,nerden,sonuc,nereye,ip_adresi,tarih) Values (?,?,?,?,?,?)");
  $islemekle = $islem->execute(array($from_value, $from_unit, $result, $to_unit, $ip_adresi, $tarih));
}

$mass_options = array(
  "ounces",
  "pounds",
  "stones",
  "long tons",
  "short tons",
  "milligrams",
  "grams",
  "kilograms",
  "metric tonnes"
);

?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>Convert Mass</title>
  <link href="styles.css" rel="stylesheet" type="text/css">
</head>

<body>

  <div id="main-content">

    <h1>Convert Mass</h1>

    <form action="" method="post">

      <div class="entry">
        <label>From:</label>&nbsp;
        <input type="text" name="from_value" value="<?php echo $from_value; ?>" />&nbsp;
        <select name="from_unit">
          <?php
          foreach ($mass_options as $unit) {
            $opt = optionize($unit);
            echo "<option value=\"{$opt}\"";
            if ($from_unit == $opt) {
              echo " selected";
            }
            echo ">{$unit}</option>";
          }
          ?>
        </select>
      </div>

      <div class="entry">
        <label>To:</label>&nbsp;
        <input type="text" name="to_value" value="<?php echo float_to_string($to_value); ?>" />&nbsp;
        <select name="to_unit">
          <?php
          foreach ($mass_options as $unit) {
            $opt = optionize($unit);
            echo "<option value=\"{$opt}\"";
            if ($to_unit == $opt) {
              echo " selected";
            }
            echo ">{$unit}</option>";
          }
          ?>
        </select>

      </div>

      <input type="submit" name="submit" value="Submit" />
    </form>
    <!-- Veri tabanından sonucları yazdırma -->
    <?php
    $cevaplar = $db->prepare("SELECT * FROM mass GROUP BY id DESC");
    $cevaplar->execute();
    $rows = $cevaplar->fetchAll(PDO::FETCH_ASSOC);
    foreach ($rows as $key => $row) {
      $key++;
      echo "on " . $row["tarih"] . " " . "was converted from " . $row["girilen"] . " " . $row["nerden"] . " " . "to " . $row["sonuc"] . " " . $row["nereye"] . " " . "by the " . $row["ip_adresi"] . "<br />";
    }

    ?>
    <br />
    <a href="index.php">Return to menu</a>

  </div>
</body>

</html>