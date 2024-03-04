package atividade_V;

public class Bebida {
	
	private String nomeBebida;
	private double quantidadeBebida;
	private double precoBebida;
	
	
	
	public Bebida(String nomeBebida, double quantidadeBebida, double precoBebida) {
		this.nomeBebida = nomeBebida;
		this.quantidadeBebida = quantidadeBebida;
		this.precoBebida = precoBebida;
	}
	public String getNomeBebida() {
		return nomeBebida;
	}
	public void setNomeBebida(String nomeBebida) {
		this.nomeBebida = nomeBebida;
	}
	public double getQuantidadeBebida() {
		return quantidadeBebida;
	}
	public void setQuantidadeBebida(double quantidadeBebida) {
		this.quantidadeBebida = quantidadeBebida;
	}
	public double getPrecoBebida() {
		return precoBebida;
	}
	public void setPrecoBebida(double precoBebida) {
		this.precoBebida = precoBebida;
	}
	
	public void imprimirBebida() {
		System.out.println("Nome da Bebida: " + nomeBebida 
						+ "\nQuantidade de Bebida: " + quantidadeBebida +"ml"
						+ "\nPreço da Bebida: "	+ precoBebida);
	}
	
	
}
