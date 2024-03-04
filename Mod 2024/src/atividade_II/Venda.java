package atividade_II;

public class Venda {

	private String nomeCliente;
    private String formaPagamento;
    private PacoteViagem pacote;
    private double valorTotalDolar;
    private double valorTotalReais;

    public Venda(String nomeCliente, String formaPagamento, PacoteViagem pacote) {
        this.nomeCliente = nomeCliente;
        this.formaPagamento = formaPagamento;
        this.pacote = pacote;
        this.valorTotalDolar = pacote.getValorTotal();
    }

    public void converterParaReais(double cotacaoDolar) {
        valorTotalReais = valorTotalDolar * cotacaoDolar;
    }

    @Override
    public String toString() {
        return "Nome do Cliente: " + nomeCliente +
                "\nForma de Pagamento: " + formaPagamento +
                "\nTotal do Pacote em Dólar: $ " + valorTotalDolar +
                "\nTotal do Pacote em Reais: " + valorTotalReais;
    }
}
