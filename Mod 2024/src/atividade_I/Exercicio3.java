package atividade_I;

import java.util.Scanner;

public class Exercicio3 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        String op, nome;
        int idade;
        double diaria, totalDiaria = 0;
        int gratuidades = 0, meiasHospedagens = 0;

        System.out.println("Digite o valor da diaria");
        diaria = scan.nextDouble();
        scan.nextLine();

        op = "";

        while (!"PARE".equalsIgnoreCase(op)) {
            System.out.println("Digite o nome do hospede (ou 'PARE' para encerrar)");
            nome = scan.nextLine();

            if ("PARE".equalsIgnoreCase(nome)) {
                op = "PARE";
                continue;
            }

            System.out.println("Digite a idade do hospede");
            idade = scan.nextInt();
            scan.nextLine();

            double valorDiaria;
            if (idade < 4) {
                valorDiaria = 0;
                System.out.println(nome + " possui gratuidade");
                gratuidades++;
            } else if (idade > 80) {
                valorDiaria = diaria / 2;
                System.out.println(nome + " paga meia");
                meiasHospedagens++;
            } else {
                valorDiaria = diaria;
            }
            totalDiaria += valorDiaria;
        }

        System.out.println("Quantidade de gratuidades: " + gratuidades);
        System.out.println("Quantidade de meias hospedagens: " + meiasHospedagens);
        System.out.println("Valor total das diárias: " + totalDiaria);
        
        scan.close();

    }
}