package atividade_III;

class FuncionarioAssalariado extends Funcionario {

	private double salario;

	public FuncionarioAssalariado(String nome, String cpf, String endereco, String telefone, String setor,
			double salario) {
		super(nome, cpf, endereco, telefone, setor);
		this.salario = salario;
	}

	public double getSalario() {
		return salario;
	}

	public void setSalario(double salario) {
		this.salario = salario;
	}

	@Override
	public void aplicarAumento(double percentual) {
		double aumento = this.salario * (percentual / 100);
		this.salario += aumento;
	}

	@Override
	public double calcularPagamento() {
		return salario;
	}

}
