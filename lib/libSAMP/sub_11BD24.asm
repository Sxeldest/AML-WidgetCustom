; =========================================================
; Game Engine Function: sub_11BD24
; Address            : 0x11BD24 - 0x11BD60
; =========================================================

11BD24:  PUSH            {R4,R6,R7,LR}
11BD26:  ADD             R7, SP, #8
11BD28:  MOV             R12, R0
11BD2A:  LDR             R0, =(off_23494C - 0x11BD30)
11BD2C:  ADD             R0, PC; off_23494C
11BD2E:  LDR             R0, [R0]; dword_23DF24
11BD30:  LDR.W           LR, [R0]
11BD34:  MOVS            R0, #0
11BD36:  CMP.W           LR, #0
11BD3A:  ITTT NE
11BD3C:  MOVWNE          R4, #0xED20
11BD40:  MOVTNE          R4, #0x66 ; 'f'
11BD44:  ADDSNE.W        LR, LR, R4
11BD48:  BNE             loc_11BD4C
11BD4A:  POP             {R4,R6,R7,PC}
11BD4C:  LDR.W           LR, [LR]
11BD50:  CMP.W           LR, #0
11BD54:  BEQ             loc_11BD5C
11BD56:  MOV             R0, R12
11BD58:  BLX             LR
11BD5A:  B               locret_11BD4A
11BD5C:  MOVS            R0, #0
11BD5E:  POP             {R4,R6,R7,PC}
