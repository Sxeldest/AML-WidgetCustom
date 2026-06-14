; =========================================================
; Game Engine Function: sub_11B37C
; Address            : 0x11B37C - 0x11B3C4
; =========================================================

11B37C:  PUSH            {R4,R5,R7,LR}
11B37E:  ADD             R7, SP, #8
11B380:  MOV             R4, R0
11B382:  LDR             R0, [R0,#0x10]
11B384:  MOV             R5, R1
11B386:  MOVS            R1, #0
11B388:  CMP             R4, R0
11B38A:  STR             R1, [R4,#0x10]
11B38C:  BEQ             loc_11B394
11B38E:  CBZ             R0, loc_11B39E
11B390:  MOVS            R1, #5
11B392:  B               loc_11B396
11B394:  MOVS            R1, #4
11B396:  LDR             R2, [R0]
11B398:  LDR.W           R1, [R2,R1,LSL#2]
11B39C:  BLX             R1
11B39E:  LDR             R0, [R5,#0x10]
11B3A0:  CBZ             R0, loc_11B3AE
11B3A2:  CMP             R5, R0
11B3A4:  BEQ             loc_11B3B4
11B3A6:  STR             R0, [R4,#0x10]
11B3A8:  MOVS            R0, #0
11B3AA:  STR             R0, [R5,#0x10]
11B3AC:  B               loc_11B3C0
11B3AE:  MOVS            R0, #0
11B3B0:  STR             R0, [R4,#0x10]
11B3B2:  B               loc_11B3C0
11B3B4:  STR             R4, [R4,#0x10]
11B3B6:  LDR             R0, [R5,#0x10]
11B3B8:  LDR             R1, [R0]
11B3BA:  LDR             R2, [R1,#0xC]
11B3BC:  MOV             R1, R4
11B3BE:  BLX             R2
11B3C0:  MOV             R0, R4
11B3C2:  POP             {R4,R5,R7,PC}
