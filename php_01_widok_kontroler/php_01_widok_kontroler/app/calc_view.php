<?php require_once dirname(__FILE__) .'/../config.php';?>
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl" lang="pl">
<head>
<meta charset="utf-8" />
<title>Kalkulator</title>
</head>
<body>

<form action="<?php print(_APP_URL);?>/app/calc.php" method="post">
	<label for="id_Kwota">Kwota: </label>
	<input id="id_Kwota" type="text" name="Kwota" value="<?php if(isset($Kwota)) {print($Kwota);} ?>" /><br />
	<label for="id_Miesiace">Miesiace: </label>
	<input id="id_Miesiace" type="text" name="Miesiace" value="<?php if(isset($Miesiace)) {print($Miesiace);} ?>" /><br />
	<label for="id_Oprocentowanie">Oprocentowanie: </label>
	<input id="id_Oprocentowanie" type="text" name="Oprocentowanie" value="<?php if(isset($Oprocentowanie)) {print($Oprocentowanie);} ?>" /><br />
	<input type="submit" value="Oblicz" />
</form>	

<?php
//wyświeltenie listy błędów, jeśli istnieją
if (isset($messages)) 
	{
	if (count ( $messages ) > 0) {
		echo '<ol style="margin: 20px; padding: 10px 10px 10px 30px; border-radius: 5px; background-color: #f88; width:300px;">';
		foreach ( $messages as $key => $msg ) {
			echo '<li>'.$msg.'</li>';
		}
		echo '</ol>';
	}
}
?>

<?php if (isset($result)){ ?>
<div style="margin: 20px; padding: 10px; border-radius: 5px; background-color: #ff0; width:300px;">
<?php echo 'Odsetki: '.$result; ?>
</div>
<?php } ?>

</body>
</html>