<?php

    // function query($sql) {
    //     $servidor = "localhost";
    //     $usuario = "espacolucas";
    //     $senha = "123456";
    //     $banco = "fullstack";

    //     $connect = mysqli_connect($servidor, $usuario, $senha, $banco);
    //     $resultado = mysqli_query($connect, $sql);
    //     if (!$connect){
    //         die("A conexão falhou. ".mysqli_connect_error());
    //     }
    //     mysqli_close($connect);
        
    //     return $resultado;
        
    // }

    // function nonquery($sql) {
    //     $servidor = "localhost";
    //     $usuario = "root";
    //     $senha = "";
    //     $banco = "fullstack";

    //     $connect = mysqli_connect($servidor, $usuario, $senha, $banco);
    //     if (!$connect){
    //         die("A conexão falhou. ".mysqli_connect_error());
    //     }
    //     $resultado = mysqli_query($connect, $sql);
    //     mysqli_close($connect);
    // }
    
    $server="localhost";
    $username="espacolucas";
    $password="123456";
    $database="fullstack";


    $conn = mysqli_connect($server, $username, $password, $database);

    if (!$conn){
        die ("Falha na conexão com o BD " . mysqli_connect_errno());
    }
    

    

?>