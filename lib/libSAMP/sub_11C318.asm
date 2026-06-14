; =========================================================
; Game Engine Function: sub_11C318
; Address            : 0x11C318 - 0x11C338
; =========================================================

11C318:  PUSH            {R7,LR}
11C31A:  MOV             R7, SP
11C31C:  SUB             SP, SP, #8
11C31E:  LDR             R0, [R0,#0x10]
11C320:  STR             R2, [SP,#0x10+var_10]
11C322:  STR             R1, [SP,#0x10+var_C]
11C324:  CBZ             R0, loc_11C334
11C326:  LDR             R1, [R0]
11C328:  MOV             R2, SP
11C32A:  LDR             R3, [R1,#0x18]
11C32C:  ADD             R1, SP, #0x10+var_C
11C32E:  BLX             R3
11C330:  ADD             SP, SP, #8
11C332:  POP             {R7,PC}
11C334:  BL              sub_DC92C
