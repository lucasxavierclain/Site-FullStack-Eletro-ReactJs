import { useState, useEffect } from 'react';
import { Container, Row } from 'react-bootstrap'
import Produto from '../../Componentes/Produto' 
function Produtos() {
    const [produtos, setProdutos] = useState([]);
    useEffect(async () => {
        const resposta = await fetch("http://localhost/Projeto/bd/php/produtos.php")
        const dados = await resposta.json()
        console.log(resposta)

        setProdutos(dados);
    
    },[]);

    return (
        <Container>
            <Row>
                
                {produtos && produtos.map(item => <Produto imagem={item.nomeImagem} categoria={item.categoria} nome={item.descricao} precoAnterio={item.precoAnterio} precoFinal={item.preco}/>)}
            </Row>
        </Container>
        
    )
}
export default Produtos