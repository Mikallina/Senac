package atividade_II;

public class Transporte {

	private String tipo;
    private double valor;

    public Transporte(String tipo, double valor) {
        this.tipo = tipo;
        this.valor = valor;
    }

    public String getTipo() {
		return tipo;
	}

    public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public double getValor() {
        return valor;
    }
}
