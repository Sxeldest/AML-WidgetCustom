; =========================================================
; Game Engine Function: sub_110564
; Address            : 0x110564 - 0x1105A4
; =========================================================

110564:  PUSH            {R7,LR}
110566:  MOV             R7, SP
110568:  SUB             SP, SP, #0x20
11056A:  LDR             R0, [R0,#0x10]
11056C:  LDR.W           R12, [R7,#8]
110570:  STRD.W          R2, R1, [SP,#0x28+var_10]
110574:  STR             R3, [SP,#0x28+var_14]
110576:  STRB.W          R12, [R7,#-0xD]
11057A:  CBZ             R0, loc_1105A0
11057C:  LDR             R1, [R0]
11057E:  ADD.W           R2, R7, #0xC
110582:  SUB.W           R3, R7, #0xD
110586:  LDR.W           R12, [R1,#0x18]
11058A:  ADD.W           R1, R7, #0x10
11058E:  STRD.W          R3, R2, [SP,#0x28+var_28]
110592:  ADD             R2, SP, #0x28+var_10
110594:  STR             R1, [SP,#0x28+var_20]
110596:  ADD             R1, SP, #0x28+var_C
110598:  ADD             R3, SP, #0x28+var_14
11059A:  BLX             R12
11059C:  ADD             SP, SP, #0x20 ; ' '
11059E:  POP             {R7,PC}
1105A0:  BL              sub_DC92C
