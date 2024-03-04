package atividade_I;

import java.util.Scanner;

public class Exercicio2 {
    public static void main(String[] args) {

        Scanner scan = new Scanner(System.in);
        String nomeA, nomeB;
        int idadeA, idadeB;
        

        System.out.println("Digite o nome da primeira pessoa");
        nomeA = scan.nextLine();
        System.out.println("Digite a idade da primeira pessoa");
        idadeA = scan.nextInt();
        scan.nextLine();
        System.out.println("Digite o nome da segunda pessoa");
        nomeB = scan.nextLine();
        System.out.println("Digite a idade da segunda pessoa");
        idadeB = scan.nextInt();
        scan.nextLine();

        if (idadeA < idadeB && idadeA < 60 && idadeB<60) {
            System.out.println("Quarto A: " + nomeB + " Quarto B: " + nomeA);
        } else if (idadeA >= 60)
            System.out.println("Quarto A: " + nomeA + " com desconto de 40%;  Quarto B:" + nomeB);
        if (idadeB < idadeA && idadeB < 60 && idadeA<60) {
            System.out.println("Quarto A: " + nomeA + " Quarto B: " + nomeB);
        } else if (idadeB >= 60)
            System.out.println("Quarto A: " + nomeB + " com desconto de 40%;  Quarto B:" + nomeA);
        
        scan.close();

    }
    
}




