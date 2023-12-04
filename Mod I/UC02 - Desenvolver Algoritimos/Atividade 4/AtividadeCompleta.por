programa
{

		inteiro opcao, qdtDias[10],  indiceHospede = 0
		real academia = 20.00, salao = 50.00, restaurante = 35.00, diaria = 100.00, totalDiarias
		cadeia op, pesquisa,nome[10], cpf[10]
		caracter opcaoLazer

	funcao menu() {
			
			escreva("1 - Cadastrar Hospedes \n")
			escreva("2 - Exibir Hospedes Cadastrados\n")
			escreva("3 - Reservar Área de Lazer \n")
			escreva("4 - Calcular total a a pagar \n")
			escreva("0 - Sair \n")
				
		}

	funcao cadastro() {
   
    
    enquanto (indiceHospede < 10) {
        escreva("Digite seu nome: ")
        leia(nome[indiceHospede])
        escreva("Digite seu cpf: ")
        leia(cpf[indiceHospede])
        escreva("Digite quantidade de dias: ")
        leia(qdtDias[indiceHospede])

        escreva("Índice: ", indiceHospede, "\n")
        escreva("Nome: ", nome[indiceHospede], "\n")
        escreva("CPF: ", cpf[indiceHospede], "\n")
        escreva("Quantidade de dias: ", qdtDias[indiceHospede], "\n")

        escreva("Confirma as informações? S/N: ")
        leia(op)
        se (op == "S" ou op == "s") {
            escreva("Cadastro realizado com Sucesso \n\n")
            indiceHospede = indiceHospede + 1
            se (indiceHospede == 10) {
                escreva("Limite de cadastros atingido\n\n")
                pare
            }
            pare
        } 

        
    }
}
	funcao exibirHospedes() {
   
       	 para (indiceHospede = 0; indiceHospede < 10; indiceHospede++) {
            se (nome[indiceHospede] != "") {
                escreva("Índice: " + indiceHospede + "\n" + "Nome: " + nome[indiceHospede] + " CPF: " + cpf[indiceHospede] + "\n" + "Quantidade de Dias: " + qdtDias[indiceHospede] + "\n \n")
                pare
            }
        }
    }

    funcao areaLazer() {
    
    
    exibirHospedes()
    escreva("Digite o índice do hospede: ")
    leia(indiceHospede)
    escreva("Escolha o Lazer Abaixo A/S/R: \n")
    escreva("A - Academia \n")
    escreva("S - Salão de Festa\n")
    escreva("R - Restaurante \n")
    leia(opcaoLazer)
		se (opcaoLazer == 'A')
		{
			escreva("A Opção academia foi adicionada no seu valor\n")
			totalDiarias = qdtDias[indiceHospede] * diaria + academia
			}senao se (opcaoLazer == 'S')
			{
				escreva("A opção Salão foi adicionado no seu valor \n")
				totalDiarias = qdtDias[indiceHospede] * diaria + salao
				}senao se(opcaoLazer == 'R') {
						escreva("Opção restaurante foi adicionado em sua conta\n")
						totalDiarias = qdtDias[indiceHospede] * diaria + restaurante
					}senao {
							escreva("Opção inválida")
						}
    }

    funcao exibirTotal() {
    faca {
        
        escreva("Digite o índice do hospede: ")
        leia(indiceHospede)

        se (indiceHospede < 0 ou indiceHospede >= 10 ou nome[indiceHospede] == "") {
            escreva("Índice inválido ou hóspede não existe\n")
            pare
        } senao {
            escreva("Hospede: ", nome[indiceHospede], " teve um gasto Total de R$ ", totalDiarias, "\n")
            pare
        }
    } enquanto (falso)  
}

	funcao inicio()
	{
	
		

		faca {

			menu()
			leia(opcao)
			escolha (opcao)
			
		{
			caso 1: cadastro() pare
				
			caso 2: exibirHospedes() pare
				 
       		caso 3: areaLazer()	pare

       		caso 4: exibirTotal()pare

		}
			
						
		} enquanto(opcao != 0) 

	}

		
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2906; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */