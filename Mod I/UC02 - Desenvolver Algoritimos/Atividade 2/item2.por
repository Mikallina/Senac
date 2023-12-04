
programa 
{
	funcao inicio() 
	{
		inteiro numero, contador, quarto
		real diaria, resultado = 0.0, maiorDiaria = 0.0, menorDiaria = 0.0
		
		escreva("Informe a quantidade de Hospedes: ")
		leia(numero)

		limpa()
		
		para (contador = 1; contador <= numero; contador++) 
		{
			escreva("Qual o numero do Quarto: \n")
			leia(quarto)
			escreva("Qual o valor da diária: \n")
			leia(diaria)
			escreva("Quarto: ",quarto,": R$ ", diaria, "\n")
			resultado = resultado + diaria

			se (contador == 1 ou diaria < menorDiaria) 
			{
				menorDiaria = diaria
			}
			
			senao
			{
				maiorDiaria = diaria
			}
			
			
		}
			escreva ("Total de diarias: R$ ", resultado, "\n")
			escreva ("Menor diária R$ ", menorDiaria, "\n")
			escreva ("Maior diária R$ ", maiorDiaria, "\n")
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 573; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */