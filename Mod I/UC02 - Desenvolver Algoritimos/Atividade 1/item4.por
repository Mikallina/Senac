programa
{

	funcao verificarExame() {
		escreva("Seu exame está em dia? SIM ou NÃO\n")
		cadeia exame
		leia(exame)
		se (exame != "SIM") {
			escreva("Precisa fazer exame!!!\n")
		} senao {
			escreva("Aproveite a piscina\n")
		}
	}
	
	funcao inicio()
	{
		caracter opcao
		real kilo
		inteiro idade  
		
		escreva("Qual serviço deseja acessar? \n")
		escreva("L - para Lavanderia \n")
		escreva("P - para Piscina \n\n")
		
		leia(opcao)

		limpa()

		escolha (opcao)	
		{
			caso 'L':
				escreva("Você escolheu lavanderia \n") 
		 		escreva (" Qual a quantidade em kilos de Roupas que deseja lavar?\n ")
		 		leia(kilo)
		 			se(kilo >= 10){
		 					escreva("O valor será de R$ ", kilo*15)
		 				}senao se (kilo < 10) {
		 					escreva("O valor será de R$ ", kilo*20)		
		 					}
					pare   // Impede que as instruções do caso 2 sejam executadas
		 	caso 'P':
		 		escreva ("Você escolheu piscina \n") 
		 		escreva ("Qual é sua idade: ")
		 		leia(idade)
		 			se (idade >= 18){
		 					verificarExame()
		 						}senao se (idade < 18) {
		 							escreva("Você está acompanhado? SIM ou NÂO \n")
		 							cadeia acomp
		 							leia(acomp)
		 							 	se (acomp != "SIM") {
		 							 			escreva("Precisa de acompanhante")
		 							 		}senao {
		 							 			verificarExame()
		 										  }
		 						}
		 		pare   // Impede que as instruções do caso 2 sejam executadas
		 	
		}

		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 608; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */