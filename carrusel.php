<?php
include("db.php");
  $database = new mysqli($DB_HOST, $DB_USER, $DB_PASS, $DB_NAME);

  if($database->connect_errno) {
    die("No se pudo conectar a la base de datos");
  }
  
  $jsondata = array();
 
 
if ( $result = $database->query( "SELECT * FROM imagenes") ) { 
  
if( $result->num_rows > 0 ) {
    $jsondata["success"] = true;
    $jsondata["message"] = sprintf("Se han encontrado %d imagenes", $result->num_rows);
    $jsondata["data"]["images"] = array();
	while( $row = $result->fetch_object() ) {
       //$jsondata["data"]["users"][] es un array no asociativo. Tendremos que utilizar JSON_FORCE_OBJECT en json_enconde
       //si no queremos recibir un array en lugar de un objeto JSON en la respuesta
     
       $jsondata["data"]["images"][] = $row;
	 //  echo $row."</br>";
     }	

$result->close();
} else {
     $jsondata["success"] = false;
     $jsondata["data"] = array(
       'message' => 'No se encontró ningún resultado.'
     );
}

  header('Content-type: application/json; charset=utf-8');
  echo json_encode($jsondata, JSON_FORCE_OBJECT);
 
  $database->close();
}
  
exit();  



?>