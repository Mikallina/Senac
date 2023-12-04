programa
{
	
	funcao inicio()
	{
		inteiro cadeiras, convidados 
	
		escreva("Digite a quantidade de Convidados para o evento: ")
		leia(convidados)		

		se (convidados > 0 e convidados <= 150) 
		
			escreva("Utilize o auditório Alfa")
			 
		 senao se (convidados >= 150 e convidados <= 220) {
		 		cadeiras = convidados - 150
				escreva("Utilize o Auditório Beta")
				escreva("\n")
				escreva("Inclua mais ", cadeiras, " cadeiras")
			}		
			 senao se (convidados > 220 e convidados <= 350){
		 		escreva("Utilize o auditório Beta")
			 	}
			 	senao {
			 			escreva("Número de Convidados inválidos")
			 	}
		
		
	} 
	
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 270; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */