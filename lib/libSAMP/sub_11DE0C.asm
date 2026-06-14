; =========================================================
; Game Engine Function: sub_11DE0C
; Address            : 0x11DE0C - 0x11DE38
; =========================================================

11DE0C:  PUSH            {R7,LR}
11DE0E:  MOV             R7, SP
11DE10:  SUB             SP, SP, #0x10
11DE12:  LDR             R0, [R0,#0x10]
11DE14:  STRD.W          R2, R1, [SP,#0x18+var_10]
11DE18:  STR             R3, [SP,#0x18+var_14]
11DE1A:  CBZ             R0, loc_11DE34
11DE1C:  LDR             R1, [R0]
11DE1E:  ADD             R2, SP, #0x18+var_10
11DE20:  ADD             R3, SP, #0x18+var_14
11DE22:  LDR.W           R12, [R1,#0x18]
11DE26:  ADD.W           R1, R7, #8
11DE2A:  STR             R1, [SP,#0x18+var_18]
11DE2C:  ADD             R1, SP, #0x18+var_C
11DE2E:  BLX             R12
11DE30:  ADD             SP, SP, #0x10
11DE32:  POP             {R7,PC}
11DE34:  BL              sub_DC92C
