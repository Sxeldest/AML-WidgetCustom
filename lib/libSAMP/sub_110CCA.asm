; =========================================================
; Game Engine Function: sub_110CCA
; Address            : 0x110CCA - 0x110CEC
; =========================================================

110CCA:  PUSH            {R7,LR}
110CCC:  MOV             R7, SP
110CCE:  LDR             R3, [R0,#0xC]
110CD0:  LDRD.W          LR, R12, [R0,#4]
110CD4:  LDR             R2, [R2]
110CD6:  ADD.W           R0, LR, R3,ASR#1
110CDA:  LDR             R1, [R1]
110CDC:  LSLS            R3, R3, #0x1F
110CDE:  ITT NE
110CE0:  LDRNE           R3, [R0]
110CE2:  LDRNE.W         R12, [R3,R12]
110CE6:  POP.W           {R7,LR}
110CEA:  BX              R12
