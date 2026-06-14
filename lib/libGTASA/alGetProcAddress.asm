; =========================================================
; Game Engine Function: alGetProcAddress
; Address            : 0x2542AC - 0x2542EA
; =========================================================

2542AC:  PUSH            {R4-R7,LR}
2542AE:  ADD             R7, SP, #0xC
2542B0:  PUSH.W          {R11}
2542B4:  MOV             R4, R0
2542B6:  CBZ             R4, loc_2542E2
2542B8:  LDR             R6, =(off_660E80 - 0x2542C0); "alcCreateContext" ...
2542BA:  MOVS            R5, #0
2542BC:  ADD             R6, PC; off_660E80
2542BE:  LDR.W           R0, [R6,R5,LSL#3]; char *
2542C2:  MOV             R1, R4; char *
2542C4:  BLX             strcmp
2542C8:  CBZ             R0, loc_2542D2
2542CA:  ADDS            R5, #1
2542CC:  CMP             R5, #0x98
2542CE:  BNE             loc_2542BE
2542D0:  MOVS            R5, #0x98
2542D2:  LDR             R0, =(off_660E80 - 0x2542D8); "alcCreateContext" ...
2542D4:  ADD             R0, PC; off_660E80
2542D6:  ADD.W           R0, R0, R5,LSL#3
2542DA:  LDR             R0, [R0,#4]
2542DC:  POP.W           {R11}
2542E0:  POP             {R4-R7,PC}
2542E2:  MOVS            R0, #0
2542E4:  POP.W           {R11}
2542E8:  POP             {R4-R7,PC}
