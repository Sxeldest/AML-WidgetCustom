; =========================================================
; Game Engine Function: sub_110388
; Address            : 0x110388 - 0x1103AC
; =========================================================

110388:  PUSH            {R4,R6,R7,LR}
11038A:  ADD             R7, SP, #8
11038C:  MOV             R4, R0
11038E:  LDR             R0, =(off_23494C - 0x11039A)
110390:  MOVW            R2, #0xED18
110394:  LDR             R1, [R4]
110396:  ADD             R0, PC; off_23494C
110398:  MOVT            R2, #0x66 ; 'f'
11039C:  LDR             R0, [R0]; dword_23DF24
11039E:  LDR             R0, [R0]
1103A0:  ADD             R0, R2
1103A2:  MOVS            R2, #0
1103A4:  BL              sub_164196
1103A8:  MOV             R0, R4
1103AA:  POP             {R4,R6,R7,PC}
