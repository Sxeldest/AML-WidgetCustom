; =========================================================
; Game Engine Function: sub_FF274
; Address            : 0xFF274 - 0xFF2B4
; =========================================================

FF274:  PUSH            {R4,R6,R7,LR}
FF276:  ADD             R7, SP, #8
FF278:  LDR             R2, [R0]
FF27A:  MOVS            R4, #0
FF27C:  LDR.W           R1, [R2],#4
FF280:  STR             R2, [R0]
FF282:  CMP.W           R4, R1,LSR#16
FF286:  BNE             loc_FF296
FF288:  MOVW            R0, #0x8892
FF28C:  MOVS            R1, #0
FF28E:  POP.W           {R4,R6,R7,LR}
FF292:  B.W             sub_224310
FF296:  LDR             R1, [R1,#8]
FF298:  MOVW            R0, #0x8892
FF29C:  BLX             glBindBuffer
FF2A0:  LDR             R0, =(off_23494C - 0xFF2AE)
FF2A2:  MOV             R1, #0x6B8AF0
FF2AA:  ADD             R0, PC; off_23494C
FF2AC:  LDR             R0, [R0]; dword_23DF24
FF2AE:  LDR             R0, [R0]
FF2B0:  STR             R4, [R0,R1]
FF2B2:  POP             {R4,R6,R7,PC}
