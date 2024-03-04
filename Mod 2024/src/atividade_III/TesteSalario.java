package atividade_III;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class TesteSalario {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		List<Funcionario> funcionarios = new ArrayList<>();

		boolean adicionarMaisFuncionarios;
		do {
			if (funcionarios.size() >= 10) {
				System.out.println("Limite m�ximo de funcion�rios (10) atingido.");
				break; // Sai do loop se o limite for atingido
			}

			System.out.println("Funcion�rio " + (funcionarios.size() + 1));
			System.out.print("Tipo (Assalariado/Horista): ");
			String tipo = scanner.nextLine();
			System.out.print("Nome: ");
			String nome = scanner.nextLine();
			System.out.print("CPF: ");
			String cpf = scanner.nextLine();
			System.out.print("Endere�o: ");
			String endereco = scanner.nextLine();
			System.out.print("Telefone: ");
			String telefone = scanner.nextLine();
			System.out.print("Setor: ");
			String setor = scanner.nextLine();

			if (tipo.equalsIgnoreCase("Assalariado")) {
				System.out.print("Sal�rio: ");
				double salario = scanner.nextDouble();
				scanner.nextLine();
				funcionarios.add(new FuncionarioAssalariado(nome, cpf, endereco, telefone, setor, salario));
			} else if (tipo.equalsIgnoreCase("Horista")) {
				System.out.print("Horas trabalhadas: ");
				double horasTrabalhadas = scanner.nextDouble();
				System.out.print("Valor da hora: ");
				double valorHora = scanner.nextDouble();
				scanner.nextLine();
				funcionarios
						.add(new FuncionarioHorista(nome, cpf, endereco, telefone, setor, horasTrabalhadas, valorHora));
			}
			System.out.print("Deseja adicionar mais funcion�rios? (S/N): ");
			String resposta = scanner.nextLine();
			adicionarMaisFuncionarios = resposta.equalsIgnoreCase("S");

		} while (adicionarMaisFuncionarios);

		System.out.println("\nDados e Pagamentos dos Funcion�rios:");
		for (Funcionario funcionario : funcionarios) {
			funcionario.mostrarDados();
			System.out.println("Pagamento: R$" + funcionario.calcularPagamento());
			System.out.println();
		}

		System.out.print("\nInforme o aumento percentual: ");
		double aumento = scanner.nextDouble();
		for (Funcionario funcionario : funcionarios) {
			funcionario.aplicarAumento(aumento);
		}

		System.out.println("\nDados e Pagamentos dos Funcion�rios ap�s aumento:");
		for (Funcionario funcionario : funcionarios) {
			funcionario.mostrarDados();
			System.out.println("Pagamento: R$" + funcionario.getSalario());
			System.out.println();
		}
	}
}
