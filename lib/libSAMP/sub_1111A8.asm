; =========================================================
; Game Engine Function: sub_1111A8
; Address            : 0x1111A8 - 0x1111CC
; =========================================================

1111A8:  PUSH            {R4,R6,R7,LR}
1111AA:  ADD             R7, SP, #8
1111AC:  MOV             R4, R0
1111AE:  LDR             R0, =(off_23494C - 0x1111BA)
1111B0:  MOVW            R2, #0x9E4
1111B4:  LDR             R1, [R4]
1111B6:  ADD             R0, PC; off_23494C
1111B8:  MOVT            R2, #0x67 ; 'g'
1111BC:  LDR             R0, [R0]; dword_23DF24
1111BE:  LDR             R0, [R0]
1111C0:  ADD             R0, R2
1111C2:  MOVS            R2, #0
1111C4:  BL              sub_164196
1111C8:  MOV             R0, R4
1111CA:  POP             {R4,R6,R7,PC}
