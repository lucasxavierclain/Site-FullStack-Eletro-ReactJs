import { Form, Button, Row } from 'react-bootstrap';
import { useState, useEffect } from 'react';
import Pedidos from '../../Componentes/Pedidos/Pedidos'
export default function Formulario() {



    const [pedidos, setPedidos] = useState([])

    const envioPedido = async (evento) => {
         
        const url = "http://localhost/Projeto/bd/php/cadastro-produtos.php";
        const dados = new FormData(evento.target);
        const cabecalho = {
            method: "POST",
            body: dados
        };

        const resposta = await fetch(url, cabecalho);
        const resultado = await resposta.json();
        console.log(resultado);

    }

    useEffect(() => {
        async function atualizarPedido() {
            const url = "http://localhost/Projeto/bd/php/cadastro-produtos.php";
            const resposta = await fetch(url);
            const resultado = await resposta.json();
            setPedidos(resultado);
            console.log(resultado)
        }

        atualizarPedido();
    }, [])
    return (
        <Row>
            <div className='container container-fluid formulario'>
                <div className="col lg-6 mx-auto">
                    <Form onSubmit={envioPedido} >
                        <h2 className='titulo-formulario'>Pedido</h2>
                        <Form.Group>
                            <Form.Label>Nome </Form.Label>
                            <Form.Control type="text" id="nome" name="nome"></Form.Control>
                        </Form.Group>
                        <Form.Group>
                            <Form.Label>E-mail</Form.Label>
                            <Form.Control type="email" id="email" name="email"></Form.Control>
                        </Form.Group>
                        <Form.Group>
                            <Form.Label>Telefone</Form.Label>
                            <Form.Control type="number" id="telefone" name="telefone"></Form.Control>
                        </Form.Group>
                        <Form.Group >
                            <Form.Label>Produto</Form.Label>
                            <Form.Control id='produto' name="produto" as="select">
                                <option value='1 '>Celular V8</option>
                                <option value='2' >Celular Samsung A23</option>
                                <option value='3'>Iphone11</option>
                                <option value='4'>Geladeira Consul</option>
                                <option value='5'>Geladeira Electrolux</option>
                                <option value='6'>Geladeira Electrolux Inox</option>
                                <option value='7'>TV LG</option>
                                <option value='8'>TV Philco</option>
                                <option value='9'>TV Samsung</option>
                                <option value='10'>Máquina de lavar Consul</option>
                                <option value='11'>Microondas Electrolux</option>
                                <option value='12'>Microondas Ret</option>


                            </Form.Control>
                        </Form.Group>
                        <Form.Group>
                            <Form.Label>Quatidade </Form.Label>
                            <Form.Control type="number" id="quantidade" name="quantidade"></Form.Control>
                        </Form.Group>
                        

                        <Button variant='success' type='submit'>Enviar</Button>
                    </Form>

                </div>
                <div className="row">
                    <table className="table table-striped mt-4 text-center">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Nome</th>
                                <th scope="col">Produto</th>
                                <th scope="col">Descrição</th>
                                <th scope="col">Quantidade</th>
                                <th scope="col">Preço</th>
                            </tr>
                        </thead>
                        <tbody>
                            {pedidos && pedidos.map(pedido => <Pedidos idpedido={pedido.idpedido} nome={pedido.nome} produto={pedido.produto} descricao={pedido.descricao} quantidade={pedido.quantidade} precoFinal={pedido.quantidade * pedido.preco}/>)}
                        </tbody>
                    </table>
                </div>
            </div>

        </Row>
    )


}