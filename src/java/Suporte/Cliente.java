package Suporte;

import java.util.Date;

public class Cliente {
    private String nome;
    private String telefone;
    private String email;
    private int pedido;

    public Cliente(String nome, String telefone, String email, int pedido) {
        this.nome = nome;
        this.telefone = telefone;
        this.email = email;
        this.pedido = pedido;
    }
    
    
    
    
    // Método GET
    public String getNome(){
        return nome;
    }

    public String getTelefone(){
        return telefone;
    }
    public String getEmail(){
        return email;
    }
    public int getPedido(){
        return pedido;
    }
    
    // Setter
    public void setNome(String nome){
        this.nome = nome;
    }

    public void setTelefone(String telefone){
        this.telefone = telefone;
    }
    public void setEmail(String email){
        this.email = email;
    }
    public void setPedido(int pedido){
        this.pedido = pedido;
    }
    
}
