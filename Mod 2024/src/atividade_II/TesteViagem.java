package atividade_II;

import java.util.Scanner;

public class TesteViagem {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		
      
        System.out.println("Cadastro de Pacote de Viagem:");
        System.out.print("Informe o tipo de transporte (aéreo, rodoviário, marítimo, etc.): ");
        String tipoTransporte = scanner.nextLine();
        System.out.print("Informe o valor do transporte (em dólar): ");
        double valorTransporte = scanner.nextDouble();
        System.out.print("Informe o valor da diária da hospedagem (em dólar): ");
        double valorDiaria = scanner.nextDouble();
        System.out.print("Informe o destino: ");
        scanner.nextLine(); 
        String destino = scanner.nextLine();
        System.out.print("Informe a quantidade de dias de hospedagem: ");
        int quantidadeDias = scanner.nextInt();

        Transporte transporte = new Transporte(tipoTransporte, valorTransporte);
        PacoteViagem pacote = new PacoteViagem(transporte, valorDiaria, destino, quantidadeDias, valorTransporte);

     
        System.out.print("Informe a margem de lucro (em %): ");
        double margemLucro = scanner.nextDouble();
        pacote.calcularTotal(margemLucro);
        System.out.println("Pacote de Viagem: ");
        System.out.println(pacote.toString()); 

       
        scanner.nextLine(); 
        System.out.println("\nCadastro de Venda:");
        System.out.print("Informe o nome do cliente: ");
        String nomeCliente = scanner.nextLine();
        System.out.print("Informe a forma de pagamento: ");
        String formaPagamento = scanner.nextLine();
        System.out.print("Informe a cotação do dólar: ");
        double cotacaoDolar = scanner.nextDouble();

        Venda venda = new Venda(nomeCliente, formaPagamento, pacote);

       
        venda.converterParaReais(cotacaoDolar);

      
        System.out.println("\nInformações da Venda:");
        System.out.println(venda);

        scanner.close();
    }
}
