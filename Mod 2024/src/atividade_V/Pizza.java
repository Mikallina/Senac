package atividade_V;

import java.util.ArrayList;

public class Pizza {

	private String nomePizza;
	private double tamanhoPizza;
	private double precoPizza;
	private boolean tipoPizza;
	private ArrayList<String> ingredientesPizza;

	public Pizza(String nomePizza, double tamanhoPizza, double precoPizza, boolean tipoPizza,
			ArrayList<String> ingredientesPizza) {
		this.nomePizza = nomePizza;
		this.tamanhoPizza = tamanhoPizza;
		this.precoPizza = precoPizza;
		this.tipoPizza = tipoPizza;
		this.ingredientesPizza = ingredientesPizza;
	}

	public String getNomePizza() {
		return nomePizza;
	}

	public void setNomePizza(String nomePizza) {
		this.nomePizza = nomePizza;
	}

	public double getTamanhoPizza() {
		return tamanhoPizza;
	}

	public void setTamanhoPizza(double tamanhoPizza) {
		this.tamanhoPizza = tamanhoPizza;
	}

	public double getPrecoPizza() {
		return precoPizza;
	}

	public void setPrecoPizza(double precoPizza) {
		this.precoPizza = precoPizza;
	}

	public boolean isTipoPizza() {
		return tipoPizza;
	}

	public void setTipoPizza(boolean tipoPizza) {
		this.tipoPizza = tipoPizza;
	}

	public ArrayList<String> getIngredientesPizza() {
		return ingredientesPizza;
	}

	public void setIngredientesPizza(ArrayList<String> ingredientesPizza) {
		this.ingredientesPizza = ingredientesPizza;
	}

	public void imprimirDadosPizza() {
		System.out.println("Nome da pizza: " + nomePizza);
		System.out.println("Tamanho da Pizza: " + tamanhoPizza +"cm");
		System.out.println("Preço da Pizza: " + precoPizza);
		System.out.println("Tipo da Pizza: " + tipoPizza);

		System.out.println("Ingredientes:");
		for (String ingrediente : ingredientesPizza) {
			System.out.println("- " + ingrediente);
		}
	}

}
