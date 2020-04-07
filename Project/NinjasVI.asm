;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;																		;;;;
;;;;					PROJETO DE IAC - JOGO DOS NINJAS					;;;;
;;;;						    VERSAO - INTERMEDIA 						;;;;
;;;;																		;;;;
;;;;		REALIZADO POR GRUPO 17:											;;;;
;;;;			90744 - Lucas Vicente										;;;;
;;;;	 		90774 - Ricardo Grade										;;;;
;;;;			90775 - Ricardo Fernandes									;;;;
;;;;																		;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

POUT_UM 	EQU 0A000H					;Endereco dos Displays
POUT_DOIS 	EQU 0C000H					;Endereco das Linhas do Teclado
PIN 		EQU 0E000H					;Endereco das Colunas do Teclado

; Registos reservados (universais):
; R0 = Periferico de entrada [colunas]
; R1 = Periferico de saida um [displays]
; R2 = Periferico de saida dois [linhas]

PLACE	0
start: 
	MOV 	R0, PIN 
	MOV 	R1, POUT_UM 
	MOV 	R2, POUT_DOIS
	MOV 	R3, 0
	MOV 	R4, 0
	MOV 	R5, 0 					
	MOV 	R6, 0
	MOV  	R7, 0
	MOV  	R8, 0 						;R8 e o registo que guarda o valor dos dispays em Hexadecimal
	MOV 	[R1], R6					;Coloca os displays a zero
	MOV 	R10, 0				 		;R10 e temporario
	
;*************************************************************************************
; Espera que o utilizador selecione a operacao
;*************************************************************************************
wait_for_op:
	MOV 	R3, 8					;Linha de operacoes 4
	MOVB 	[R2], R3				;Limita o utilizador a linha de operacoes
	MOVB 	R4, [R0]				;Le a coluna da tecla introduzida pelo o utilizador
	CMP 	R4, 0
	JZ 		wait_for_op	

;**************************************************************************************
; Espera que o utilizador largue a tecla da operacao
;**************************************************************************************
largar_tecla_um:
	MOV 	R10, [R0] 
	CMP 	R10, 0
	JNZ 	largar_tecla_um

;***************************************************************************************
; Converte o numero da coluna de {1,2,4,8} para {0,1,2,3}
; Conta o numero de zeros que estao a direita do 1 (valor em binario)
;***************************************************************************************
	MOV 	R10, 0
sel_op_col: 
	SHR 	R4, 1
	ADD 	R10, 1 					
	CMP 	R4, 0
	JNZ 	sel_op_col
	SUB 	R10, 1
	MOV 	R4, R10

	MOV 	R10, 0
sel_op_linha:
	SHR 	R3, 1
	ADD 	R10, 1
	CMP 	R3, 0
	JNZ 	sel_op_linha
	SUB 	R10, 1
	MOV 	R3, R10

;****************************************************************************************
; Compara tecla da operacao introduzida pelo utilizador para saber a operacao a realizar
; E ou F (neste caso 14 ou 15)
;****************************************************************************************
	MOV 	R10, 4
sel_op_um:
	MOV 	R5, 3
	MUL 	R3, R10
	ADD 	R3, R4
	MOV 	R10, 14
	CMP 	R3, R10
	JEQ 	soma
	MOV 	R10, 15
	CMP 	R3, R10
	JEQ 	subtracao

;****************************************************************************************
; Executada somente se o utlizador introduzir A ou B
; Espera que o utilizador deixe de carregar na tecla
;****************************************************************************************
largar_tecla_dois:
	MOV 	R10, [R0]
	CMP 	R10, 0
	JNZ 	largar_tecla_dois

;****************************************************************************************
	MOV 	R5, 0
	MOV 	R4, 0
	MOV 	R10, 0

;****************************************************************************************
; Le a tecla que o utilizador premiu posteriormente ao C ou ao D
;****************************************************************************************
wait_linha_um:
	MOV 	R4, 1
	MOVB 	[R2], R4				;Le a linha 1
	MOVB 	R5, [R0]				;Le a coluna da tecla introduzida pelo o utilizador
	CMP 	R5, 0	
	JNE 	sel_numero_col	
wait_linha_dois:
	MOV 	R4, 2			
	MOVB 	[R2], R4				;Le a linha 2
	MOVB 	R5, [R0]				;Le a coluna da tecla introduzida pelo o utilizador
	CMP 	R5, 0	
	JNE 	sel_numero_col
wait_linha_tres:
	MOV 	R4, 4			
	MOVB 	[R2], R4				;Le a linha 3
	MOVB 	R5, [R0]				;Le a coluna da tecla introduzida pelo o utilizador
	CMP 	R5, 0	
	JNE 	sel_numero_col
	JZ 		wait_linha_um 

;****************************************************************************************
; Converte o numero da linha e da coluna de {1,2,4,8} para {0,1,2,3}
; Conta o numero de zeros que estao a direita do 1 (valor em binario)
;****************************************************************************************
	MOV 	R10, 0
sel_numero_col:
	SHR 	R5, 1
	ADD 	R10, 1
	CMP 	R5, 0
	JNZ 	sel_numero_col
	SUB 	R10, 1
	MOV 	R5, R10
	MOV 	R10, 0
sel_numero_linha:
	SHR 	R4, 1
	ADD 	R10, 1
	CMP 	R4, 0
	JNZ 	sel_numero_linha
	SUB 	R10, 1
	MOV 	R4, R10

;****************************************************************************************
; Aplica a formula (4*Linha+Coluna)
; Atraves dos valores das linhas e das colunas calcula o valor da tecla introduzida
;****************************************************************************************
	MOV 	R10, 0
	MOV 	R10, 4
tecla_premida:
	MUL 	R4, R10
	ADD 	R5, R4

;****************************************************************************************
; Ignora a tecla introduzida se for igual a A ou B (neste caso 10 ou 11)
;****************************************************************************************
num_a_b_ignor:
	MOV 	R10, 10
	CMP 	R5, R10
	JEQ 	largar_tecla_dois
	MOV 	R10, 11
	CMP 	R5, R10
	JEQ 	largar_tecla_dois

;****************************************************************************************
; Compara tecla da operacao introduzida pelo utilizador para saber a operacao a realizar
; C ou D (neste caso 12 ou 13)
;****************************************************************************************
sel_op_dois:
	MOV 	R10, 12
	CMP 	R3, R10
	JEQ 	soma
	MOV 	R10, 13
	CMP 	R3, R10
	JEQ 	subtracao

;****************************************************************************************
; Soma 3 ou o valor introduzido pelo utilizador a R8
;****************************************************************************************
	MOV 	R10, 0
soma: 
 	ADD 	R8, R5
 	MOV 	R10, 99
	CMP 	R8, R10 					
	JLT 	convert					;Verifica se o resultado e menor que o valor maximo (99)
	MOV 	R8, R10					;Se nao atribui a R8 o valor maximo
	JMP 	convert

;****************************************************************************************
; Subtrai 3 ou o valor introduzido pelo utilizador a R8
;****************************************************************************************
subtracao:
 	SUB 	R8, R5
	MOV 	R10, 0
	CMP 	R8, R10 					
	JGT 	convert					;Verifica se o resultado e maior que o valor minimo (0)
	MOV 	R8, R10					;Se nao atribui a R8 o valor minimo
	JMP 	convert

;****************************************************************************************
; Converte o R8 em decimal, e passa-o para o Display
;****************************************************************************************
convert:
	MOV 	R10, 10
	MOV 	R5, R8
	MOV 	R6, R8
	DIV 	R6, R10
	SHL 	R6, 4
	MOD 	R5, R10
	OR 		R6, R5
	MOVB 	[R1], R6 				;Apresenta o resultado em decimal nos displays

;****************************************************************************************
; Reseta todos os registos exepto R8 e os Universais e corre novamente
;****************************************************************************************
reset:
	MOV 	R3, 0
	MOV 	R4, 0
	MOV 	R5, 0
	MOV 	R6, 0
	MOV 	R7, 0
	MOV 	R10, 0
	JMP 	wait_for_op