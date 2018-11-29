	.data # indica para o montador a area de dado 
pergunta:	.asciiz "Qual a quantidade de pessoas que participarao do churrasco? "
mensagem_resultado:	.asciiz "A quantidade de carne em GRAMAS deve ser: "

	.text # indica inicio do codigo
main:
	la $a0, pergunta # Carrega em $a0 o endereco de memoria onde contem a mensagem a ser exibida.
	li $v0, 4 # Codigo para o sistema imprimir uma string.
	syscall # Realiza a chamada do sistema.
	
	li $v0, 5 # Codigo para o sistema ler um numero inteiro.
	syscall
	
	mul $s0, $v0, 400 # Faz o calculo da quantidade de carne para a quantidade de pessoas que vao participar do churrasco.
	
	la $a0, mensagem_resultado # Carrega em $a0 o endereco de memoria onde contem a mensagem a ser exibida.
	li $v0, 4 # Codigo para o sistema imprimir uma string.
	syscall # Realiza a chamada do sistema.
	
	add $a0, $s0, $0 # Carrega em $a0 o resultado a ser exibido.
	li $v0, 1	# Codigo para o sistema imprimir um numero inteiro.
    syscall		# Imprime o numero.
	
	jr $ra # Faz o retorno do metodo main.
