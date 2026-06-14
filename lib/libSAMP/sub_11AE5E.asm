; =========================================================
; Game Engine Function: sub_11AE5E
; Address            : 0x11AE5E - 0x11AE8A
; =========================================================

11AE5E:  PUSH            {R7,LR}
11AE60:  MOV             R7, SP
11AE62:  SUB             SP, SP, #0x10
11AE64:  LDR             R0, [R0,#0x10]
11AE66:  STRD.W          R2, R1, [SP,#0x18+var_10]
11AE6A:  STR             R3, [SP,#0x18+var_14]
11AE6C:  CBZ             R0, loc_11AE86
11AE6E:  LDR             R1, [R0]
11AE70:  ADD             R2, SP, #0x18+var_10
11AE72:  ADD             R3, SP, #0x18+var_14
11AE74:  LDR.W           R12, [R1,#0x18]
11AE78:  ADD.W           R1, R7, #8
11AE7C:  STR             R1, [SP,#0x18+var_18]
11AE7E:  ADD             R1, SP, #0x18+var_C
11AE80:  BLX             R12
11AE82:  ADD             SP, SP, #0x10
11AE84:  POP             {R7,PC}
11AE86:  BL              sub_DC92C
