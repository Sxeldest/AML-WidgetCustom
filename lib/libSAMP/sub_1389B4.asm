; =========================================================
; Game Engine Function: sub_1389B4
; Address            : 0x1389B4 - 0x1389DA
; =========================================================

1389B4:  PUSH            {R4,R6,R7,LR}
1389B6:  ADD             R7, SP, #8
1389B8:  MOV             R4, R0
1389BA:  BL              sub_1389E4
1389BE:  BL              sub_F0B30
1389C2:  LDR             R1, =(dword_3141F8 - 0x1389CA)
1389C4:  LDR             R2, =(byte_3141F4 - 0x1389CC)
1389C6:  ADD             R1, PC; dword_3141F8
1389C8:  ADD             R2, PC; byte_3141F4
1389CA:  STR             R0, [R1]
1389CC:  MOVS            R0, #0
1389CE:  STRB            R0, [R2]
1389D0:  MOV             R0, R4
1389D2:  POP.W           {R4,R6,R7,LR}
1389D6:  B.W             sub_13D014
