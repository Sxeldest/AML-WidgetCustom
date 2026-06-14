; =========================================================
; Game Engine Function: sub_11DA48
; Address            : 0x11DA48 - 0x11DA6A
; =========================================================

11DA48:  PUSH            {R4,R6,R7,LR}
11DA4A:  ADD             R7, SP, #8
11DA4C:  LDR             R4, =(unk_2637AC - 0x11DA54)
11DA4E:  MOVS            R1, #0
11DA50:  ADD             R4, PC; unk_2637AC
11DA52:  MOV             R0, R4
11DA54:  BL              sub_11D378
11DA58:  LDR             R0, =(sub_11D3A0+1 - 0x11DA62)
11DA5A:  MOV             R1, R4
11DA5C:  LDR             R2, =(off_22A540 - 0x11DA64)
11DA5E:  ADD             R0, PC; sub_11D3A0
11DA60:  ADD             R2, PC; off_22A540
11DA62:  POP.W           {R4,R6,R7,LR}
11DA66:  B.W             sub_224250
