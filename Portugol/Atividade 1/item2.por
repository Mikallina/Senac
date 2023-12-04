programa
{
	
	funcao inicio () {
 	
	inteiro convidados, salgados = 7
	real cafe = 0.2, agua = 0.5
	
		
		escreva("Informe a quantidade de Convidados: ")
		leia(convidados)
	
		se (convidados < 30 ou convidados > 350) 
		
			escreva("Quantidade Superior ou inferior a capacidade")
			
		 senao {
				cafe = convidados * cafe
				agua = convidados * agua
				salgados = convidados * salgados
				escreva(cafe, " litro(s) de café, ", agua," litro(s) de água, ", salgados," salgadinho(s)")
			}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 495; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */