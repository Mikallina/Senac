package atividade_V;

import java.util.Scanner;
import java.util.ArrayList;
import java.util.List;

import atividade_V.Cardapio;

public class TestePizzaria {

	public static void main(String[] args) {
		int opcao;
		Pedido pedidoAtual = null;
		Scanner scan = new Scanner(System.in);
		Cardapio cardapio = new Cardapio("Pizzaria do Jo�o");
		List<Pedido> listaPedidos = new ArrayList<>();

		do {
			System.out.println("Digite sua op��o: ");
			System.out.println("1 - Cadastrar Nova Pizza");
			System.out.println("2 - Cadastrar Nova Bebida");
			System.out.println("3 - Listar Card�pio");
			System.out.println("4 - Criar pedido e mostrar dados do pedido");
			System.out.println("5 - Cadastrar Pedido para Cozinha");
			System.out.println("6 - Extrair pr�ximo pedido e ser preparado e levado ao cliente");
			System.out.println("0 - Sair");

			opcao = scan.nextInt();
			scan.nextLine();

			switch (opcao) {
			case 1:
				cadastrarPizza(cardapio, scan);
				break;
			case 2:
				cadastrarBebida(cardapio, scan);
				break;
			case 3:
				cardapio.imprimirCardapio();
				break;
			case 4:
				pedidoAtual = criarPedidoCliente(cardapio, scan, listaPedidos);
				break;
			case 5:
				if (pedidoAtual != null) {
					enviarPedidoParaCozinha(pedidoAtual);
				} else {
					System.out.println("Nenhum pedido criado. Crie um pedido primeiro.");
				}
				break;
			case 6:
				extrairProximoPedido(listaPedidos);
				break;
			case 0:
				System.out.println("Saindo...");
				break;
			default:
				System.out.println("Op��o inv�lida!");
				break;
			}
		} while (opcao != 0);

	}

	private static void cadastrarPizza(Cardapio cardapio, Scanner scan) {
		System.out.println("Digite o nome da Pizza: ");
		String nomePizza = scan.nextLine();
		System.out.println("Digite o tamanho da Pizza (em cm): ");
		double tamanhoPizza = scan.nextDouble();
		System.out.println("Digite o pre�o da Pizza: ");
		double precoPizza = scan.nextDouble();
		System.out.println("A pizza � doce? (true/false): ");
		boolean tipoPizza = scan.nextBoolean();
		scan.nextLine();

		ArrayList<String> ingredientes = new ArrayList<>();
		System.out.println("Digite os ingredientes da Pizza (digite 'fim' para finalizar): ");
		String ingrediente = scan.nextLine();
		while (!ingrediente.equals("fim")) {
			ingredientes.add(ingrediente);
			ingrediente = scan.nextLine();
		}

		Pizza pizza = new Pizza(nomePizza, tamanhoPizza, precoPizza, tipoPizza, ingredientes);
		cardapio.adicionarPizza(pizza);
		System.out.println("Pizza cadastrada com sucesso!");
		System.out.println("Nome da pizza cadastrada: " + pizza.getNomePizza());

	}

	private static void cadastrarBebida(Cardapio cardapio, Scanner scan) {
		System.out.println("Digite o nome da Bebida: ");
		String nomeBebida = scan.nextLine();
		System.out.println("Digite a quantidade de bebida em ml ");
		double quantidadeBebida = scan.nextDouble();
		System.out.println("Digite o pre�o da Bebida: ");
		double precoBebida = scan.nextDouble();

		Bebida bebida = new Bebida(nomeBebida, quantidadeBebida, precoBebida);
		cardapio.adicionarBebida(bebida);
		System.out.println("Bebida Cadastrada com Sucesso: " + bebida.getNomeBebida());
		scan.nextLine();

	}

	private static Pedido criarPedidoCliente(Cardapio cardapio, Scanner scan, List<Pedido> listaPedidos) {
		System.out.println("\nCria��o de Novo Pedido:");
		System.out.print("Digite o n�mero da Mesa: ");
		int numeroMesa = scan.nextInt();
		scan.nextLine();

		Pedido pedido = new Pedido(numeroMesa);
		char continuar;
		String op;
		do {
			System.out.println("\nAdicionar Pizza ao Pedido:");
			System.out.println("Pizzas Dispon�veis:");
			cardapio.imprimirCardapioPizza();
			System.out.print("Digite o nome da Pizza desejada: ");
			String nomePizza = scan.nextLine();
			Pizza pizzaSelecionada = null;
			for (Pizza pizza : cardapio.getPizzas()) {
				if (pizza.getNomePizza().equalsIgnoreCase(nomePizza)) {
					pizzaSelecionada = pizza;
					break;
				}
			}
			if (pizzaSelecionada != null) {
				pedido.adicionarPizza(pizzaSelecionada);
				System.out.println("Pizza adicionada ao pedido com sucesso!");
			} else {
				System.out.println("Pizza n�o encontrada no card�pio.");
			}

			System.out.print("\nDeseja adicionar mais pizza ao pedido? (s/n): ");
			continuar = scan.nextLine().charAt(0);
		} while (continuar == 's');

		do {
			System.out.println("\nDeseja adicionar bebida ao pedido S/N ? ");
			op = scan.nextLine();
			if (op.equalsIgnoreCase("s")) {
				System.out.println("Bebidas Dispon�veis:");
				cardapio.imprimirCardapioBebida();
				System.out.print("Digite o nome da Bebida desejada: ");
				String nomeBebida = scan.nextLine();
				Bebida bebidaSelecionada = null;
				for (Bebida bebida : cardapio.getBebidas()) {
					if (bebida.getNomeBebida().equalsIgnoreCase(nomeBebida)) {
						bebidaSelecionada = bebida;
						break;
					}
				}
				if (bebidaSelecionada != null) {
					pedido.adicionarBebida(bebidaSelecionada);
					System.out.println("Bebida adicionada ao pedido com sucesso!");
				} else {
					System.out.println("Bebida n�o encontrada no card�pio.");
				}
			} else if (op.equalsIgnoreCase("n")) {
				pedido.imprimirPedido();
				System.out.println("Total do Pedido R$: " + pedido.calcularTotal());
			} else {
				System.out.println("Op��o inv�lida! Por favor, insira 'S' para Sim ou 'N' para N�o.");
			}
		} while (!op.equalsIgnoreCase("n"));
		listaPedidos.add(pedido);
		return pedido;
	}

	private static void enviarPedidoParaCozinha(Pedido pedido) {
		System.out.println("\nPedido enviado para a cozinha:");
		System.out.println("N�mero da Mesa: " + pedido.getNumeroMesa());
		System.out.println("Pizzas Solicitadas:");
		for (Pizza pizza : pedido.getPizzas()) {
			System.out.println("- " + pizza.getNomePizza() + " (Tamanho: " + pizza.getTamanhoPizza() + "cm, Pre�o: R$"
					+ pizza.getPrecoPizza() + ")");
		}
	}

	private static void extrairProximoPedido(List<Pedido> listaPedidos) {
		if (!listaPedidos.isEmpty()) {
			Pedido proximoPedido = null;
			int menorNumeroMesa = Integer.MAX_VALUE;

			for (Pedido pedido : listaPedidos) {
				if (pedido.getNumeroMesa() < menorNumeroMesa) {
					menorNumeroMesa = pedido.getNumeroMesa();
					proximoPedido = pedido;
				}
			}

			if (proximoPedido != null) {
				System.out.println("Pr�ximo pedido a ser preparado: Mesa " + proximoPedido.getNumeroMesa());

			} else {
				System.out.println("N�o h� pedidos pendentes.");
			}
		} else {
			System.out.println("N�o h� pedidos pendentes.");
		}

	}
}
