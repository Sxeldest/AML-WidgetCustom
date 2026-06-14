; =========================================================
; Game Engine Function: sub_15E950
; Address            : 0x15E950 - 0x15E998
; =========================================================

15E950:  PUSH            {R4,R5,R7,LR}
15E952:  ADD             R7, SP, #8
15E954:  SUB             SP, SP, #0x20
15E956:  MOV             R5, R0
15E958:  LDR             R0, [R0]
15E95A:  STR             R2, [SP,#0x28+var_1C]
15E95C:  CBZ             R0, loc_15E994
15E95E:  MOV             R4, R1
15E960:  STR             R1, [SP,#0x28+var_10]
15E962:  ADD             R1, SP, #0x28+var_10
15E964:  BL              sub_15FAE4
15E968:  CBZ             R0, loc_15E994
15E96A:  MOV             R0, R5
15E96C:  MOV             R1, R4
15E96E:  BL              sub_15E798
15E972:  LDR             R3, =(unk_BA757 - 0x15E986)
15E974:  ADD             R1, SP, #0x28+var_18
15E976:  ADD             R2, SP, #0x28+var_1C
15E978:  ADD             R5, SP, #0x28+var_14
15E97A:  STRD.W          R5, R1, [SP,#0x28+var_28]
15E97E:  ADD.W           R1, R0, #0x14
15E982:  ADD             R3, PC; unk_BA757
15E984:  ADD             R0, SP, #0x28+var_10
15E986:  STR             R2, [SP,#0x28+var_14]
15E988:  BL              sub_15F6EC
15E98C:  LDR             R0, [SP,#0x28+var_10]
15E98E:  MOVS            R1, #0
15E990:  STRB.W          R1, [R0,#0x60]
15E994:  ADD             SP, SP, #0x20 ; ' '
15E996:  POP             {R4,R5,R7,PC}
