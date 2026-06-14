; =========================================================
; Game Engine Function: sub_F5894
; Address            : 0xF5894 - 0xF58C2
; =========================================================

F5894:  PUSH            {R7,LR}
F5896:  MOV             R7, SP
F5898:  MOV             R1, R0
F589A:  LDR             R0, =(off_23494C - 0xF58A0)
F589C:  ADD             R0, PC; off_23494C
F589E:  LDR             R0, [R0]; dword_23DF24
F58A0:  LDR             R2, [R0]
F58A2:  MOVS            R0, #0
F58A4:  CBZ             R2, locret_F58BC
F58A6:  MOV             R3, #0x674718
F58AE:  ADDS            R2, R2, R3
F58B0:  IT EQ
F58B2:  POPEQ           {R7,PC}
F58B4:  LDR             R2, [R2]
F58B6:  CBZ             R2, loc_F58BE
F58B8:  MOV             R0, R1
F58BA:  BLX             R2
F58BC:  POP             {R7,PC}
F58BE:  MOVS            R0, #0
F58C0:  POP             {R7,PC}
