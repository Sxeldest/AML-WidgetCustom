; =========================================================
; Game Engine Function: sub_11E724
; Address            : 0x11E724 - 0x11E74C
; =========================================================

11E724:  PUSH            {R4,R6,R7,LR}
11E726:  ADD             R7, SP, #8
11E728:  MOV             R4, R0
11E72A:  LDR             R0, =(off_23494C - 0x11E734)
11E72C:  MOVW            R3, #0x2F04
11E730:  ADD             R0, PC; off_23494C
11E732:  MOVT            R3, #0x67 ; 'g'
11E736:  LDR             R0, [R0]; dword_23DF24
11E738:  LDR             R0, [R0]
11E73A:  LDR             R1, =(sub_11E598+1 - 0x11E744)
11E73C:  LDR             R2, =(unk_263824 - 0x11E746)
11E73E:  ADD             R0, R3
11E740:  ADD             R1, PC; sub_11E598
11E742:  ADD             R2, PC; unk_263824
11E744:  BL              sub_164196
11E748:  MOV             R0, R4
11E74A:  POP             {R4,R6,R7,PC}
