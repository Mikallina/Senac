package atividade_II;

public class PacoteViagem {

	 private Transporte transporte;
	    private double valorDiaria;
	    private String destino;
	    private int quantidadeDias;
	    private double valorTotal;

	    public PacoteViagem(Transporte transporte, double valorDiaria, String destino, int quantidadeDias,
			double valorTotal) {
			this.transporte = transporte;
			this.valorDiaria = valorDiaria;
			this.destino = destino;
			this.quantidadeDias = quantidadeDias;
			this.valorTotal = valorTotal;
		}

	    public double getValorTotal() {
	        return valorTotal;
	    }
	  
	    public void calcularTotal(double margemLucro) {
	        double valorHospedagem = calcularTotal(quantidadeDias);
	        double valorTransporte = transporte.getValor();
	        double valorLucro = (valorHospedagem + valorTransporte) * (margemLucro / 100.0);
	        valorTotal = valorHospedagem + valorTransporte + valorLucro;
	    }
	    
	    public double calcularTotal(int quantidadeDias) {
	        return valorDiaria * quantidadeDias;
	    }

		@Override
		public String toString() {
			return "Valor da Diária em dólar: $" + valorDiaria 
					+ "\nDestino: " + destino
					+ "\nQuantida de Dias: " + quantidadeDias
					+ "\nValor Transporte: " + transporte.getValor()
					+ "\nValor Total em dólar: " + valorTotal ;
					
		}
	    
	    
}
