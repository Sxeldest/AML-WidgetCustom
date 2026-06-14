; =========================================================
; Game Engine Function: _ZNK19CEventLeanOnVehicle7IsValidEP4CPed
; Address            : 0x376E8E - 0x376EBA
; =========================================================

376E8E:  CMP             R1, #0
376E90:  ITT NE
376E92:  MOVNE           R0, R1; this
376E94:  BNE.W           sub_196874
376E98:  LDRB            R1, [R0,#8]
376E9A:  CMP             R1, #0
376E9C:  ITT NE
376E9E:  MOVNE           R0, #1
376EA0:  BXNE            LR
376EA2:  PUSH            {R4,R6,R7,LR}
376EA4:  ADD             R7, SP, #0x10+var_8
376EA6:  LDRD.W          R1, R4, [R0]
376EAA:  LDR             R1, [R1,#0x10]
376EAC:  BLX             R1
376EAE:  MOV             R1, R0
376EB0:  MOVS            R0, #0
376EB2:  CMP             R4, R1
376EB4:  IT LE
376EB6:  MOVLE           R0, #1
376EB8:  POP             {R4,R6,R7,PC}
