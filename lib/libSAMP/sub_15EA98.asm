; =========================================================
; Game Engine Function: sub_15EA98
; Address            : 0x15EA98 - 0x15EADC
; =========================================================

15EA98:  PUSH            {R4,R5,R7,LR}
15EA9A:  ADD             R7, SP, #8
15EA9C:  SUB             SP, SP, #0x20
15EA9E:  MOV             R5, R0
15EAA0:  LDR             R0, [R0]
15EAA2:  STR             R2, [SP,#0x28+var_1C]
15EAA4:  CBZ             R0, loc_15EAD8
15EAA6:  MOV             R4, R1
15EAA8:  STR             R1, [SP,#0x28+var_10]
15EAAA:  ADD             R1, SP, #0x28+var_10
15EAAC:  BL              sub_15FAE4
15EAB0:  CBZ             R0, loc_15EAD8
15EAB2:  MOV             R0, R5
15EAB4:  MOV             R1, R4
15EAB6:  BL              sub_15E798
15EABA:  LDR             R3, =(unk_BA757 - 0x15EAC8)
15EABC:  MOV             R1, R0
15EABE:  ADD             R0, SP, #0x28+var_18
15EAC0:  ADD             R2, SP, #0x28+var_1C
15EAC2:  ADD             R5, SP, #0x28+var_14
15EAC4:  ADD             R3, PC; unk_BA757
15EAC6:  STRD.W          R5, R0, [SP,#0x28+var_28]
15EACA:  ADD             R0, SP, #0x28+var_10
15EACC:  STR             R2, [SP,#0x28+var_14]
15EACE:  BL              sub_15F2EE
15EAD2:  LDR             R0, [SP,#0x28+var_10]
15EAD4:  MOVS            R1, #0
15EAD6:  STRB            R1, [R0,#0x15]
15EAD8:  ADD             SP, SP, #0x20 ; ' '
15EADA:  POP             {R4,R5,R7,PC}
