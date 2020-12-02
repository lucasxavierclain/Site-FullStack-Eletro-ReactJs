import { Form, Button, Row } from 'react-bootstrap';
import { useState } from 'react';
export default function Formulario(props) {

    const [form, setForm] = useState({
        nome: "",
        endereco: "",
        telefone: "",
        valor: "",
        quantidade: "",
        preco_final: "",
        mensagem:""
    });

    const controleMudanca = (evento) => {
        console.log(evento.target.value)
        setForm({
            ...form,
            [evento.target.id]: evento.target.value
        })
    }

    const controleEnvio = async (evento) => {
        evento.preventDefault();
        const preco_final = parseFloat(form.valor) * parseFloat(form.quantidade);
        document.getElementById("preco_final").value = `R$ ${preco_final}`;

        setForm({
            ...form,
            preco_final: preco_final
        })
    }

    return (
        <Row>
            <div className='container container-fluid'>
                <div className="col lg-6 mx-auto">
                    <Form onSubmit={controleEnvio}>
                        <h2 className='titulo-formulario'>Pedido</h2>
                        <Form.Group>
                            <Form.Label>Nome </Form.Label>
                            <Form.Control onChange={controleMudanca}type="text" id="nome"></Form.Control>
                        </Form.Group>
                        <Form.Group>
                            <Form.Label>Endereço</Form.Label>
                            <Form.Control onChange={controleMudanca} type="text" id="endereco"></Form.Control>
                        </Form.Group>
                        <Form.Group>
                            <Form.Label>Telefone </Form.Label>
                            <Form.Control onChange={controleMudanca}type="tel" id="telefone"></Form.Control>
                        </Form.Group>
                        <Form.Group>
                            <Form.Label>Valor </Form.Label>
                            <Form.Control onChange={controleMudanca}type="number" id="valor"></Form.Control>
                        </Form.Group>
                        <Form.Group>
                            <Form.Label>Quatidade </Form.Label>
                            <Form.Control onChange={controleMudanca}type="number" id="quantidade"></Form.Control>
                        </Form.Group>
                        <Form.Group>
                            <Form.Label>Valor Final </Form.Label>
                            <Form.Control disabled type="text" id="preco_final"></Form.Control>
                        </Form.Group>
                        <Form.Group>
                            <Form.Label>Mensagem </Form.Label>
                            <Form.Control onChange={controleMudanca} as="textarea" id="mensagem" rows={3}></Form.Control>
                        </Form.Group>
                        
                        <Button variant='success' type='submit'>Enviar</Button>
                    </Form>
                    
                </div>
            </div>

        </Row>
    )


}