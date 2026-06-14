; =========================================================
; Game Engine Function: _ZNK16CEventPassObject7IsValidEP4CPed
; Address            : 0x376EBA - 0x376EE6
; =========================================================

376EBA:  CMP             R1, #0
376EBC:  ITT NE
376EBE:  MOVNE           R0, R1; this
376EC0:  BNE.W           sub_196874
376EC4:  LDRB            R1, [R0,#8]
376EC6:  CMP             R1, #0
376EC8:  ITT NE
376ECA:  MOVNE           R0, #1
376ECC:  BXNE            LR
376ECE:  PUSH            {R4,R6,R7,LR}
376ED0:  ADD             R7, SP, #0x10+var_8
376ED2:  LDRD.W          R1, R4, [R0]
376ED6:  LDR             R1, [R1,#0x10]
376ED8:  BLX             R1
376EDA:  MOV             R1, R0
376EDC:  MOVS            R0, #0
376EDE:  CMP             R4, R1
376EE0:  IT LE
376EE2:  MOVLE           R0, #1
376EE4:  POP             {R4,R6,R7,PC}
