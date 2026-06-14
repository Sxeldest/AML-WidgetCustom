; =========================================================
; Game Engine Function: sub_10FB7C
; Address            : 0x10FB7C - 0x10FBA2
; =========================================================

10FB7C:  PUSH            {R4,R6,R7,LR}
10FB7E:  ADD             R7, SP, #8
10FB80:  SUB             SP, SP, #8
10FB82:  MOV             R4, R0
10FB84:  BL              sub_10FBA8
10FB88:  LDR             R0, =(unk_263348 - 0x10FB90)
10FB8A:  STR             R4, [SP,#0x10+var_C]
10FB8C:  ADD             R0, PC; unk_263348
10FB8E:  LDR             R0, [R0,#(dword_263358 - 0x263348)]
10FB90:  CBZ             R0, loc_10FB9E
10FB92:  LDR             R1, [R0]
10FB94:  LDR             R2, [R1,#0x18]
10FB96:  ADD             R1, SP, #0x10+var_C
10FB98:  BLX             R2
10FB9A:  ADD             SP, SP, #8
10FB9C:  POP             {R4,R6,R7,PC}
10FB9E:  BL              sub_DC92C
