<%@page import="Suporte.Cliente" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Escolher Serviço</title>
    </head>
    <body>
        <h1>Combo de refeições</h1>
        <table border="1">
            <tr>
                <td>Número</td>
                <td>Café da manhã</td>
                <td>Almoço</td>
                <td>Jantar</td>
                <td>Valor</td>
            </tr>
            <tr>
                <td>1</td>
                <td>Bolo + Café</td>
                <td>Espaguete + Almôndegas</td>
                <td>Sopa de legumes</td>
                <td>R$ 90,00</td>
            </tr>
            <tr>
                <td>2</td>
                <td>Coxinha + Coca-cola</td>
                <td>Feijoada</td>
                <td>Pipoca</td>
                <td>R$ 115,00</td>
            </tr>
            <tr>
                <td>3</td>
                <td>Chá + Torrada</td>
                <td>Lasanha</td>
                <td>Peixe</td>
                <td>R$ 135,00</td>
            </tr>
        </table>
        
        
        <h2>Fazer pedido de refeição</h2>
        <div id="Cliente">
            <p>Acima estão as opções de refeição para pedir em nosso estabelecimento, 
                temos o combo de café da manhã, almoço e jantar. <br>
                <br><strong>Observação: Cobramos uma taxa fixa de R$ 7,00 de entrega.</strong>
                <br><br> Preencha 
                seus dados e coloque o número do combo que deseja. <br>
            </p>
            
            <form action="cadastro.jsp" method="get" target="result"> 
                Nome: <br><input type="text" name="nome"><br><br>
                Telefone: <br><input type="text" name="telefone"><br><br>
                E-mail: <br><input type="text" name="email"><br><br>
                Número do pedido: <br><input type="text" name="pedido"><br><br>
                <input type="submit" name="enviar" value="Cadastrar">             
            </form>
        </div><br>
        
        <div id="retorno">
            <iframe name="result" width="400" height="300">
            </iframe>
        </div>
        
    </body>
</html>
