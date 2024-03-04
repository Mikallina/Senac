package atividade_I;

import java.util.Scanner;

public class Exercicio5 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        boolean[][] quartosOcupados = new boolean[4][3];

        do {
            registrarOcupacao(quartosOcupados);
            System.out.print("Deseja informar outra ocupação? (S/N): ");
        } while (scanner.next().equalsIgnoreCase("S"));

        System.out.println("\nTabela de Ocupação do Hotel:");
        mostrarTabela(quartosOcupados);
        scanner.close();
    }

    private static void registrarOcupacao(boolean[][] quartosOcupados) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("\nInforme Andar e Quarto:");
        int andar = scanner.nextInt();
        int numeroQuarto = scanner.nextInt();

        if (andar >= 1 && andar <= 4 && numeroQuarto >= 1 && numeroQuarto <= 3) {
            quartosOcupados[andar - 1][numeroQuarto - 1] = true;
            System.out.println("Quarto ocupado com sucesso!");
        } else {
            System.out.println("Andar ou número do quarto inválido. Tente novamente.");
        }
        scanner.close();
    }
    private static void mostrarTabela(boolean[][] quartosOcupados) {
        for (int andar = 0; andar < 4; andar++) {
            System.out.print( (andar + 1)+ "º Andar: ");
            for (int numeroQuarto = 0; numeroQuarto < 3; numeroQuarto++) {
                System.out.println("");
                if (quartosOcupados[andar][numeroQuarto]) {
                    System.out.print(" - Quarto: "+(numeroQuarto+1)+" Ocupado" );
                } else {
                    System.out.print(" - Quarto: "+(numeroQuarto+1)+" Desocupado" );;
                }
            }
            System.out.println();
            
        }
        
    }
}
