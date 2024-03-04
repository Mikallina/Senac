package atividade_IV;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Pagamentos {

	private String nomeEmpresa;
    private List<Imposto> impostos;

    public Pagamentos(String nomeEmpresa) {
        this.nomeEmpresa = nomeEmpresa;
        this.impostos = new ArrayList<>();
    }

    public void adicionarImposto(Imposto imposto) {
        impostos.add(imposto);
    }

    public void calcularTotalImpostos() {
    	System.out.println("Empresa: " + this.nomeEmpresa);
        System.out.println("Total de impostos:");
        for (Imposto imposto : impostos) {
            System.out.println(imposto.getDescricao() + ": R$ " + imposto.calcularImposto());
        }
    }


}