<?php
$usuario=$_POST['usuario'];
$contraseña=$_POST['contraseña'];

//conexion a la base de datos esto lo vamos hacer de pede como esa organisada el servidor ok
//$ generamos dis varuables un ade condecion y la otra a consulta de la tabla
// vamos a llamar los dos variable para ajecutar
$conexion=mysqli_connect("localhost","root","","deacero");
$consulta="SELECT * FROM usuario WHERE nombre='$usuario' and llave='$contraseña'";
$resultado=mysqli_query($conexion,$consulta);
$filas=mysqli_num_rows($resultado);


if ($filas>0){
    header("location:inicio.html");
}
else {
    header("location:index.html");
}
mysqli_free_result($resultado);
mysqli_close($conexion);