; =========================================================
; Game Engine Function: sub_11FD18
; Address            : 0x11FD18 - 0x11FD3A
; =========================================================

11FD18:  PUSH            {R4,R6,R7,LR}
11FD1A:  ADD             R7, SP, #8
11FD1C:  MOV             R4, R0
11FD1E:  LDR             R0, =(off_23494C - 0x11FD26)
11FD20:  LDR             R1, [R4]
11FD22:  ADD             R0, PC; off_23494C
11FD24:  LDR             R0, [R0]; dword_23DF24
11FD26:  LDR             R0, [R0]
11FD28:  ADD.W           R0, R0, #0x660000
11FD2C:  ADD.W           R0, R0, #0x5980
11FD30:  MOVS            R2, #0
11FD32:  BL              sub_164196
11FD36:  MOV             R0, R4
11FD38:  POP             {R4,R6,R7,PC}
