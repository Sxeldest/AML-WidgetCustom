; =========================================================
; Game Engine Function: sub_FF296
; Address            : 0xFF296 - 0xFF2B6
; =========================================================

FF296:  PUSH            {R4,R6,R7,LR}
FF298:  ADD             R7, SP, #8
FF29A:  CMP             R0, R1
FF29C:  BEQ             loc_FF2AC
FF29E:  LDRB            R3, [R2]
FF2A0:  LDRB            R4, [R0]
FF2A2:  CMP             R4, R3
FF2A4:  BNE             loc_FF2AC
FF2A6:  ADDS            R2, #1
FF2A8:  ADDS            R0, #1
FF2AA:  B               loc_FF29A
FF2AC:  SUBS            R0, R0, R1
FF2AE:  CLZ.W           R0, R0
FF2B2:  LSRS            R0, R0, #5
FF2B4:  POP             {R4,R6,R7,PC}
