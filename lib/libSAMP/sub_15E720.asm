; =========================================================
; Game Engine Function: sub_15E720
; Address            : 0x15E720 - 0x15E748
; =========================================================

15E720:  PUSH            {R7,LR}
15E722:  MOV             R7, SP
15E724:  SUB             SP, SP, #8
15E726:  MOV             R12, R2
15E728:  MOV             R2, R1
15E72A:  MOV             R1, R0
15E72C:  LDR             R0, =(off_234A38 - 0x15E732)
15E72E:  ADD             R0, PC; off_234A38
15E730:  LDR             R0, [R0]; dword_23DEF8
15E732:  LDR             R0, [R0]
15E734:  CBZ             R0, loc_15E744
15E736:  LDR.W           LR, [R7,#8]
15E73A:  STRD.W          R3, LR, [SP,#0x10+var_10]
15E73E:  MOV             R3, R12
15E740:  BL              sub_F146C
15E744:  ADD             SP, SP, #8
15E746:  POP             {R7,PC}
