; =========================================================
; Game Engine Function: sub_11FF0C
; Address            : 0x11FF0C - 0x11FF46
; =========================================================

11FF0C:  PUSH            {R7,LR}
11FF0E:  MOV             R7, SP
11FF10:  SUB             SP, SP, #0x18
11FF12:  LDR             R0, [R0,#0x10]
11FF14:  LDR.W           R12, [R7,#0xC]
11FF18:  STRD.W          R2, R1, [SP,#0x20+var_10]
11FF1C:  STR             R3, [SP,#0x20+var_14]
11FF1E:  STRB.W          R12, [R7,#-0xD]
11FF22:  CBZ             R0, loc_11FF42
11FF24:  LDR             R1, [R0]
11FF26:  ADD.W           R2, R7, #8
11FF2A:  ADD             R3, SP, #0x20+var_14
11FF2C:  LDR.W           R12, [R1,#0x18]
11FF30:  SUB.W           R1, R7, #0xD
11FF34:  STRD.W          R2, R1, [SP,#0x20+var_20]
11FF38:  ADD             R1, SP, #0x20+var_C
11FF3A:  ADD             R2, SP, #0x20+var_10
11FF3C:  BLX             R12
11FF3E:  ADD             SP, SP, #0x18
11FF40:  POP             {R7,PC}
11FF42:  BL              sub_DC92C
