<?php
// apertura php 

    session_start();
    //inicio sesion, permite levantar(carga datos guardados) un perfil de usuario
    $User=$_POST['User'];
    //asignacion, recibo por el metodo post lo enviado por el login
    $Pass=$_POST['Pass'];




    $consulta= "SELECT*FROM usuarios WHERE User='$User' AND Pass='$Pass'";//una instruccion SQL SELECT para obtener datos de la tabla 'usuario' donde 'usuario'

    $conexion=mysqli_connect('localhost','root','','base_sigeflex'); //establece una conexion a una base de datos MySQL ubicada en 'localhost' usando 'root' como n
    $result=mysqli_query($conexion,$consulta);//ejecuta la instruccion $consulta en la conexion de base de datos establecida y asigna el resualtado a la variable
    $cant_filas=mysqli_num_rows($result); //devuelve el numero de filas en el conjunto de datos de $resultado

    if($cant_filas>0){//Una declaracion if que verifica si el numero de filas en el conjunto de datos $result es mayor que 0
        //si el resultado en mayor que 0, obtiene cada fila de datos usando mysqli_fetch_array y establece los valores de la fila en las variables de sesion correspondiente
        while($row=mysqli_fetch_array($result)){
            $_SESSION['dni']=$row['DNI'];
            $_SESSION['nom']=$row['Nombre'];
            $_SESSION['ap']=$row['Apellido'];
            $_SESSION['direccion']=$row['Direccion'];
            $_SESSION['user']=$row['User'];
            //redirige a 'principal.php' si el resultado es mayor que 0
            
        }
        header('location:principal.php');
    }else{
        //si el resultado no es mayor que 0, se muestra un mensaje de eeror usando javascript alert() y se redirige a 'login.php'.
        echo '<script language="javascript">
        alert("NOMBRE DE USUARIO O CONTRASEÑA INCORRECTO");
        location.href="login.php";
        </script>';
    }
?>