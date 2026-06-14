; =========================================================
; Game Engine Function: sub_11B590
; Address            : 0x11B590 - 0x11B5B0
; =========================================================

11B590:  PUSH            {R7,LR}
11B592:  MOV             R7, SP
11B594:  SUB             SP, SP, #8
11B596:  LDR             R0, [R0,#0x10]
11B598:  STR             R2, [SP,#0x10+var_10]
11B59A:  STR             R1, [SP,#0x10+var_C]
11B59C:  CBZ             R0, loc_11B5AC
11B59E:  LDR             R1, [R0]
11B5A0:  MOV             R2, SP
11B5A2:  LDR             R3, [R1,#0x18]
11B5A4:  ADD             R1, SP, #0x10+var_C
11B5A6:  BLX             R3
11B5A8:  ADD             SP, SP, #8
11B5AA:  POP             {R7,PC}
11B5AC:  BL              sub_DC92C
