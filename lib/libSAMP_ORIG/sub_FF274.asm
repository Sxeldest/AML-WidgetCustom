; =========================================================
; Game Engine Function: sub_FF274
; Address            : 0xFF274 - 0xFF296
; =========================================================

FF274:  PUSH            {R4,R6,R7,LR}
FF276:  ADD             R7, SP, #8
FF278:  LDRD.W          R3, R0, [R0]
FF27C:  SUBS            R4, R2, R1
FF27E:  SUBS            R0, R0, R3
FF280:  CMP             R4, R0
FF282:  BLS             loc_FF288
FF284:  MOVS            R0, #0
FF286:  POP             {R4,R6,R7,PC}
FF288:  MOV             R0, R1
FF28A:  MOV             R1, R2
FF28C:  MOV             R2, R3
FF28E:  POP.W           {R4,R6,R7,LR}
FF292:  B.W             sub_FF296
