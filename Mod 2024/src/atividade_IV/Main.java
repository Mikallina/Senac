package atividade_IV;

import java.util.Scanner;

public class Main {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

		System.out.print("Informe o nome da empresa: ");
		String nomeEmpresa = scanner.nextLine();
		Pagamentos pagamentos = new Pagamentos(nomeEmpresa);

		while (true) {
			System.out.print("Informe o tipo de imposto (PIS ou IPI) ou 'pare' para encerrar: ");
			String tipoImposto = scanner.nextLine();

			if (tipoImposto.equalsIgnoreCase("pare")) {
				break;
			}

			if (tipoImposto.equalsIgnoreCase("PIS")) {
				System.out.print("Informe o valor total de d�bito: ");
				double debito = scanner.nextDouble();
				System.out.print("Informe o valor total de cr�dito: ");
				double credito = scanner.nextDouble();
				scanner.nextLine();
				pagamentos.adicionarImposto(new Pis(debito, credito));
			} else if (tipoImposto.equalsIgnoreCase("IPI")) {
				System.out.print("Informe o valor do produto: ");
				double valorProduto = scanner.nextDouble();
				System.out.print("Informe o valor do frete: ");
				double frete = scanner.nextDouble();
				System.out.print("Informe o valor do seguro: ");
				double seguro = scanner.nextDouble();
				System.out.print("Informe o valor de outras despesas: ");
				double outrasDespesas = scanner.nextDouble();
				System.out.print("Informe a al�quota do IPI: ");
				double aliquota = scanner.nextDouble();
				scanner.nextLine();
				pagamentos.adicionarImposto(new Ipi(valorProduto, frete, seguro, outrasDespesas, aliquota));
			} else {
				System.out.println("Tipo de imposto inv�lido!");
			}
		}
		
		pagamentos.calcularTotalImpostos();
		scanner.close();
	}
}