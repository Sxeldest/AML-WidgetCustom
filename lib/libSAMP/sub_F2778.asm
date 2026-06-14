; =========================================================
; Game Engine Function: sub_F2778
; Address            : 0xF2778 - 0xF279C
; =========================================================

F2778:  PUSH            {R4,R6,R7,LR}
F277A:  ADD             R7, SP, #8
F277C:  MOV             R4, R0
F277E:  LDR             R0, =(off_23494C - 0xF278A)
F2780:  MOVW            R2, #0x36FC
F2784:  LDR             R1, [R4]
F2786:  ADD             R0, PC; off_23494C
F2788:  MOVT            R2, #0x67 ; 'g'
F278C:  LDR             R0, [R0]; dword_23DF24
F278E:  LDR             R0, [R0]
F2790:  ADD             R0, R2
F2792:  MOVS            R2, #0
F2794:  BL              sub_164196
F2798:  MOV             R0, R4
F279A:  POP             {R4,R6,R7,PC}
