; =========================================================
; Game Engine Function: _ZNK17CEventSignalAtPed7IsValidEP4CPed
; Address            : 0x376E62 - 0x376E8E
; =========================================================

376E62:  CMP             R1, #0
376E64:  ITT NE
376E66:  MOVNE           R0, R1; this
376E68:  BNE.W           sub_196874
376E6C:  LDRB            R1, [R0,#8]
376E6E:  CMP             R1, #0
376E70:  ITT NE
376E72:  MOVNE           R0, #1
376E74:  BXNE            LR
376E76:  PUSH            {R4,R6,R7,LR}
376E78:  ADD             R7, SP, #0x10+var_8
376E7A:  LDRD.W          R1, R4, [R0]
376E7E:  LDR             R1, [R1,#0x10]
376E80:  BLX             R1
376E82:  MOV             R1, R0
376E84:  MOVS            R0, #0
376E86:  CMP             R4, R1
376E88:  IT LE
376E8A:  MOVLE           R0, #1
376E8C:  POP             {R4,R6,R7,PC}
