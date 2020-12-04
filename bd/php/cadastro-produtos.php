
<?php

header("Access-Control-Allow-Origin:*");

require_once 'connect.php';

if($_SERVER['REQUEST_METHOD'] === 'GET'){

    
        
        $sql = "SELECT * FROM pedido 
        JOIN produtos ON pedido.idprodutos = produtos.idprodutos
        ;";
        $resultado = query($sql);
        $pedidos = [];

        while($linha = mysqli_fetch_assoc($resultado)){
            $pedidos[] = $linha;
        }

        echo json_encode($pedidos);

    }

else if($_SERVER['REQUEST_METHOD'] === 'POST') {

    $nome    = $_POST['nome'];
    $email = $_POST['email'];
    $telefone = $_POST['telefone'];
    $produto=$_POST['produto'];
    $quantidade=$_POST['quantidade'];
   
    
    $pedido= "INSERT INTO pedido  VALUES (null,null, '$produto','$quantidade','$nome', '$email', '$telefone');";
    
    nonquery($pedido);

    echo json_encode(array("msg" => "Método POST Efetuado"));

} else if($_SERVER['REQUEST_METHOD'] === 'PUT'){

    echo json_encode(array("msg" => "Método PUT Efetuado"));

} else if($_SERVER['REQUEST_METHOD'] === 'DELETE'){

    echo json_encode(array("msg" => "Método DELETE Efetuado"));

} else {

    echo "Falha no processamento dos dados. Método inválido.";

}