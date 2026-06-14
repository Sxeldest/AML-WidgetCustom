; =========================================================
; Game Engine Function: sub_10D2B6
; Address            : 0x10D2B6 - 0x10D2E6
; =========================================================

10D2B6:  PUSH            {R4,R6,R7,LR}
10D2B8:  ADD             R7, SP, #8
10D2BA:  LDR             R4, [R0,#0xC]
10D2BC:  LDRD.W          LR, R12, [R0,#4]
10D2C0:  VLDR            S0, [R3]
10D2C4:  VLDR            S2, [R2]
10D2C8:  ADD.W           R0, LR, R4,ASR#1
10D2CC:  LDR             R1, [R1]
10D2CE:  LSLS            R2, R4, #0x1F
10D2D0:  ITT NE
10D2D2:  LDRNE           R2, [R0]
10D2D4:  LDRNE.W         R12, [R2,R12]
10D2D8:  VMOV            R3, S0
10D2DC:  VMOV            R2, S2
10D2E0:  POP.W           {R4,R6,R7,LR}
10D2E4:  BX              R12
