; =========================================================
; Game Engine Function: _ZNK21CEventInteriorUseInfo7IsValidEP4CPed
; Address            : 0x376E36 - 0x376E62
; =========================================================

376E36:  CMP             R1, #0
376E38:  ITT NE
376E3A:  MOVNE           R0, R1; this
376E3C:  BNE.W           sub_196874
376E40:  LDRB            R1, [R0,#8]
376E42:  CMP             R1, #0
376E44:  ITT NE
376E46:  MOVNE           R0, #1
376E48:  BXNE            LR
376E4A:  PUSH            {R4,R6,R7,LR}
376E4C:  ADD             R7, SP, #0x10+var_8
376E4E:  LDRD.W          R1, R4, [R0]
376E52:  LDR             R1, [R1,#0x10]
376E54:  BLX             R1
376E56:  MOV             R1, R0
376E58:  MOVS            R0, #0
376E5A:  CMP             R4, R1
376E5C:  IT LE
376E5E:  MOVLE           R0, #1
376E60:  POP             {R4,R6,R7,PC}
