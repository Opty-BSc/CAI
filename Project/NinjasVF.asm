;CONSTANTES
POUT1 				EQU 	0A000H 		; Endereco do POUT1
POUT2 				EQU 	0C000H 		; Endereco do POUT2
PIN 				EQU 	0E000H 		; Endereco do PIN
SCREEN				EQU 	8000H 		; Endereco do PixelScreen
FIM_SCREEN 			EQU 	8080H 		; Fim do endereco do PixelScreen
ON 					EQU 	11H 		; Simboliza 'ON'
OFF 				EQU 	00H 		; Simboliza 'OFF'
N_NINJAS			EQU 	4 			; Numero de ninjas no programa
N_SHURIKENS 		EQU 	2 			; Numero de shurikens no programa
SEM_TECLA 			EQU 	16 			; Valor atribuido quando nao houve tecla premida
TECLA_FIM_SOBE 		EQU 	3 			; Ultima tecla da primeira linha do teclado
TECLA_FIM_DESCE 	EQU 	7			; Ultima tecla da segunda linha do teclado
N_CICLOS_FLASH 		EQU 	500 		; Numero de ciclos que faz para dar flash ao desenho
N_BITS_BYTE 		EQU 	8 			; Numero de bits que ha num byte
N_BYTES_LINHA 		EQU 	4 			; Numero de bytes em cada linha
N_BYTES_SCREEN 		EQU 	80H 		; Quantidade de bytes no ecra
TECLA_C 			EQU 	12 			; Valor no teclado da tecla 'c'
TECLA_D 			EQU 	13 			; Valor no teclado da tecla 'd'
TECLA_E 			EQU 	14 			; Valor no teclado da tecla 'e'
N_TECLAS_LINHA 		EQU 	4 			; Quantidade de teclas por linha de teclado
RANDOM_ESTADOS_LIM 	EQU 	6 			; Limite do random de estados
RANDOM_METADE1_LIM 	EQU 	20 			; Limite defenido para o random da primeira metade do ecra
RANDOM_METADE2_LIM 	EQU 	30	 		; " " " " da segunda metade do ecra
N_COLUNAS_SCREEN 	EQU 	32 			; Numero de colunas do PixelScreen
N_LINHAS_SCREEN 	EQU 	32

PLACE 	2000H

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 											;;
;; 			DESENHOS PARA O ECRA 			;;
;;											;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
desenho_end:
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	0FH, 24H, 5CH, 00H
	STRING 	08H, 56H, 0D0H, 00H
	STRING 	0BH, 55H, 58H, 00H
	STRING  09H, 74H, 50H, 00H
	STRING 	0FH, 54H, 5CH, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 1EH, 0AEH, 0C0H
	STRING  00H, 12H, 0A8H, 0A0H
	STRING 	00H, 12H, 0ACH, 0C0H
	STRING 	00H, 12H, 0A8H, 0A0H
	STRING  00H, 1EH, 4EH, 0A0H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	14H, 4DH, 0D9H, 0F0H
	STRING 	16H, 51H, 14H, 40H
	STRING 	15H, 49H, 98H, 40H
	STRING 	14H, 0C5H, 14H, 40H
	STRING 	14H, 59H, 0D4H, 40H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 77H, 0A9H, 00H
	STRING 	00H, 84H, 0ADH, 00H
	STRING 	00H, 84H, 0ABH, 00H
	STRING 	00H, 77H, 0A9H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H

desenho_end_flash:
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	0FH, 24H, 5CH, 00H
	STRING 	08H, 56H, 0D0H, 00H
	STRING 	0BH, 55H, 58H, 00H
	STRING  09H, 74H, 50H, 00H
	STRING 	0FH, 54H, 5CH, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 1EH, 0AEH, 0C0H
	STRING  00H, 12H, 0A8H, 0A0H
	STRING 	00H, 12H, 0ACH, 0C0H
	STRING 	00H, 12H, 0A8H, 0A0H
	STRING  00H, 1EH, 4EH, 0A0H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H

desenho_start:
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	1DH, 0F3H, 9EH, 7CH
	STRING 	20H, 44H, 51H, 10H
	STRING 	20H, 44H, 51H, 10H
	STRING  20H, 44H, 51H, 10H
	STRING  1CH, 44H, 5EH, 10H
	STRING 	02H, 47H, 0D1H, 10H
	STRING  02H, 44H, 51H, 10H
	STRING  02H, 44H, 51H, 10H
	STRING 	1CH, 44H, 51H, 10H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	0EH, 77H, 1CH, 0C0H
	STRING 	09H, 44H, 0A1H, 20H
	STRING 	09H, 64H, 0A1H, 0E0H
	STRING 	0EH, 47H, 21H, 20H
	STRING 	08H, 74H, 1DH, 20H
	STRING 	00H, 00H, 00H, 00H
	STRING 	02H, 54H, 93H, 00H
	STRING 	03H, 56H, 84H, 80H
	STRING 	02H, 0D5H, 97H, 80H
	STRING 	02H, 54H, 0B4H, 80H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	19H, 9CH, 0CCH, 38H
	STRING 	15H, 51H, 10H, 40H
	STRING  19H, 98H, 88H, 40H
	STRING 	11H, 50H, 44H, 40H
	STRING 	11H, 5DH, 98H, 38H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H

desenho_start_flash:
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	1DH, 0F3H, 9EH, 7CH
	STRING 	20H, 44H, 51H, 10H
	STRING 	20H, 44H, 51H, 10H
	STRING  20H, 44H, 51H, 10H
	STRING  1CH, 44H, 5EH, 10H
	STRING 	02H, 47H, 0D1H, 10H
	STRING  02H, 44H, 51H, 10H
	STRING  02H, 44H, 51H, 10H
	STRING 	1CH, 44H, 51H, 10H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	0EH, 77H, 1CH, 0C0H
	STRING 	09H, 44H, 0A1H, 20H
	STRING 	09H, 64H, 0A1H, 0E0H
	STRING 	0EH, 47H, 21H, 20H
	STRING 	08H, 74H, 1DH, 20H
	STRING 	00H, 00H, 00H, 00H
	STRING 	02H, 54H, 93H, 00H
	STRING 	03H, 56H, 84H, 80H
	STRING 	02H, 0D5H, 97H, 80H
	STRING 	02H, 54H, 0B4H, 80H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H
	STRING 	00H, 00H, 00H, 00H



memory_pontuacao: 	STRING 	00H

clean_byte: 		STRING 	00H

mascaras: 			STRING 	80H, 40H, 20H, 10H, 08H, 04H, 02H, 01H

mascara_teclado: 	STRING 	0FH

pos_all:
	pos_ninjas:
		pos_ninja1: 		STRING 	15, 0 		; Ninja 1 - Posicao (L,C)
		pos_ninja2: 		STRING 	15, 4  		; Ninja 2 - Posicao (L,C)
		pos_ninja3: 		STRING 	15, 8 		; Ninja 3 - Posicao (L,C)
		pos_ninja4: 		STRING 	15, 12 		; Ninja 4 - Posicao (L,C)
	pos_shurikens:
		pos_shuriken1: 		STRING 	10, 28 		; Shuriken 1 - Posicao (L,C)
		pos_shuriken2: 		STRING 	10, 28 		; Shuriken 2 - Posicao (L,C)
	pos_presente: 			STRING 	20, 28 		; Presente - Posicao (L,C)

state_all:
	state_ninjas:
		state_ninja1: 		STRING 	ON		; Ninja 1 - Estado ON/OFF
		state_ninja2: 		STRING 	ON		; Ninja 2 - Estado ON/OFF
		state_ninja3: 		STRING 	ON		; Ninja 3 - Estado ON/OFF
		state_ninja4: 		STRING 	ON		; Ninja 4 - Estado ON/OFF
	state_shurikens:
		state_shuriken1: 	STRING 	ON		; Shuriken 1 - Estado ON/OFF
		state_shuriken2: 	STRING 	OFF		; Shuriken 2 - Estado ON/OFF
	state_presente: 		STRING	ON		; Presente - Estado ON/OFF

; DESENHOS DOS OBJETOS:

; Tamanho do ninja geral (L,C)
ninja_tamanho: 		STRING 4, 3
; Desenho do ninja geral
ninja:				STRING 0, 1, 0
					STRING 1, 1, 1
					STRING 0, 1, 0
					STRING 1, 0, 1
; Desenho do ninja geral apagado
ninja_vazio:		STRING 0, 0, 0
					STRING 0, 0, 0
					STRING 0, 0, 0
					STRING 0, 0, 0

; Tamanho do shuriken geral (L,C)
shuriken_tamanho: 	STRING 4, 4
; Desenho do shuriken geral
shuriken:			STRING 1, 0, 1, 1
					STRING 1, 1, 1, 0
					STRING 0, 1, 1, 1
					STRING 1, 1, 0, 1
shuriken_rotate:	STRING 1, 1, 0, 1
					STRING 0, 1, 1, 1
					STRING 1, 1, 1, 0
					STRING 1, 0, 1, 1
; Desenho do ninja geral apagado
shuriken_vazio:		STRING 0, 0, 0, 0
					STRING 0, 0, 0, 0
					STRING 0, 0, 0, 0
					STRING 0, 0, 0, 0

; Tamanho do presente (L,C)
presente_tamanho: 	STRING 4, 4
; Desenho do presente
presente:			STRING 0, 1, 1, 1
					STRING 1, 1, 1, 0
					STRING 1, 1, 1, 0
					STRING 0, 1, 1, 1
; Desenho do presente apagado
presente_vazio:		STRING 0, 0, 0, 0
					STRING 0, 0, 0, 0
					STRING 0, 0, 0, 0
					STRING 0, 0, 0, 0

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 											;;
;; 		INTERRUPCOES E STACK_POINTER 		;;
;;											;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Interrupacao 0 - 'CALL' int0
int:	WORD 	int0
		WORD 	int1
; Estado da interrupcao (ON/OFF)
state_int0: 	STRING 	OFF
state_int1: 	STRING 	OFF

; Reservado 200 enderecos para o stack pointer
TABLE 	200H 		
stack_pointer:

PLACE 0

inicializacoes:
	MOV 	SP, stack_pointer		; Inicializacao do stack pointer
	MOV 	BTE, int 				; " do endereco das interrupcoes
	MOV 	R6, 0 					; " do random de estados
	MOV 	R7, 0 					; " do random da posicao da primeira metade do ecra
	MOV 	R8, 0 					; " " " " " da segunda metade do ecra
	MOV 	R0, POUT1
	MOV 	R10, 0
	MOVB 	[R0], R10

main:
	CALL 	wait_c_key
	CALL 	desenha_ninjas
	EI0
	EI1
	EI

	ciclo_main:
		CALL 	atualiza_randoms
		CALL 	combinacoes
		CALL 	forca_vertical
		CALL 	forca_horizontal
		CALL 	colapsos_ninjas
		CALL 	limites
		CALL 	teclado
		CALL 	player_input
		CALL 	pausa
		CALL 	end
		JMP 	ciclo_main

fim:	JMP 	fim

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																			;;
;;																			;;
;; 			 						ROTINAS		 							;;
;;																			;;
;;																			;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																	  ;;
;; 			 			   ROTINAS DE 6º GRAU		 				  ;;
;;																	  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		COLAPSOS_NINJAS: 										;;
;;			Descricao: Seleciona o ninja a testar colisao 		;;
;;			INPUTS:												;;
;;				NO INPUTS										;;
;;			OUTPUTS: 											;;
;; 				NO OUTPUTS				 						;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
colapsos_ninjas:
	PUSH 	R0
	PUSH 	R1
	PUSH 	R2
	PUSH 	R6
	PUSH 	R7

	MOV 	R7, OFF
	MOV 	R0, pos_ninjas
	MOV 	R1, 1
	MOV 	R2, state_ninjas
	ninja_hit:
		MOVB 	R6, [R2]
		CMP 	R6, R7
		JEQ 	colapso_next_ninja
		CALL 	colapsos_projeteis
		colapso_next_ninja:
			ADD 	R0, 2
			ADD 	R1, 1
			ADD 	R2, 1
			CMP 	R1, N_NINJAS
			JLE 	ninja_hit

ret_colapsos_ninjas:
	POP 	R7
	POP 	R6
	POP 	R2
	POP 	R1
	POP 	R0
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																	  ;;
;; 			 			   ROTINAS DE 5º GRAU		 				  ;;
;;																	  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		COLAPSOS_PROJETEIS:										;;
;;			Descricao: Seleciona o projetil a testar colisao 	;;
;;			INPUTS: NO INPUTS									;;
;;			OUTPUTS: NO OUTPUTS									;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
colapsos_projeteis:
	PUSH 	R8
	PUSH 	R3
	PUSH 	R4
	PUSH 	R6
	PUSH 	R7

	MOV 	R7, OFF
	MOV 	R8, 1
	MOV 	R3, pos_shurikens
	MOV 	R4, state_shurikens
	shurikens_hit:
		MOVB 	R6, [R4]
		CMP 	R6, R7
		JEQ 	colapso_next_shuriken
		CALL 	verify_colapsos
		colapso_next_shuriken:
			ADD 	R8, 1
			ADD 	R3, 2
			ADD 	R4, 1
			CMP 	R8, N_SHURIKENS
			JLE 	shurikens_hit

	MOV 	R3, pos_presente
	MOV 	R4, state_presente
	presente_hit:
		MOVB 	R6, [R4]
		CMP 	R6, R7
		JEQ 	ret_colapsos_projeteis
		CALL 	verify_colapsos

ret_colapsos_projeteis:
	POP 	R7
	POP 	R6
	POP 	R4
	POP 	R3
	POP 	R8
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		PLAYER_INPUT:											;;
;;			Descricao: Verifica input do jogador 				;;
;;			INPUTS:  											;;
;; 				R4 - Valor da tecla introduzida 				::
;;			OUTPUTS: (IN SCREEN) 								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
player_input:
	PUSH 	R0
	PUSH 	R1
	PUSH 	R4
	PUSH 	R10

	MOV 	R10, SEM_TECLA
	CMP  	R4, R10 			; Verifica se houve tecla introduzida (R4 = 16 -> Nao houve tecla)
	JGE 	ret_input
	MOV 	R10, TECLA_FIM_SOBE
	CMP 	R4, R10
	JLE 	sobe_ninja
	MOV 	R10, TECLA_FIM_DESCE
	CMP 	R4, R10
	JLE 	desce_ninja
	JMP 	ret_input

	sobe_ninja:
		MOV 	R1, R4
		ADD 	R1, 1
		MOV 	R0, 1
		CALL 	mexe_ninja
		JMP 	ret_input
	desce_ninja:
		MOV 	R1, R4
		SUB  	R1, 3
		MOV 	R0, 1
		NEG 	R0
		CALL 	mexe_ninja

ret_input:
	POP 	R10
	POP 	R4
	POP 	R1
	POP 	R0
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		FORCA_VERTICAL:											;;
;;			Descricao: Atua a gravidade sobre os ninjas			;;
;;			INPUTS: NO INPUTS 									;;
;;			OUTPUTS: NO OUTPUTS 								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
forca_vertical:
	PUSH 	R0
	PUSH 	R1
	PUSH 	R2
	PUSH 	R3
	PUSH	R4
	PUSH 	R5
	PUSH 	R10

	MOV 	R5, OFF
	MOV 	R1, state_int0
	MOVB 	R2, [R1]
	CMP 	R2, R5 					; Verifica se a interrupcao 0 esta ativa
	JEQ 	ret_forca_vertical 		; Se nao estiver - nao faz nada
	MOVB 	[R1], R5 				; Se estiver - Desativa a interrupcao e faz a rotina

	MOV 	R0, 1
	NEG 	R0 						; INPUT R0 (Sobe/Desce) - Desce (-1)
	MOV 	R1, 1 					; INPUT R1 (Ninja a desenhar) - 1º Ninja
	MOV 	R2, state_ninjas
	MOV 	R3, pos_ninjas
	ciclo_forca_vertical:
		MOVB 	R4, [R2]
		CMP 	R4, R5 				; Verifica se o ninja esta 'morto'
		JEQ 	forca_next_ninja 	; Se estiver - passa para o prox. ninja
		CALL 	mexe_ninja
		forca_next_ninja:
			ADD 	R1, 1 			; INPUT R1 (Ninja a desenhar) - Prox. Ninja
			ADD 	R2, 1
			ADD 	R3, 2
			MOV 	R10, N_NINJAS 	; Verifica se ainda ha mais ninjas
			CMP 	R1, R10
			JLE 	ciclo_forca_vertical

ret_forca_vertical:
	POP 	R10
	POP 	R5
	POP 	R4
	POP 	R3
	POP 	R2
	POP 	R1
	POP 	R0
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                                              ;;
;;      FORCA_HORIZONTAL:                                       ;;
;;          Descricao: Forca que atua sobre os projeteis        ;;
;;          INPUTS: NO INPUTS                                   ;;
;;          OUTPUTS: NO OUTPUTS                                 ;;
;;                                                              ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
forca_horizontal:
    PUSH    R0
    PUSH    R1
    PUSH    R2
    PUSH    R3
    PUSH    R9
    PUSH    R10
 
    MOV     R2, OFF
    MOV     R1, state_int1
    MOVB    R0, [R1]
    CMP     R0, R2                      ; Verifica se a interrupcao 1 esta ativa
    JEQ     ret_forca_horizontal        ; Se nao estiver - nao faz nada
    MOVB    [R1], R2                    ; Se estiver - Desativa a interrupcao e faz a rotina
 
    MOV     R0, state_shurikens
    MOV     R1, 1                       ; R1 - representa o n shuriken, inicializado a 1 (shuriken1)
    MOV     R3, pos_shurikens
    ADD     R3, 1                       ; Acede às colunas do shuriken
    forca_shuriken:
        MOVB    R10, [R0]
        CMP     R10, R2                 ; Verifica se o shuriken está "morto"
        JEQ     forca_next_shuriken     ; Se estiver - passa para o prox. shuriken
        CALL    remove_shuriken
        MOVB    R10, [R3]
        SUB     R10, 1                  ; Update das colunas - 1 unidade para a esquerda
        MOVB    [R3], R10
        CALL    desenha_shuriken
        forca_next_shuriken:
            ADD     R0, 1
            ADD     R1, 1
            ADD     R3, 2
            MOV     R9, N_SHURIKENS     ; Verifica se ainda ha mais shurikens
            CMP     R1, R9
            JLE     forca_shuriken
 
    forca_presente:
        MOV     R0, state_presente
        MOVB    R10, [R0]
        CMP     R10, R2                 ; Verifica se o presente está "morto"
        JEQ     ret_forca_horizontal    ; Se estiver - termina a rotina
        CALL    remove_presente
        MOV     R3, pos_presente
        ADD     R3, 1                   ; Acede às colunas do presente
        MOVB    R10, [R3]
        SUB     R10, 1                  ; Update das colunas - 1 unidade para a esquerda
        MOVB    [R3], R10
        CALL    desenha_presente
 
ret_forca_horizontal:
    POP     R10
    POP     R9
    POP     R3
    POP     R2
    POP     R1
    POP     R0
    RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																	  ;;
;; 			 			   ROTINAS DE 4º GRAU		 				  ;;
;;																	  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		VERIFY_COLAPSOS: 		 								;;
;;			Descricao: Verifica se ha colisao entre o projetil 	;;
;;						 e o ninja, fazendo as respetivas  		;;
;;						 alteracoes se tal se suceder 			;;
;;			INPUTS: 											;;
;; 				- R0 = Posicao do ninja  						;;
;; 				- R1 = Nr do ninja 								;;
;; 				- R2 = Estado do ninja 							;;
;; 				- R3 = Posicao do projetil						;;
;; 				- R4 = Estado do projetil 						;;
;; 				- R8 = Nr da arma 								;;
;;			OUTPUTS: 											;;
;; 				NO OUTPUTS				 						;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
verify_colapsos:
	PUSH 	R0
	PUSH 	R1
	PUSH 	R2
	PUSH 	R3
	PUSH 	R4
	PUSH 	R5
	PUSH 	R6
	PUSH 	R7
	PUSH 	R8
	
	MOV 	R5, R0
	MOVB 	R6, [R5]

	MOV 	R5, R3
	MOVB 	R7, [R5]

	SUB 	R6, R7
	CALL 	abs
	CMP 	R6, 4
	JGE 	ret_verify_colapsos

	MOV 	R5, R0
	ADD 	R5, 1
	MOVB 	R6, [R5]

	MOV 	R5, R3
	ADD 	R5, 1
	MOVB 	R7, [R5]

	CMP 	R6, R7
	JGE 	mod_4 

	mod_3:
		SUB 	R7, R6
		CMP 	R7, 3
		JGE 	ret_verify_colapsos
		JMP 	colapso

	mod_4:
		SUB 	R6, R7
		CMP 	R6, 4
		JGE	 	ret_verify_colapsos

	colapso:
		MOV 	R7, OFF
		MOVB 	[R4], R7
		CMP 	R8, 3
		JGE 	colapso_presente 
		colapso_shuriken:
			MOVB 	[R2], R7
			CALL 	remove_ninja
			MOV 	R1, R8
			CALL 	remove_shuriken
			JMP 	ret_verify_colapsos
		colapso_presente:
			CALL 	remove_presente
			CALL 	pontuacao

ret_verify_colapsos:
	POP 	R8
	POP 	R7
	POP 	R6
	POP 	R5
	POP 	R4
	POP 	R3
	POP 	R2
	POP 	R1
	POP 	R0
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		LIMITES:												;;
;;			Descricao: Verifica se ha objetos fora do ecra		;;
;;			INPUTS: NO INPUTS 									;;
;;			OUTPUTS: (NA MEMORIA) 								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
limites:
	PUSH 	R0
	PUSH 	R1
	PUSH 	R2
	PUSH 	R3
	PUSH 	R4
	PUSH 	R9
	PUSH 	R10

	MOV 	R0, ninja_tamanho
	MOVB 	R1, [R0]
	MOV 	R10, N_LINHAS_SCREEN
	SUB 	R10, R1

	MOV 	R0, OFF
	MOV 	R1, 1
	MOV 	R2, state_ninjas
	MOV 	R3, pos_ninjas
	limites_ninjas:
		MOVB 	R4, [R2]
		CMP 	R4, R0
		JEQ 	limites_next_ninja
		MOVB 	R4, [R3]
		CMP 	R4, R10
		JLT 	limites_next_ninja
		CALL 	remove_ninja
		MOVB 	[R2], R0
		limites_next_ninja:
			ADD 	R1, 1
			ADD 	R2, 1
			ADD 	R3, 2
			MOV 	R9, N_NINJAS
			CMP 	R1, R9
			JLE 	limites_ninjas

	MOV 	R1, 1
	MOV 	R2, state_shurikens
	MOV 	R3, pos_shurikens
	ADD 	R3, 1
	limites_shurikens:
		MOVB 	R4, [R2]
		CMP 	R4, R0
		JEQ 	limites_next_shurikens
		MOVB 	R4, [R3]
		CMP 	R4, 0
		JGT 	limites_next_shurikens
		CALL 	remove_shuriken
		MOVB 	[R2], R0
		limites_next_shurikens:
			ADD 	R1, 1
			ADD 	R2, 1
			ADD 	R3, 2
			MOV 	R9, N_SHURIKENS
			CMP 	R1, R9
			JLE 	limites_shurikens

	limites_presente:
		MOV 	R2, state_presente
		MOV 	R3, pos_presente
		MOVB 	R4, [R2]
		CMP 	R4, R0
		JEQ 	ret_limites
		MOV 	R3, pos_presente
		ADD 	R3, 1
		MOVB 	R4, [R3]
		CMP 	R4, 0
		JGT 	ret_limites
		CALL 	remove_presente
		MOVB 	[R2], R0

ret_limites:
	POP 	R10
	POP 	R9
	POP 	R4
	POP 	R3
	POP 	R2
	POP 	R1
	POP 	R0
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		MEXE_NINJA:												;;
;;			Descricao: Sobe/Desce o ninja selecionado 		 	;;
;;			INPUTS: 											;;
;; 				- R0 = 1 (SOBE) / -1 (DESCE) o ninja			;;
;; 				- R1 = Ninja a subir/descer (1-4 inclusive)		;;
;;			OUTPUTS: (IN SCREEN) 								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mexe_ninja:
	PUSH 	R0
	PUSH 	R1
	PUSH 	R2
	PUSH 	R3
	PUSH 	R4
	PUSH 	R9
	PUSH 	R10

	MOV 	R10, OFF
	MOV 	R4, R1
	SUB 	R4, 1 				; Para comecar em 0
	MOV 	R2, state_ninjas 	
	ADD 	R2, R4 				; State do ninja inserido
	MOVB	R3, [R2] 
	CMP 	R3, R10 			
	JEQ		ret_mexe_ninja		; Se tiver morto sai da rotina
	MOV 	R2, pos_ninjas 	
	SHL 	R4, 1 				; Queremos saltar de 2 em 2 por serem 2 coordenadas
	ADD 	R2, R4 				; Posicao do ninja inserido
	MOVB 	R3, [R2]

	CALL 	teto_verify
	CMP 	R9, R10
	JNE 	ret_mexe_ninja      ; posicao logo salta e vai para o return

	CALL 	remove_ninja 		; Remove o ninja da pasicao atual
	SUB 	R3, R0 				; Menos/Mais uma linha (ninja sobe/desce)
	MOVB 	[R2], R3
	CALL 	desenha_ninja 		; Desenha o ninja na nova posicao

ret_mexe_ninja:
	POP 	R10
	POP 	R9
	POP 	R4
	POP 	R3
	POP 	R2
	POP   	R1
	POP 	R0
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		TETO_VERIFY:											;;
;;			Descricao: Ve se os ninjas ja chegaram ao teto	 	;;
;;			INPUTS: NO INPUTS									;;
;;			OUTPUTS:  											;;
;; 				R9 - Indicador 									;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
teto_verify:
	PUSH 	R0
	PUSH 	R3

	MOV 	R9, OFF
	CMP 	R3, 0
	JNE 	ret_teto_verify
	CMP 	R0, 1
	JNE 	ret_teto_verify
	MOV 	R9, ON

ret_teto_verify:
	POP 	R3
	POP 	R0
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		DESENHA_NINJAS:											;;
;;			Descricao: Desenham todos os ninjas 			 	;;
;;			INPUTS: NO INPUTS									;;
;;			OUTPUTS: (IN SCREEN) 								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
desenha_ninjas:
	PUSH  	R1
	PUSH 	R10
	MOV 	R1, 1
	ciclo_desenha_ninjas:
		CALL 	desenha_ninja
		MOV 	R10, N_NINJAS
		ADD 	R1, 1
		CMP 	R1, R10
		JLE 	ciclo_desenha_ninjas
	POP 	R10
	POP 	R1	
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																	  ;;
;; 			 			   ROTINAS DE 3º GRAU		 				  ;;
;;																	  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                                              ;;
;;      WAIT_C_KEY:                                             ;;
;;          Descricao: Espera que a tecla c seja clicada        ;;
;;          INPUTS:                                             ;;
;;              - R4 = Valor da tecla introduzida               ;;
;;          OUTPUTS: NO OUTPUTS                                 ;;
;;                                                              ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
wait_c_key:
    PUSH    R4
    PUSH    R9
    PUSH    R10
 
    MOV     R10, TECLA_C
    ciclos_c_key:
        MOV     R9, N_CICLOS_FLASH
        CALL    start_screen
        ciclo_c_start_screen:
            CALL    teclado
            CMP     R4, R10                         ; Verifica se a tecla C foi premida
            JEQ     ret_wait_c_key                  ; Se foi premida sai do start screen
            SUB     R9, 1
            CMP     R9, 0                           ; Verifica se o contador chegou ao final
            JGT     ciclo_c_start_screen            ; Se não, regressa ao ciclo sem flash
        MOV     R9, N_CICLOS_FLASH                 
        CALL    start_screen_flash
        ciclo_c_start_screen_flash:
            CALL    teclado
            CMP     R4, R10                         ; Verifica se a tecla C foi premida
            JEQ     ret_wait_c_key                  ; Se foi premida sai do start screen
            SUB     R9, 1
            CMP     R9, 0                           ; Verifica se o contador chegou ao final
            JGT     ciclo_c_start_screen_flash      ; Se não, regressa ao ciclo de flash
        JMP     ciclos_c_key                        ; Se sim, regressa ao ciclo original (sem flash)
 
ret_wait_c_key:
    CALL    clear_screen
    POP     R10
    POP     R9
    POP     R4
    RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		DESENHA_NINJA:											;;
;;			Descricao: Desenha o ninja selecionado 				;;
;;			INPUTS: 		 									;;
;;				- R1 = Ninja a desenhar [1-4 inclusive]			;;
;;			OUTPUTS: NO OUTPUTS 								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
desenha_ninja:
	PUSH 	R0
	PUSH 	R1
	PUSH 	R2
	PUSH 	R4
	PUSH 	R5
	PUSH 	R7

	SUB 	R1, 1
	SHL 	R1, 1
	MOV 	R0, pos_ninjas
	ADD 	R0, R1
	MOV 	R2, ninja 			;INPUT - Valor binario do objeto
	MOVB 	R4, [R0] 			;INPUT - Linha
	ADD		R0, 1
	MOVB 	R5, [R0] 			;INPUT - Coluna
	MOV 	R7, ninja_tamanho	;INPUT - Tamanho do objeto
	CALL 	desenha_objeto

	POP 	R7
	POP 	R5
	POP 	R4
	POP 	R2
	POP 	R1
	POP 	R0
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		REMOVE_NINJA:											;;
;;			Descricao: Desenha o ninja selecionado 				;;
;;			INPUTS: 		 									;;
;;				- R1 = Ninja a remover [1-4 inclusive]			;;
;;			OUTPUTS: NO OUTPUTS 								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
remove_ninja:
	PUSH 	R0
	PUSH 	R1
	PUSH 	R2
	PUSH 	R4
	PUSH 	R5
	PUSH 	R7

	SUB 	R1, 1
	SHL 	R1, 1
	MOV 	R0, pos_ninjas
	ADD 	R0, R1
	MOV 	R2, ninja_vazio		;INPUT - Valor binario do objeto
	MOVB 	R4, [R0] 			;INPUT - Linha
	ADD		R0, 1
	MOVB 	R5, [R0] 			;INPUT - Coluna
	MOV 	R7, ninja_tamanho	;INPUT - Tamanho do objeto
	CALL 	desenha_objeto

	POP 	R7
	POP 	R5
	POP 	R4
	POP 	R2
	POP 	R1
	POP 	R0
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		DESENHA_SHURIKEN:										;;
;;			Descricao: Desenha o shuriken selecionado			;;
;;			INPUTS: 		 									;;
;;				- R1 = Shuriken a desenhar [1-2 inclusive]		;;
;;			OUTPUTS: NO OUTPUTS 								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
desenha_shuriken:
	PUSH 	R0
	PUSH 	R1
	PUSH 	R2
	PUSH 	R4
	PUSH 	R5
	PUSH 	R7
	PUSH 	R9
	PUSH 	R10

	SUB 	R1, 1
	SHL 	R1, 1
	MOV 	R0, pos_shurikens
	ADD 	R0, R1
	MOVB 	R4, [R0] 				;INPUT - Linha
	ADD		R0, 1
	MOVB 	R5, [R0] 				;INPUT - Coluna
	MOV 	R7, shuriken_tamanho	;INPUT - Tamanho do objeto

	MOV 	R2, shuriken 			;INPUT - Valor binario do objeto
	MOV 	R10, R5
	MOV 	R9, 2
	MOD 	R10, R9
	JZ 	 	rotate_form
	MOV 	R2, shuriken_rotate

rotate_form:
	CALL 	desenha_objeto

	POP 	R10
	POP 	R9
	POP 	R7
	POP 	R5
	POP 	R4
	POP 	R2
	POP 	R1
	POP 	R0
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		REMOVE_SHURIKEN:										;;
;;			Descricao: Remove o shuriken selecionado			;;
;;			INPUTS: 		 									;;
;;				- R1 = Shuriken a remover [1-2 inclusive]		;;
;;			OUTPUTS: NO OUTPUTS 								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
remove_shuriken:
	PUSH 	R0
	PUSH 	R1
	PUSH 	R2
	PUSH 	R4
	PUSH 	R5
	PUSH 	R7

	SUB 	R1, 1
	SHL 	R1, 1
	MOV 	R0, pos_shurikens
	ADD 	R0, R1
	MOV 	R2, shuriken_vazio		;INPUT - Valor binario do objeto
	MOVB 	R4, [R0] 				;INPUT - Linha
	ADD		R0, 1
	MOVB 	R5, [R0] 				;INPUT - Coluna
	MOV 	R7, shuriken_tamanho	;INPUT - Tamanho do objeto
	CALL 	desenha_objeto

	POP 	R7
	POP 	R5
	POP 	R4
	POP 	R2
	POP 	R1
	POP 	R0
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		DESENHA_PRESENTE:										;;
;;			Descricao: Desenha o presente 						;;
;;			INPUTS: ([Posicao] - Ja introduzida na memoria)		;;
;;			OUTPUTS: NO OUTPUTS 								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
desenha_presente:
	PUSH 	R0
	PUSH 	R2
	PUSH 	R4
	PUSH 	R5
	PUSH 	R7

	MOV 	R0, pos_presente 		
	MOV 	R2, presente 			;INPUT - Valor binario do objeto
	MOVB 	R4, [R0]				;INPUT - Linha
	ADD		R0, 1
	MOVB 	R5, [R0] 				;INPUT - Coluna
	MOV 	R7, presente_tamanho 	;INPUT - Tamanho do objeto
	CALL 	desenha_objeto

	POP 	R7
	POP 	R5
	POP 	R4
	POP 	R2
	POP 	R0
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		REMOVE_PRESENTE:										;;
;;			Descricao: Remove o presente 						;;
;;			INPUTS: ([Posicao] - Ja introduzida na memoria)		;;
;;			OUTPUTS: NO OUTPUTS 								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
remove_presente:
	PUSH 	R0
	PUSH 	R2
	PUSH 	R4
	PUSH 	R5
	PUSH 	R7

	MOV 	R0, pos_presente 		
	MOV 	R2, presente_vazio		;INPUT - Valor binario do objeto
	MOVB 	R4, [R0]				;INPUT - Linha
	ADD		R0, 1
	MOVB 	R5, [R0] 				;INPUT - Coluna
	MOV 	R7, presente_tamanho 	;INPUT - Tamanho do objeto
	CALL 	desenha_objeto

	POP 	R7
	POP 	R5
	POP 	R4
	POP 	R2
	POP 	R0
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		END: 													;;
;;			Descricao: Verifica se o utilizador acabou o jogo	;;
;;			INPUTS:  											;;
;; 				R4 - Valor da tecla introduzida 				::
;;			OUTPUTS: NO OUTPUTS 								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
end:
	PUSH 	R0
	PUSH 	R1
	PUSH 	R2
	PUSH 	R3
	PUSH 	R4
	PUSH  	R7
	PUSH 	R10

	MOV 	R0, OFF
	MOV 	R1, state_ninjas
	MOV 	R2, 0
	MOV 	R3, 1
	MOV 	R10, N_NINJAS
	ciclo_all_dead:
		MOVB 	R7, [R1]
		ADD 	R2, R7
		ADD 	R1, 1
		ADD 	R3, 1
		CMP 	R3, R10
		JLE 	ciclo_all_dead
	CMP 	R2, R0
	JEQ 	game_over

	MOV 	R10, TECLA_E
	CMP 	R4, R10
	JNE 	ret_end

	game_over:
		CALL 	end_screen

ret_end:
	POP 	R10
	POP 	R7
	POP 	R4
	POP 	R3
	POP  	R2
	POP 	R1
	POP  	R0
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																	  ;;
;; 			 			   ROTINAS DE 2º GRAU		 				  ;;
;;																	  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		PAUSA: 													;;
;;			Descricao: Verifica se o utilizador pausou 			;;
;;			INPUTS:  											;;
;; 				R4 - Valor da tecla introduzida 				::
;;			OUTPUTS: NO OUTPUTS 								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
pausa:
	PUSH 	R10
	MOV 	R10, TECLA_D
	CMP 	R4, R10
	JNE 	ret_pausa
	ciclo_pausa:
		CALL 	teclado
		CMP 	R4, R10
		JNE 	ciclo_pausa
ret_pausa:
	POP 	R10
	RET 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		COMBINACOES:											;;
;;			Descricao: Soma os estados dos objetos != ninjas	;;
;;			INPUTS: (IN MEMORY)									;;
;; 				- R6 = Random estados  							;;
;;				- R7 = Random posicao primeira metade do ecra  	;;	
;;				- R8 = Random posicao segunda metade do ecra 	;;
;;			OUTPUTS: (IN MEMORY)								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
combinacoes:
	PUSH 	R0
	PUSH 	R1
	PUSH 	R2
	PUSH 	R3
	PUSH 	R6
	PUSH 	R7
	PUSH 	R8
	PUSH 	R9
	PUSH 	R10

	MOV 	R10, state_shuriken1
	MOVB 	R0,	[R10] 
	MOV 	R10, state_shuriken2
	MOVB 	R9, [R10]
	ADD 	R0, R9
	MOV 	R10, state_presente
	MOVB 	R9, [R10]
	ADD 	R0, R9
	CMP 	R0, 0
	JNE 	ret_combinacoes		; Se algum dos dos estados estiver a ON - sai

	MOV 	R10, 12
	MOD 	R7, R10 			; Randomizer formatado para o formato de coluna entre 0 e 15
	MOD 	R8, R10
	MOV 	R10, 16
	ADD 	R8, R10 			; Randomizer formatado para o formato de coluna entre 16 e 31
	
	; R6 = RANDOM - Estados
	; R7 = RANDOM - 1ª Metade do ecra
	; R8 = RANDOM - 2ª Metade do ecra
	comb_s1:
		BIT 	R6, 0
		JZ 		comb_s2 				; Se o bit do shuriken1 nao estiver ativo jumpa
		MOV 	R0, shuriken_tamanho 	; INPUT - Endereco do tamanho do shuriken1
		MOV 	R1, pos_shuriken1		; INPUT - Endereco da posicao do shuriken1
		MOV 	R2, state_shuriken1 	; INPUT - Endereco do estado do shuriken1
		MOV 	R3, R7 					; INPUT - Posicao (Linha) a escrever do shuriken1
		CALL 	comb_geral
		MOV 	R7, 0 					; Se houver presente a escrever - escrever acima da linha 15
	comb_s2:
		BIT 	R6, 1
		JZ 		comb_p 					; Se o bit do shuriken2 nao estiver ativo jumpa
		MOV 	R0, shuriken_tamanho 	; INPUT - Endereco do tamanho do shuriken2
		MOV 	R1, pos_shuriken2 		; INPUT - Endereco da posicao do shuriken2
		MOV 	R2, state_shuriken2 	; INPUT - Endereco do estado do shuriken2
		MOV 	R3, R8 					; INPUT - Posicao (Linha) a escrever do shuriken2
		CALL 	comb_geral
		MOV 	R8, 0 					; Se houver presente a escrever - escrever abaixo da linha 16
	comb_p:
		BIT 	R6, 2
		JZ 		ret_combinacoes 		; Se o bit do presente nao estiver ativo sai da rotina
		MOV 	R0, presente_tamanho	; INPUT - Endereco do tamanho do presente
		MOV 	R1, pos_presente 		; INPUT - Endereco da posicao do presente
		MOV 	R2, state_presente		; INPUT - Endereco do estado do presente
		; INPUT - Posicao (Linha) a escrever do presente
		MOV 	R3, R7 					; Se nao houve nenhum objeto escrito anteriormente,
		ADD 	R3, R8					; a posicao (linha) do presente é random entre 0 e 31
		CALL 	comb_geral

ret_combinacoes:
	POP 	R10
	POP 	R9
	POP 	R8
	POP 	R7
	POP 	R6
	POP 	R3
	POP 	R2
	POP 	R1
	POP 	R0
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		START_SCREEN:											;;
;;			Descricao: Pinta o ecra com desenho StartScreen 	;;
;;			INPUTS: NO INPUTS 									;;
;;			OUTPUTS: NO OUTPUTS 								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
start_screen:
	PUSH 	R2
	MOV 	R2, desenho_start 		;INPUT - Endereco do desenho
	CALL 	pinta_screen
	POP 	R2
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		OVER_SCREEN:											;;
;;			Descricao: Pinta o ecra com desenho GameOver 	 	;;
;;			INPUTS: NO INPUTS 									;;
;;			OUTPUTS: NO OUTPUTS 								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
over_screen:
	PUSH 	R2

	MOV 	R2, desenho_end				;INPUT - Endereco do desenho
	CALL 	pinta_screen

	POP 	R2
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		OVER_SCREEN_FLASH:										;;
;;			Descricao: Pinta o ecra com desenho GameOverFlash	;;
;;			INPUTS: NO INPUTS 									;;
;;			OUTPUTS: NO OUTPUTS 								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
over_screen_flash:
	PUSH 	R2

	MOV 	R2, desenho_end_flash		;INPUT - Endereco do desenho
	CALL 	pinta_screen

	POP 	R2
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		END_SCREEN:												;;
;;			Descricao: Pinta o ecra com desenho StartScreen 	;;
;;			INPUTS: NO INPUTS 									;;
;;			OUTPUTS: NO OUTPUTS 								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
end_screen:
	PUSH 	R8
	PUSH 	R9

	MOV 	R9, 9000
	reset_contador_end_screen:
		CALL 	over_screen
		MOV 	R8, 0
		JMP 	ciclo_two
	ciclo_one:
		ADD 	R8, 1
		CMP 	R8, R9
		JEQ 	reset_contador_end_screen
		JMP 	ciclo_one
	sec_reset_contador_end_screen:
		CALL 	over_screen_flash
		MOV 	R8, 0
		JMP 	ciclo_one
	ciclo_two:
		ADD 	R8, 1
		CMP 	R8, R9
		JEQ 	sec_reset_contador_end_screen
		JMP 	ciclo_two

ret_end_screen:
	POP 	R9
	POP 	R8
	RET	

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		START_SCREEN_FLASH:										;;
;;			Descricao: StartScreen flashing 				 	;;
;;			INPUTS: NO INPUTS 									;;
;;			OUTPUTS: NO OUTPUTS 								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
start_screen_flash:
	PUSH 	R2
	MOV 	R2, desenho_start_flash 	;INPUT - Endereco do desenho
	CALL 	pinta_screen
	POP 	R2
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		DESENHA_OBJETO:											;;
;;			Descricao: Desenha o objeto introduzido 			;;
;;			INPUTS:			 									;;
;; 				- R2 = Endereco do valor binario do objeto 		;;
;; 				- R4 = Linha a ser desenhado o objeto 			;;
;; 				- R5 = Coluna a ser desenhado o objeto 			;;
;; 				- R7 = Endereco do tamanho do objeto 			;;
;;			OUTPUTS: NO OUTPUTS 								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
desenha_objeto:
	PUSH 	R0
	PUSH 	R1
	PUSH 	R2
	PUSH 	R4
	PUSH 	R5
	PUSH 	R6
	PUSH 	R7
	PUSH 	R9
	PUSH 	R10

	MOV 	R0, 1
	MOV 	R1, 1
	MOV 	R9, R7
	ADD 	R9, 1
	ciclo_desenha:
		MOVB 	R6, [R2]
		CALL 	pinta_pixel
		ADD		R2, 1
		MOVB 	R10, [R9]
		CMP 	R1, R10
		JEQ  	soma_linha
		ADD 	R1, 1
		ADD 	R5, 1
		JMP 	ciclo_desenha
	soma_linha:
		MOVB 	R10, [R7]
		CMP 	R0, R10
		JEQ  	ret_desenha
		MOV 	R1, 1
		MOVB  	R10, [R9]
		SUB 	R10, 1
		SUB 	R5, R10
		ADD 	R0, 1
		ADD 	R4, 1
		JMP 	ciclo_desenha

ret_desenha:
	POP 	R10
	POP 	R9
	POP 	R7
	POP 	R6
	POP 	R5
	POP 	R4
	POP 	R2
	POP 	R1
	POP 	R0
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																	  ;;
;; 			 			   ROTINAS DE 1º GRAU		 				  ;;
;;																	  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		ABS 													;;
;;			Descricao: Faz o modulo do numero introduzido 		;;
;;			INPUTS: 											;;
;; 				- R6 = Numero 									;;
;;			OUTPUTS: 											;;
;; 				- R6 = Modulo do numero 						;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
abs:
	CMP 	R6, 0
	JGE 	ret_abs
	NEG 	R6
ret_abs:
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		PONTUACAO:												;;
;;			Descricao: Soma tres à pontucao/displays 		 	;;
;;			INPUTS: NO INPUTS									;;
;;			OUTPUTS: NO OUTPUTS									;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
pontuacao:
	PUSH 	R1
	PUSH 	R2
	PUSH 	R5
	PUSH 	R6
	PUSH 	R8
	PUSH 	R10

	MOV 	R1, POUT1
	MOV 	R2, memory_pontuacao
	
	MOVB 	R8, [R2]
	ADD 	R8, 3

	MOV 	R10, 99
	CMP 	R8, R10
	JLT 	less_than_max
	MOV 	R8, R10
	less_than_max:
		MOVB 	[R2], R8
		MOV 	R10, 10
		MOV 	R5, R8
		MOV 	R6, R8
		DIV 	R6, R10
		SHL 	R6, 4
		MOD 	R5, R10
		OR 		R6, R5
		MOVB 	[R1], R6

	POP 	R10
	POP 	R8
	POP 	R6
	POP 	R5
	POP 	R2
	POP 	R1
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		ATUALIZA_RANDOMS:										;;
;;			Descricao: Soma 1 a iteracao random					;;
;;			INPUTS: 											;;
;; 				- R6 = Random estados  							;;
;;				- R7 = Random posicao primeira metade do ecra  	;;	
;;				- R8 = Random posicao segunda metade do ecra 	;;
;;			OUTPUTS: 											;;
;; 				- R6 = [1,6]  ; Cada random foi 				;;
;;				- R7 = [0,20] ; atualizdo de acordo			  	;;	
;;				- R8 = [0,30] ; com a sua funcao 				;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
atualiza_randoms:
	PUSH 	R10

	ADD 	R6, 1
	ADD 	R7, 1
	ADD 	R8, 1
	compara_r6:
		MOV 	R10, RANDOM_ESTADOS_LIM
		CMP 	R6, R10
		JLE 	compara_r7
		MOV 	R6, 1
	compara_r7:
		MOV 	R10, RANDOM_METADE1_LIM
		CMP 	R7, R10
		JNE  	compara_r8
		MOV 	R7, 0
	compara_r8:
		MOV 	R10, RANDOM_METADE2_LIM
		CMP 	R8, R10
		JNE 	ret_atualiza_randoms
		MOV 	R8, 0

ret_atualiza_randoms:
	POP 	R10
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		COMB_GERAL (AUXILIAR DE 'COMBINACOES'):					;;
;;			Descricao: Estabelece a posicao e o state do 		;;
;;				objeto de acordo com o random e combinacao 		;;
;;			INPUTS: (IN MEMORY)									;;
;; 				- R0 = Enderece tamanho do objeto				;;
;;				- R1 = Endereco da posicao do objeto 		 	;;	
;;				- R2 = Endereco do estado do objeto 		 	;;
;;				- R3 = Posicao a escrever no endereco  			;;
;;			OUTPUTS: (IN MEMORY)								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
comb_geral:
	PUSH 	R0
	PUSH 	R4
	PUSH 	R5
	PUSH 	R10

	ADD 	R0, 1
	MOVB 	R5, [R0]				; R5 = Tamanho da coluna
	MOV 	R4, N_COLUNAS_SCREEN
	SUB 	R4, R5 					; R4 = Limite do ecra - o tamanho do objeto
	MOVB 	[R1], R3				; Posicao (Linha) Inicial = Random INPUT
	ADD 	R1, 1
	MOVB 	[R1], R4 				; Posicao (Coluna) Inicial = R4
	MOV 	R10, ON
	MOVB 	[R2], R10 				; Objeto fica ON

	POP 	R10
	POP 	R5
	POP 	R4
	POP 	R0
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		PINTA_PIXEL:											;;
;;			Descricao: Pinta/Remove o pixel designado 			;;
;;			INPUTS:			 									;;
;; 				- R4 = Linha a ser pintado o pixel 	 			;;
;; 				- R5 = Coluna a ser pintado o pixel 			;;
;; 				- R6 = Valor binario do pixel 					;;
;;			OUTPUTS: NO OUTPUTS 								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
pinta_pixel:
	PUSH 	R0
	PUSH 	R1
	PUSH 	R3
	PUSH 	R4
	PUSH 	R5
	PUSH 	R6
	PUSH 	R10

	MOV 	R0, R4
	MOV 	R1, R5
	MOV 	R3, SCREEN 			;
	MOV 	R10, N_BYTES_LINHA	;
	MUL 	R0, R10				;
	MOV 	R10, N_BITS_BYTE	; Aplica a formula 4*L+C/8
	DIV 	R1, R10				;
	ADD 	R3, R0 				;
	ADD 	R3, R1 				; 

	MOV 	R10, N_BITS_BYTE 	;
	MOD 	R5, R10 			; Obtem a mascara
	MOV 	R10, mascaras 		; adequada ao bit 
	ADD 	R10, R5 			; a desenhar
	MOVB 	R1, [R3] 			;

	CMP 	R6, 1
	JEQ 	pinta
	remove:
		MOVB 	R0, [R10]
		NOT 	R0
		AND		R1, R0
		JMP	 	ret_pixel
	pinta:
		MOVB 	R0, [R10]
		OR 		R1, R0

ret_pixel:
	MOVB 	[R3], R1
	POP 	R10
	POP 	R6
	POP 	R5
	POP 	R4
	POP 	R3
	POP 	R1
	POP 	R0
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		PINTA_SCREEN:											;;
;;			Descricao: Pinta o ecra com desenho introduzido		;;
;;			INPUTS:												;;
;;				- R2 = Endereco do desenho introduzido 			;;
;;			OUTPUTS: NO OUTPUTS 								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
pinta_screen:
	PUSH 	R1
	PUSH 	R2
	PUSH 	R3
	PUSH 	R4
	PUSH 	R10
	
	MOV 	R3, SCREEN
	MOV 	R4, 0
	MOV 	R1, N_BYTES_SCREEN
	; Escrever no ecra:
	ciclo_screen:
		MOVB 	R10, [R2]
		MOVB 	[R3], R10
		ADD 	R2, 1
		ADD 	R4, 1
		CMP 	R4, R1
		JGE 	ret_pinta_screen
		ADD 	R3, 1
		JMP 	ciclo_screen

ret_pinta_screen:
	POP		R10
	POP 	R4
	POP 	R3
	POP 	R2
	POP 	R1
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		CLEAR_SCREEN:											;;
;;			Descricao: Limpa o ecra 							;;
;;			INPUTS: NO INPUTS 									;;
;;			OUTPUTS: NO OUTPUTS 								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
clear_screen:
	PUSH 	R3
	PUSH 	R9
	PUSH 	R10
	MOV 	R3, SCREEN
	MOV 	R10, clean_byte
	MOVB 	R9, [R10]
	MOV 	R10, FIM_SCREEN
	ciclo_clear:
		MOVB 	[R3], R9
		ADD 	R3, 1
		CMP 	R3, R10
		JLT		ciclo_clear
	POP 	R10
	POP 	R9
	POP 	R3
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		TECLADO:												;;
;;			Descricao: Le todas as linhas do teclado uma vez	;;
;;			INPUTS:												;;
;;				- R0 = Endereco do PIN 				 			;;
;;				- R2 = Endereco do POUT2			 			;;
;;			OUTPUTS: 			 								;;
;;				- R4 = Valor da tecla introduzida				;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
teclado:
	PUSH 	R0
	PUSH 	R2
	PUSH 	R5
	PUSH 	R8
	PUSH 	R9
	PUSH 	R10

	MOV 	R0, PIN
	MOV 	R2, POUT2
	MOV 	R8, mascara_teclado
	MOV 	R4, 1
	ciclo_teclado:
		MOV 	R10, SEM_TECLA
		CMP 	R4, R10
		JEQ 	ret_teclado
		MOVB 	[R2], R4
		MOVB 	R5, [R0]
		MOVB 	R9, [R8]
		AND 	R5, R9
		SHL 	R4, 1
		CMP 	R5, 0
		JEQ 	ciclo_teclado
		SHR 	R4, 1
	ha_tecla:
		MOVB 	R10, [R0]
		MOVB 	R9, [R8]
		AND 	R10, R9
		CMP 	R10, 0
		JNE 	ha_tecla

	conversao:
		trata_linhas:
			ADD 	R10, 1
			SHR 	R4, 1
			CMP 	R4, 0
			JNE 	trata_linhas
			SUB 	R10, 1
			MOV 	R4, R10
			MOV 	R10, 0
		trata_colunas:
			ADD 	R10, 1
			SHR 	R5, 1
			CMP 	R5, 0
			JNE 	trata_colunas
			SUB 	R10, 1
			MOV 	R5, R10
	formula_teclado:
		MOV 	R10, N_TECLAS_LINHA
		MUL 	R4, R10
		ADD 	R4, R5

ret_teclado:
	POP 	R10
	POP 	R9
	POP 	R8
	POP 	R5
	POP 	R2
	POP 	R0
	RET

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		INT0:													;;
;;			Descricao: ATIVA NA MEMORIA A INTERRUPCAO 0			;;
;;			INPUTS: NO INPUTS 									;;
;;			OUTPUTS: (IN MEMORY) 								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
int0:
	PUSH 	R9
	PUSH  	R10
	MOV 	R10, state_int0
	MOV 	R9, ON
	MOVB	[R10], R9 			; Interrupcao 0 ON
	POP 	R10
	POP 	R9
	RFE

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;																;;
;;		INT1:													;;
;;			Descricao: ATIVA NA MEMORIA A INTERRUPCAO 1			;;
;;			INPUTS: NO INPUTS 									;;
;;			OUTPUTS: (IN MEMORY) 								;;
;;																;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
int1:
	PUSH 	R9
	PUSH 	R10
	MOV 	R10, state_int1
	MOV 	R9, ON
	MOVB 	[R10], R9 			; Interrupcao 1 ON
	POP 	R10
	POP  	R9
	RFE
