programa
{
	funcao inicio()
	{
		inteiro dias
		real diaria
		
		faca
		{
			escreva ("Qual o valor da diária: ")
			leia (diaria)
			escreva("Quantas diárias: ")
			leia(dias)

			se (diaria <= 0  ou dias > 30 ou dias <= 0) {
					escreva("Valor inválido \n")
				}senao {
						escreva("Valor total da hospedagem é R$ ", diaria*dias)
					}
			
				
		}
		enquanto (diaria <= 0  ou dias > 30 ou dias <= 0)
		
		escreva ("\nFim do Programa!\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 407; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */