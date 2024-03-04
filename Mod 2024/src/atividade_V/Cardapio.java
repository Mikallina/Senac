package atividade_V;

import java.util.ArrayList;

public class Cardapio {

	private String nomePizzaria;
	private ArrayList<Pizza> pizzas;
	private ArrayList<Bebida> bebidas;

	public Cardapio(String nomePizzaria) {
		this.nomePizzaria = nomePizzaria;
		this.pizzas = new ArrayList<>();
		this.bebidas = new ArrayList<>();
	}

	public String getNomePizzaria() {
		return nomePizzaria;
	}

	public void setNomePizzaria(String nomePizzaria) {
		this.nomePizzaria = nomePizzaria;
	}

	public ArrayList<Bebida> getBebidas() {
		return bebidas;
	}

	public void setBebidas(ArrayList<Bebida> bebidas) {
		this.bebidas = bebidas;
	}

	public void setPizzas(ArrayList<Pizza> pizzas) {
		this.pizzas = pizzas;
	}

	public void adicionarPizza(Pizza pizza) {
		pizzas.add(pizza);
	}

	public void adicionarBebida(Bebida bebida) {
		bebidas.add(bebida);
	}

	public void imprimirCardapioPizza() {
		System.out.println("--- " + nomePizzaria + " ---\n");
		System.out.println("Pizzas:");
		for (Pizza pizza : pizzas) {
			System.out.println("-------------");
			pizza.imprimirDadosPizza();
		}
	}

	public void imprimirCardapioBebida() {
		System.out.println("\nBebidas:");
		for (Bebida bebida : bebidas) {
			System.out.println("-------------");
			bebida.imprimirBebida();
		}
	}

	public void imprimirCardapio() {
		System.out.println("--- " + nomePizzaria + " ---\n");
		System.out.println("Pizzas:");
		for (Pizza pizza : pizzas) {
			System.out.println("-------------");
			pizza.imprimirDadosPizza();

			System.out.println("\nBebidas:");
			for (Bebida bebida : bebidas) {
				System.out.println("-------------");
				bebida.imprimirBebida();
			}
		}
	}

	public ArrayList<Pizza> getPizzas() {
		return pizzas;
	}
}
