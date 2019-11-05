<html>
<?php

include("db.php");
  $database = new mysqli($DB_HOST, $DB_USER, $DB_PASS, $DB_NAME);

  if($database->connect_errno) {
    die("No se pudo conectar a la base de datos");
  }
   
 $nombre=$_POST['nombre'];
 $apellido=$_POST['apellido'];
 $telefono=$_POST['telefono'];
 $email=$_POST['email'];
 $sql="INSERT INTO formulario (frm_nombre, frm_apellido, frm_telefono,frm_email) values ('".$nombre."','".$apellido."','".$telefono."','".$email."')";

//echo "SQL:".$sql;
if ($database->query($sql) === TRUE) {
    echo "Gracias!";
	
	ini_set( 'display_errors', 1 );
    error_reporting( E_ALL );
    $from = "info@hosting.com";
    $to = $email;
    $subject = "Registro exitoso";
    $message = "Se a registrado correctamente en ZAV";
    $headers = "From:" . $from;
    mail($to,$subject,$message, $headers);
    
} else {
    echo "Error: " . $sql . "<br>" . $database->error;
}

$database->close();
  
?>

</html>