
export default function Pedidos(props){
    
    return (
        <tr>
            <td>{props.idpedido}</td>
            <td>{props.nome}</td>
            <td>{props.produto}</td>
            <td>{props.descricao}</td>
            <td>{props.quantidade}</td>
            <td>{props.precoFinal}</td>
        </tr>
    )


}