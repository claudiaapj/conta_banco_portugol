programa
{
	inclua biblioteca Util --> U
	inclua biblioteca Matematica --> Mat
	inclua biblioteca Texto --> T
	inteiro qnt = 0, comprimento = 0, contas[100], conta = 0
	inteiro pos = -1
	real saldo = 0.0, saldos[100], valor = 0.0
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
				escreva("\n Aguarde...")
				U.aguarde(1500)
			pare
			caso 2:
				inteiro cod
				escreva("Digite o número da conta: ")
				leia(cod)
				busca_cliente(cod)
				se(contas[pos] ==cod){
					para (inteiro i = 0; i < cod; i++){
						escreva("Conta: ",cod, "\nSaldo: ", saldos[pos], "\n")
						pare
					}	
					}senao{
						escreva("Conta não cadastrada!") 
						pare
				}
				escreva("\n Aguarde...")
				U.aguarde(5000)
			pare
			caso 3:
			
			pare
				
			}
		}enquanto(op !=0)

	}
		funcao vazio cadastra_cliente(){
			cadeia continuar =" ",confirma = " ", senha
			inteiro tam_senha = 0

			para (inteiro i = 0; i < 100; i++){
				qnt++
				escreva("Digite o nome do novo(a) cliente: ")
				leia(cliente)
				clientes[i] = cliente
				cliente = T.caixa_alta(cliente)
				escreva("Digite uma senha de 6 dígitos para o(a) cliente ", cliente, ": ")
				leia(senha)
				 tam_senha = T.numero_caracteres(senha)
					se(tam_senha == 6){
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
					 conta= U.sorteia(1,1000)
					 contas[i] = conta
					 se(conta == contas[i]){
					 	conta= U.sorteia(1,1000)
					 	contas[i] = conta
					 }
					escreva("Número da conta do(a) cliente ", cliente, " é: ", conta, "\n")
					escreva("Deseja cadastrar novo cliente? " )
					leia(confirma)
					confirma = T.caixa_alta(confirma)
						 se(confirma == "N"){
					pare
				 }	
			}
			}
		} funcao  inteiro busca_cliente(inteiro cod){
		
			para(inteiro i = 0; i < cod; i++){
			se(contas[i] == cod){
			    pos = i
				pare // para o comando de repetição já que encontrou a conta
			}
		}
		retorne pos
}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2763; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */