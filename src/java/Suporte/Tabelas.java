package Suporte;


public class Tabelas {
    public String[] Servicos(int numero) {
        String servico[][] = {
    {"1", "Bolo + Café", "Espaguete com almôndegas", "Sopa", "90"},
    {"2", "Coxinha + Coca-Cola", "Feijoada", "Pipoca", "115"},
    {"3", "Chá + Torrada", "Lasanha", "Peixe", "135"}
    };
        
        String retorno[] = 
        {servico[numero-1][1],
         servico[numero-1][2],
         servico[numero-1][3],
         servico[numero-1][4]};
        
        return retorno;
    }
}
