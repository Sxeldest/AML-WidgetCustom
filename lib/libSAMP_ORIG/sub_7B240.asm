; =========================================================
; Game Engine Function: sub_7B240
; Address            : 0x7B240 - 0x7B266
; =========================================================

7B240:  PUSH            {R4,R6,R7,LR}
7B242:  ADD             R7, SP, #8
7B244:  LDR             R1, =(off_114B48 - 0x7B24C)
7B246:  LDR             R2, [R0,#8]
7B248:  ADD             R1, PC; off_114B48
7B24A:  STR             R2, [R0,#0xC]
7B24C:  LDR             R4, [R1]; dword_1A41D8
7B24E:  LDR             R1, [R4]
7B250:  MOV             R0, R1
7B252:  BL              sub_698B0
7B256:  LDR             R1, =(byte_4FDB8 - 0x7B260)
7B258:  MOVS            R2, #0
7B25A:  LDR             R0, [R4]
7B25C:  ADD             R1, PC; byte_4FDB8
7B25E:  POP.W           {R4,R6,R7,LR}
7B262:  B.W             sub_69554
