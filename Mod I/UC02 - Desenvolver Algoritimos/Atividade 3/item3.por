programa
{
	
	
	funcao inicio()
	{
	
		inteiro opcao
		cadeia op, nome[6], pesquisa


		faca {
			escreva("Cadastro de Pesquisa \n")
			escreva("1 - Cadastrar \n")
			escreva("2 - Pesquisar \n")
			escreva("3 - Sair \n")
			leia(opcao)

			escolha (opcao)	
		{
			caso 1:
				para (inteiro posicao = 0; posicao < 6; posicao++)
					{
					se (posicao >= 6 ) {
							escreva("Máximo de Cadastros atingidos \n\n")
							pare
							
						}senao
						{	escreva("Digite seu nome: \n")
							leia(nome[posicao])
						} 
						escreva("Deseja efetuar um novo cadastro? S/N: ")
							leia(op)
							se (op == "N" ou op == "n") {
								pare
						}
						
					}
					pare
			caso 2: 
				  escreva("Digite o nome para pesquisa: ")
    				  leia(pesquisa)
  				  para (inteiro posicao = 0; posicao < 6; posicao++)
   				     se (pesquisa == nome[posicao]) {
   					    escreva("Hospede: ", pesquisa, " foi encontrado na posição: ", posicao + 1, "\n")
   					    pare
       			 }senao {
       			 		escreva("Hospede não encontrado\n")
       			 		pare
       			 	}	

		}
			
						
		} enquanto(opcao != 3)

	}
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 47; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */