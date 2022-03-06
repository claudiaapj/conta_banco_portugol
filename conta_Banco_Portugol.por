programa
{
	inclua biblioteca Util --> U
	inclua biblioteca Matematica --> Mat
	inclua biblioteca Texto --> T
	inteiro qnt = 0, comprimento, contas[100], conta
	real saldo = 0.0, saldos[100]
	cadeia clientes[100], cliente 
	
	
	funcao inicio()
	{
		inteiro op = 0
		
		
		
		faca{
			
			escreva("Bem vindo ao Banco WWW.Solutions! \n",
				"Temos ", qnt, " clientes cadastrados. \n" )
			escreva(" 1 - Cadastrar Cliente \n")
			escreva(" 2 - Ver Saldo \n")
			escreva(" 3 - Realizar Saque \n")
			escreva(" 4 - Realizar Depósito \n")
			escreva(" 5 - Listar Clientes \n")
			escreva(" 0 - Sair \n")
			escreva(" Escolha uma opção: ")
			leia(op)
			escolha(op){
				
			
			caso 1:
				cadastra_cliente()

				U.aguarde(3000)
				
			}
		}enquanto(op !=0)
		

		
	}
		funcao vazio cadastra_cliente(){
			cadeia confirma = " ", continuar = " ", senha
			inteiro tamanho

			para (inteiro i = 0; i < 100; i++){
				qnt++
				escreva("Digite o nome do novo(a) cliente:  ")
				leia(cliente)
				clientes[i] = cliente
				cliente = T.caixa_alta(cliente)
				escreva("Digite uma senha de 6 dígitos para o(a) cliente ", cliente, ": ")
				leia(senha)
				tamanho = conta_senha(senha)
					se(tamanho == 6){
						escreva("Senha cadastrada com sucesso! \n")
					}
					senao{
						escreva("Digite um senha com seis digitos: ")
					leia(senha)
						
					}
				
				escreva("Informe o saldo inicial do(a) cliente ", cliente, ": ")
				leia(saldo)
				saldos[i] = saldo
				escreva("Confirmar cadastro do(a) cliente ", cliente, " com saldo inicial de R$ ",
				saldo, "? \n", " (S - Sim / N - Não): ")
				leia(confirma)
				confirma = T.caixa_alta(confirma)
				se(confirma == "S"){
					 conta= U.sorteia(1,100)
					 contas[i] = conta
					 se(conta == contas[i]){
					 	conta= U.sorteia(1,100)
					 	contas[i] = conta
					 }
					
					escreva("Número da conta do(a) cliente ", cliente, " é: ", conta, "\n")
				}
				pare
			}
			}funcao inteiro conta_senha(cadeia senha){
				retorne Texto.numero_caracteres(senha)
			
			
		}funcao vazio consulta(){
			real consulta[100][[100] = 
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2089; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */