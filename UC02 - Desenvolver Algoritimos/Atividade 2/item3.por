programa 
{
	funcao inicio() 
	{
		real valorDiaria
		inteiro idade
		cadeia nome, continuar
		
		real total = 0.0
		inteiro gratuidades = 0, meiasHospedagens = 0
		
		escreva("Informe o valor padrão da diária: ")
		leia(valorDiaria)
		limpa()
		
		enquanto (verdadeiro) 
		{
			escreva("Informe o nome do hóspede: ")
			leia(nome)
			escreva("Informe a idade do hóspede: ")
			leia(idade)
			
			se (idade <= 4) 
			{
				escreva(nome,  " possui gratuidade\n")
				gratuidades = gratuidades + 1
			}
			senao se (idade >= 80)
			{
				escreva(nome, " paga meia\n")
				meiasHospedagens = meiasHospedagens + 1
				total = total + (valorDiaria / 2)
			}
			senao
			{
				escreva(nome, " paga o valor integral\n")
				total = total + valorDiaria
			}
			
			escreva("Deseja continuar? (S/N): ")
			leia(continuar)
			se (continuar == "N" ou continuar == "n")
			{
				pare
			}
			limpa()
		}
		
		escreva("\nQuantidade de gratuidades: ", gratuidades)
		escreva("\nQuantidade de meias hospedagens: ", meiasHospedagens)
		escreva("\nValor total arrecadado: R$ ", total)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 688; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */