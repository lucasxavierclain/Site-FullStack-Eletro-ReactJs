<?php
    /* Aqui tem retorno */
    function query($sql) {
        $servidor = "localhost";
        $usuario = "espacolucas";
        $senha = "123456";
        $banco = "fullstack";

        $connect = mysqli_connect($servidor, $usuario, $senha, $banco);
        $resultado = mysqli_query($connect, $sql);
        if (!$connect){
            die ("Falha na conexão com o BD " . mysqli_connect_errno());
        }
        mysqli_close($connect);
        return $resultado;
    }
    
    /* Aqui não tem retorno */
    function nonquery($sql) {
        $servidor = "localhost";
        $usuario = "espacolucas";
        $senha = "123456";
        $banco = "fullstack";

        $connect = mysqli_connect($servidor, $usuario, $senha, $banco);
        $resultado = mysqli_query($connect, $sql);
        if (!$connect){
            die ("Falha na conexão com o BD " . mysqli_connect_errno());
        }
        mysqli_close($connect);
    }