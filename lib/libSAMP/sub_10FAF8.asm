; =========================================================
; Game Engine Function: sub_10FAF8
; Address            : 0x10FAF8 - 0x10FB1E
; =========================================================

10FAF8:  PUSH            {R4,R6,R7,LR}
10FAFA:  ADD             R7, SP, #8
10FAFC:  SUB             SP, SP, #8
10FAFE:  MOV             R4, R0
10FB00:  BL              sub_10FB24
10FB04:  LDR             R0, =(unk_263328 - 0x10FB0C)
10FB06:  STR             R4, [SP,#0x10+var_C]
10FB08:  ADD             R0, PC; unk_263328
10FB0A:  LDR             R0, [R0,#(dword_263338 - 0x263328)]
10FB0C:  CBZ             R0, loc_10FB1A
10FB0E:  LDR             R1, [R0]
10FB10:  LDR             R2, [R1,#0x18]
10FB12:  ADD             R1, SP, #0x10+var_C
10FB14:  BLX             R2
10FB16:  ADD             SP, SP, #8
10FB18:  POP             {R4,R6,R7,PC}
10FB1A:  BL              sub_DC92C
