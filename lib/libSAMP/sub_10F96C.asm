; =========================================================
; Game Engine Function: sub_10F96C
; Address            : 0x10F96C - 0x10F992
; =========================================================

10F96C:  PUSH            {R4,R6,R7,LR}
10F96E:  ADD             R7, SP, #8
10F970:  SUB             SP, SP, #8
10F972:  MOV             R4, R0
10F974:  BL              sub_10F998
10F978:  LDR             R0, =(unk_2632C8 - 0x10F980)
10F97A:  STR             R4, [SP,#0x10+var_C]
10F97C:  ADD             R0, PC; unk_2632C8
10F97E:  LDR             R0, [R0,#(dword_2632D8 - 0x2632C8)]
10F980:  CBZ             R0, loc_10F98E
10F982:  LDR             R1, [R0]
10F984:  LDR             R2, [R1,#0x18]
10F986:  ADD             R1, SP, #0x10+var_C
10F988:  BLX             R2
10F98A:  ADD             SP, SP, #8
10F98C:  POP             {R4,R6,R7,PC}
10F98E:  BL              sub_DC92C
