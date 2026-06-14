; =========================================================
; Game Engine Function: sub_86DEE
; Address            : 0x86DEE - 0x86E30
; =========================================================

86DEE:  PUSH            {R4,R5,R7,LR}
86DF0:  ADD             R7, SP, #8
86DF2:  MOV             R4, R0
86DF4:  LDR             R0, [R0,#8]
86DF6:  LSLS            R5, R2, #3
86DF8:  LSLS            R3, R0, #0x1D
86DFA:  BEQ             loc_86E0A
86DFC:  MOV             R0, R4; int
86DFE:  MOV             R2, R5; n
86E00:  MOVS            R3, #1
86E02:  POP.W           {R4,R5,R7,LR}
86E06:  B.W             sub_86E30
86E0A:  LDR             R3, [R4]
86E0C:  ADD.W           R12, R0, R5
86E10:  CMP             R12, R3
86E12:  BLE             loc_86E18
86E14:  MOVS            R0, #0
86E16:  POP             {R4,R5,R7,PC}
86E18:  LDR             R3, [R4,#0xC]
86E1A:  ADD.W           R3, R3, R0,ASR#3
86E1E:  MOV             R0, R1; dest
86E20:  MOV             R1, R3; src
86E22:  BLX             j_memcpy
86E26:  LDR             R0, [R4,#8]
86E28:  ADD             R0, R5
86E2A:  STR             R0, [R4,#8]
86E2C:  MOVS            R0, #1
86E2E:  POP             {R4,R5,R7,PC}
