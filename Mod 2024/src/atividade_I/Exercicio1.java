package atividade_I;

import java.util.Scanner;

public class Exercicio1 {

    public static void main(String[] args) {

            Scanner scan = new Scanner(System.in);
            int cadeira, convidados;

            System.out.println("Digite a quantidade de convidados");
            convidados = scan.nextInt();

        if (convidados > 0 && convidados <=150){
            System.out.println("Use o audit Alfa");
        } else if (convidados>=150 && convidados<=220) {
            cadeira = convidados - 150;
            System.out.println("Use o auditório Beta");
            System.out.println("\n");
            System.out.println("Inclua mais " + cadeira + " cadeiras");
        } else if (convidados>220 && convidados<= 350) {
            System.out.println("Use o auditório Beta");

        }else {
            System.out.println("Número de Convidados inválidos");
        }
        
        scan.close();
    }
}
