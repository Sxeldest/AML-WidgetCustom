; =========================================================
; Game Engine Function: sub_120C7C
; Address            : 0x120C7C - 0x120CC6
; =========================================================

120C7C:  PUSH            {R4,R5,R7,LR}
120C7E:  ADD             R7, SP, #8
120C80:  SUB             SP, SP, #0x28
120C82:  LDR             R0, [R0,#0x10]
120C84:  STRD.W          R2, R1, [SP,#0x30+var_10]
120C88:  STR             R3, [SP,#0x30+var_14]
120C8A:  CBZ             R0, loc_120CC2
120C8C:  LDR             R1, [R0]
120C8E:  ADD.W           LR, R7, #0x1C
120C92:  ADD.W           R3, R7, #0x14
120C96:  ADD.W           R2, R7, #0x18
120C9A:  ADD.W           R4, R7, #0xC
120C9E:  ADD.W           R5, R7, #8
120CA2:  LDR.W           R12, [R1,#0x18]
120CA6:  ADD.W           R1, R7, #0x10
120CAA:  STRD.W          R1, R3, [SP,#0x30+var_28]
120CAE:  ADD             R1, SP, #0x30+var_C
120CB0:  STRD.W          R2, LR, [SP,#0x30+var_20]
120CB4:  ADD             R2, SP, #0x30+var_10
120CB6:  ADD             R3, SP, #0x30+var_14
120CB8:  STRD.W          R5, R4, [SP,#0x30+var_30]
120CBC:  BLX             R12
120CBE:  ADD             SP, SP, #0x28 ; '('
120CC0:  POP             {R4,R5,R7,PC}
120CC2:  BL              sub_DC92C
