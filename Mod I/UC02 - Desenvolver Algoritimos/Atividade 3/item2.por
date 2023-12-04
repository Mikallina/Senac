programa
{
	funcao inicio() 
	{
		cadeia livreOcupado, cont, quartos[10]
		
		
		para (inteiro posicao = 0; posicao < 10; posicao++)
		{
			quartos[posicao] = "L"
		}
		
		para (inteiro posicao = 0; posicao < 10; posicao++)
		{
			escreva("Digite o numero do quarto ", posicao + 1, ": ")
			inteiro numeroQuarto
			leia(numeroQuarto)
			
			escreva("O quarto está livre ou ocupado? (L/O): ")
			leia(livreOcupado)
			

			se (livreOcupado == "L") {
				se (quartos[numeroQuarto - 1] == "L") {
					escreva("Quarto ", numeroQuarto, " já está vazio\n")
				} senao {
					escreva("Quarto ", numeroQuarto, " foi liberado\n")
					quartos[numeroQuarto - 1] = "L"
				}
			} senao se (livreOcupado == "O") {
				se (quartos[numeroQuarto - 1] == "O") {
					escreva("Quarto ", numeroQuarto, " já está ocupado\n")
				} senao {
					escreva("Quarto ", numeroQuarto, " foi ocupado\n")
					quartos[numeroQuarto - 1] = "O"
				}
			} senao {
				escreva("Opção inválida. Use L para livre ou O para ocupado.\n")
			}

			escreva("Deseja continuar? (S/N): ")
			leia(cont)

			se (cont == "N") {
				pare 
			}
		}
		
		
		para (inteiro posicao = 0; posicao < 10; posicao++)
		{
			escreva(posicao + 1, "-", quartos[posicao], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 418; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */