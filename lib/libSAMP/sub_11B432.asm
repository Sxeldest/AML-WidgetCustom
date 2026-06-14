; =========================================================
; Game Engine Function: sub_11B432
; Address            : 0x11B432 - 0x11B452
; =========================================================

11B432:  PUSH            {R7,LR}
11B434:  MOV             R7, SP
11B436:  SUB             SP, SP, #8
11B438:  LDR             R0, [R0,#0x10]
11B43A:  STR             R2, [SP,#0x10+var_10]
11B43C:  STR             R1, [SP,#0x10+var_C]
11B43E:  CBZ             R0, loc_11B44E
11B440:  LDR             R1, [R0]
11B442:  MOV             R2, SP
11B444:  LDR             R3, [R1,#0x18]
11B446:  ADD             R1, SP, #0x10+var_C
11B448:  BLX             R3
11B44A:  ADD             SP, SP, #8
11B44C:  POP             {R7,PC}
11B44E:  BL              sub_DC92C
