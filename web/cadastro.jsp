<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Suporte.Cliente" %>
<%@page import="Suporte.Tabelas" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        
        
        <% 
            try{
        
        String nome, telefone, email, pedido;
        int n_pedido;
        
        //Capturar
        nome = request.getParameter("nome");
        telefone = request.getParameter("telefone");
        email = request.getParameter("email");
        pedido = request.getParameter("pedido");
        
        n_pedido = Integer.parseInt(pedido);
        
        if (n_pedido > 3){
            out.println("Não temos esse combo. Por favor escolha um que tenha na tabela acima");
        }
        else{
        
        // Inserir
        List<Cliente> c = new ArrayList<Cliente>();
        
        c.add(new Cliente(nome, telefone, email, n_pedido));
        
        for (Cliente cliente : c){
            out.println("------ COMPROVANTE ------- <br><br>");
            out.println("Nome: " + cliente.getNome() + "<br>");
            out.println("E-mail: " + cliente.getEmail()+ "<br>");
            out.println("Telefone: " + cliente.getTelefone()+ "<br>");
            out.println("Número do pedido: " + cliente.getPedido()+ "<br>");
            
            String retorno[] = new Tabelas().Servicos(cliente.getPedido());
            
            out.println("<br> ----- SEU PEDIDO ------ <br>");
            out.println("Café da manhã: " + retorno[0] + "<br>");
            out.println("Almoço: " + retorno[1] + "<br>");
            out.println("Jantar: " + retorno[2] + "<br>");
            out.println("<br> VALOR COMBO: R$" + retorno[3] + "<br>");
            int valorfinal = Integer.parseInt(retorno[3]) + 7;
            out.println("<br> VALOR FINAL: R$" + valorfinal + "<br>");
            
        }   }   
            }catch (Exception e) {
                out.print("O seguinte erro foi encontrado: " + e.getMessage());
            }
        
        %>
    </body>
</html>
