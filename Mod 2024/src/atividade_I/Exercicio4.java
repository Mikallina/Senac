package atividade_I;

import java.util.Scanner;

public class Exercicio4 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String[] hospedes = new String[15];
        int totalCadastros = 0;

        while (true) {
            System.out.println("\nMenu:");
            System.out.println("1 - Cadastrar \n2 - Pesquisar \n3 - Sair");

            int opcao = scanner.nextInt();
            scanner.nextLine();

            switch (opcao) {
                case 1:
                    if (totalCadastros < hospedes.length) {
                        System.out.print("Digite o nome do hóspede: ");
                        String nome = scanner.nextLine();
                        cadastrarHospede(hospedes, totalCadastros, nome);
                        //hospedes[totalCadastros] = scanner.nextLine();
                        totalCadastros++;
                        System.out.println("Hóspede cadastrado com sucesso!");
                    } else {
                        System.out.println("Máximo de cadastros atingido!");
                    }
                    break;

                case 2:
                    System.out.print("Digite o nome a ser pesquisado: ");
                    String nomePesquisa = scanner.nextLine();
                    int indiceEncontrado = pesquisarHospede(hospedes, totalCadastros, nomePesquisa);
                    if (indiceEncontrado != -1) {
                        System.out.println("Hóspede " + hospedes[indiceEncontrado] +
                                " foi encontrado no índice " + indiceEncontrado);
                    } else {
                        System.out.println("Hóspede não encontrado.");
                    }
                    break;

                case 3:
                    System.out.println("Encerrando o programa.");
                    System.exit(0);

                default:
                    System.out.println("Opção inválida. Tente novamente.");
                    break;
            }
        }
    }
    

    private static void cadastrarHospede(String[] hospedes, int indice, String nome) {
        hospedes[indice] = nome;
    }

    private static int pesquisarHospede(String[] hospedes, int totalCadastros, String nomePesquisa) {
        for (int i = 0; i < totalCadastros; i++) {
            if (hospedes[i].equalsIgnoreCase(nomePesquisa)) {
                return i;
            }
        }
        return -1;
        
       
        
    }
}