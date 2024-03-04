package atividade_V;

import java.util.ArrayList;

public class Pedido {
	private int numeroMesa;
	private ArrayList<Pizza> pizzas;
	private ArrayList<Bebida> bebidas;

	public Pedido(int numeroMesa) {
		this.numeroMesa = numeroMesa;
		this.pizzas = new ArrayList<>();
		this.bebidas = new ArrayList<>();
	}

	public int getNumeroMesa() {
		return numeroMesa;
	}

	public ArrayList<Pizza> getPizzas() {
		return pizzas;
	}

	public ArrayList<Bebida> getBebidas() {
		return bebidas;
	}

	public void imprimirPedido() {
		System.out.println("Seu pedido: " );
	}

	public double calcularTotal() {
		double totalPizza = 0, totalBebida = 0;

		for (Pizza pizza : pizzas) {
			totalPizza += pizza.getPrecoPizza();
		}

		for (Bebida bebida : bebidas) {
			totalBebida += bebida.getPrecoBebida();
		}
		System.out.println("Total de Pizza: R$ " + totalPizza + "\nTotal de Bebida: R$ " + totalBebida);

		return totalPizza + totalBebida;
	}

	public void adicionarPizza(Pizza pizza) {
		pizzas.add(pizza);
	}

	public void adicionarBebida(Bebida bebida) {
		bebidas.add(bebida);
	}

}
