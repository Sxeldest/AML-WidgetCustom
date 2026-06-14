; =========================================================
; Game Engine Function: sub_150EF2
; Address            : 0x150EF2 - 0x150F3C
; =========================================================

150EF2:  PUSH            {R4-R7,LR}
150EF4:  ADD             R7, SP, #0xC
150EF6:  PUSH.W          {R8}
150EFA:  MOV             R4, R0
150EFC:  LDR             R0, [R0,#8]
150EFE:  CBZ             R0, loc_150F36
150F00:  LDRD.W          R0, R5, [R4]
150F04:  MOV.W           R8, #0
150F08:  LDR             R1, [R5]
150F0A:  CMP             R5, R4
150F0C:  STR.W           R8, [R4,#8]
150F10:  LDR             R2, [R0,#4]
150F12:  STR             R2, [R1,#4]
150F14:  LDR             R0, [R0,#4]
150F16:  STR             R1, [R0]
150F18:  BEQ             loc_150F36
150F1A:  LDRD.W          R6, R0, [R5,#4]
150F1E:  STR.W           R8, [R5,#8]
150F22:  CBZ             R0, loc_150F2A
150F24:  LDR             R1, [R0]
150F26:  LDR             R1, [R1,#4]
150F28:  BLX             R1
150F2A:  MOV             R0, R5; void *
150F2C:  BLX             j__ZdlPv; operator delete(void *)
150F30:  CMP             R6, R4
150F32:  MOV             R5, R6
150F34:  BNE             loc_150F1A
150F36:  POP.W           {R8}
150F3A:  POP             {R4-R7,PC}
