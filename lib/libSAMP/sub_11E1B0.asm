; =========================================================
; Game Engine Function: sub_11E1B0
; Address            : 0x11E1B0 - 0x11E1D4
; =========================================================

11E1B0:  PUSH            {R4,R6,R7,LR}
11E1B2:  ADD             R7, SP, #8
11E1B4:  MOV             R4, R0
11E1B6:  LDR             R0, =(off_23494C - 0x11E1C2)
11E1B8:  MOVW            R2, #0x6EC
11E1BC:  LDR             R1, [R4]
11E1BE:  ADD             R0, PC; off_23494C
11E1C0:  MOVT            R2, #0x67 ; 'g'
11E1C4:  LDR             R0, [R0]; dword_23DF24
11E1C6:  LDR             R0, [R0]
11E1C8:  ADD             R0, R2
11E1CA:  MOVS            R2, #0
11E1CC:  BL              sub_164196
11E1D0:  MOV             R0, R4
11E1D2:  POP             {R4,R6,R7,PC}
