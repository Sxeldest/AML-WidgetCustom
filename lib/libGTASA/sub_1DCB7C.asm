; =========================================================
; Game Engine Function: sub_1DCB7C
; Address            : 0x1DCB7C - 0x1DCBDE
; =========================================================

1DCB7C:  PUSH            {R4,R6,R7,LR}
1DCB7E:  ADD             R7, SP, #8
1DCB80:  SUB             SP, SP, #8
1DCB82:  MOV             R4, R1
1DCB84:  MOVS            R1, #0x6D ; 'm'
1DCB86:  STRB.W          R1, [R7,#var_B]
1DCB8A:  SUBS            R1, R2, #1
1DCB8C:  UXTB            R1, R1
1DCB8E:  CMP             R1, #0xF
1DCB90:  BCS             loc_1DCBD2
1DCB92:  LDR             R1, =(RwEngineInstance_ptr - 0x1DCB9A)
1DCB94:  ADR             R3, a0123456789abcd_0; "0123456789abcdef"
1DCB96:  ADD             R1, PC; RwEngineInstance_ptr
1DCB98:  LDRB            R2, [R3,R2]
1DCB9A:  MOVS            R3, #0
1DCB9C:  LDR             R1, [R1]; RwEngineInstance
1DCB9E:  STRB.W          R3, [R7,#var_A+1]
1DCBA2:  STRB.W          R2, [R7,#var_A]
1DCBA6:  LDR             R1, [R1]
1DCBA8:  LDR.W           R2, [R1,#0x100]
1DCBAC:  SUB.W           R1, R7, #-var_B
1DCBB0:  BLX             R2
1DCBB2:  CMP             R4, #0
1DCBB4:  ITT NE
1DCBB6:  LDRBNE          R0, [R4]
1DCBB8:  CMPNE           R0, #0
1DCBBA:  BEQ             loc_1DCBD8
1DCBBC:  LDR             R0, =(RwEngineInstance_ptr - 0x1DCBC6)
1DCBBE:  SUB.W           R1, R7, #-var_B
1DCBC2:  ADD             R0, PC; RwEngineInstance_ptr
1DCBC4:  LDR             R0, [R0]; RwEngineInstance
1DCBC6:  LDR             R0, [R0]
1DCBC8:  LDR.W           R2, [R0,#0x100]
1DCBCC:  MOV             R0, R4
1DCBCE:  BLX             R2
1DCBD0:  B               loc_1DCBD8
1DCBD2:  MOVS            R0, #0
1DCBD4:  STRH.W          R0, [R7,#var_A]
1DCBD8:  MOVS            R0, #1
1DCBDA:  ADD             SP, SP, #8
1DCBDC:  POP             {R4,R6,R7,PC}
