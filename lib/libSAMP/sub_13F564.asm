; =========================================================
; Game Engine Function: sub_13F564
; Address            : 0x13F564 - 0x13F5D4
; =========================================================

13F564:  PUSH            {R4,R5,R7,LR}
13F566:  ADD             R7, SP, #8
13F568:  SUB             SP, SP, #0x120
13F56A:  MOV             R4, R0
13F56C:  ADD             R0, SP, #0x128+var_120
13F56E:  BL              sub_17D4A8
13F572:  MOVS            R1, #0xCD
13F574:  STRB.W          R1, [SP,#0x128+var_C]
13F578:  ADD             R1, SP, #0x128+var_C
13F57A:  MOVS            R2, #8
13F57C:  MOVS            R3, #1
13F57E:  BL              sub_17D628
13F582:  LDR             R0, =(off_234970 - 0x13F588)
13F584:  ADD             R0, PC; off_234970
13F586:  LDR             R0, [R0]; dword_23DEF0
13F588:  LDR             R0, [R0]
13F58A:  BL              sub_FA350
13F58E:  STR             R0, [SP,#0x128+var_C]
13F590:  ADD             R0, SP, #0x128+var_120
13F592:  ADD             R1, SP, #0x128+var_C
13F594:  MOVS            R2, #0x20 ; ' '
13F596:  MOVS            R3, #1
13F598:  BL              sub_17D628
13F59C:  LDR             R0, [R4,#0x1C]
13F59E:  LDR             R0, [R0,#0x48]
13F5A0:  STR             R0, [SP,#0x128+var_C]
13F5A2:  ADD             R0, SP, #0x128+var_120
13F5A4:  ADD             R1, SP, #0x128+var_C
13F5A6:  MOVS            R2, #0x20 ; ' '
13F5A8:  MOVS            R3, #1
13F5AA:  MOVS            R5, #1
13F5AC:  BL              sub_17D628
13F5B0:  LDR             R0, =(off_23496C - 0x13F5B6)
13F5B2:  ADD             R0, PC; off_23496C
13F5B4:  LDR             R0, [R0]; dword_23DEF4
13F5B6:  LDR             R0, [R0]
13F5B8:  LDR.W           R0, [R0,#0x210]
13F5BC:  LDR             R1, [R0]
13F5BE:  LDR             R4, [R1,#0x20]
13F5C0:  ADD             R1, SP, #0x128+var_120
13F5C2:  MOVS            R2, #1
13F5C4:  MOVS            R3, #6
13F5C6:  STR             R5, [SP,#0x128+var_128]
13F5C8:  BLX             R4
13F5CA:  ADD             R0, SP, #0x128+var_120
13F5CC:  BL              sub_17D542
13F5D0:  ADD             SP, SP, #0x120
13F5D2:  POP             {R4,R5,R7,PC}
