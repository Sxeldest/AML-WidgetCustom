; =========================================================
; Game Engine Function: sub_11C084
; Address            : 0x11C084 - 0x11C0A4
; =========================================================

11C084:  PUSH            {R7,LR}
11C086:  MOV             R7, SP
11C088:  SUB             SP, SP, #8
11C08A:  LDR             R0, [R0,#0x10]
11C08C:  STR             R2, [SP,#0x10+var_10]
11C08E:  STR             R1, [SP,#0x10+var_C]
11C090:  CBZ             R0, loc_11C0A0
11C092:  LDR             R1, [R0]
11C094:  MOV             R2, SP
11C096:  LDR             R3, [R1,#0x18]
11C098:  ADD             R1, SP, #0x10+var_C
11C09A:  BLX             R3
11C09C:  ADD             SP, SP, #8
11C09E:  POP             {R7,PC}
11C0A0:  BL              sub_DC92C
