package atividade_III;

abstract class Funcionario {
	private String nome;
	private String cpf;
	private String endereco;
	private String telefone;
	private String setor;
	protected double salario;

	public Funcionario(String nome, String cpf, String endereco, String telefone, String setor) {
		this.nome = nome;
		this.cpf = cpf;
		this.endereco = endereco;
		this.telefone = telefone;
		this.setor = setor;
	}

	public double getSalario() {
		return calcularPagamento();
	}

	public abstract double calcularPagamento();

	public abstract void aplicarAumento(double percentual);

	public void mostrarDados() {
		System.out.println("Nome: " + nome);
		System.out.println("CPF: " + cpf);
		System.out.println("Endereço: " + endereco);
		System.out.println("Telefone: " + telefone);
		System.out.println("Setor: " + setor);
	}

}