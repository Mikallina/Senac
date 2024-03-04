package atividade_IV;

public class Pis implements Imposto {

	private double credito;
	private double debito;

	public Pis(double credito, double debito) {
		this.credito = credito;
		this.debito = debito;
	}

	public double getCredito() {
		return credito;
	}

	public void setCredito(double credito) {
		this.credito = credito;
	}

	public double getDebito() {
		return debito;
	}

	public void setDebito(double debito) {
		this.debito = debito;
	}

	@Override
	public String getDescricao() {
		return "PIS";
	}

	@Override
	public double calcularImposto() {
	    double imposto = (debito - credito) * 0.0165;
	    if(imposto <= 0) {
	    	imposto = 0;
	    	System.out.println("Não houve PIS");
	    }
	    return Math.round(imposto * 100.0) / 100.0;
	}

}
