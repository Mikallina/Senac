programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio() 
	{
		real vetor[4], total
		
		para (inteiro posicao = 0; posicao < 4; posicao++)
		{
			escreva("Digite o valor da mesa ", posicao + 1, " - R$: ")
			real valor
			leia(valor)
			vetor[posicao] = valor
			
		}

		
		para (inteiro posicao = 0; posicao < 4; posicao++)
		{	
			
			se (vetor[posicao] < 30.99) {
				escreva("Mesa ",posicao+1 , " - Nada a pagar!")
			} senao {
				escreva("Mesa ",posicao+1 ," - Pagar total de R$ ", mat.arredondar(vetor[posicao]-30.99, 2))
			}
			escreva("\n")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 96; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */