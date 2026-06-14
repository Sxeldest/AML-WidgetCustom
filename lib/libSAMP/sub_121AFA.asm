; =========================================================
; Game Engine Function: sub_121AFA
; Address            : 0x121AFA - 0x121B1C
; =========================================================

121AFA:  PUSH            {R7,LR}
121AFC:  MOV             R7, SP
121AFE:  LDR             R3, [R0,#0xC]
121B00:  LDRD.W          LR, R12, [R0,#4]
121B04:  LDR             R2, [R2]
121B06:  ADD.W           R0, LR, R3,ASR#1
121B0A:  LDR             R1, [R1]
121B0C:  LSLS            R3, R3, #0x1F
121B0E:  ITT NE
121B10:  LDRNE           R3, [R0]
121B12:  LDRNE.W         R12, [R3,R12]
121B16:  POP.W           {R7,LR}
121B1A:  BX              R12
