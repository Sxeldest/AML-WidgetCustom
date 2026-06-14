; =========================================================
; Game Engine Function: sub_15535A
; Address            : 0x15535A - 0x1553C4
; =========================================================

15535A:  PUSH            {R4-R7,LR}
15535C:  ADD             R7, SP, #0xC
15535E:  PUSH.W          {R11}
155362:  SUB             SP, SP, #0x138
155364:  MOV             R4, R0
155366:  MOVS            R0, #0xFC
155368:  STR             R0, [SP,#0x148+var_18]
15536A:  ADD             R0, SP, #0x148+var_12C
15536C:  MOV             R5, R2
15536E:  MOV             R6, R1
155370:  BL              sub_17D4A8
155374:  STRB.W          R6, [R7,#var_11]
155378:  SUB.W           R1, R7, #-var_11
15537C:  MOVS            R2, #8
15537E:  MOVS            R3, #1
155380:  BL              sub_17D628
155384:  CBZ             R5, loc_15538E
155386:  ADD             R0, SP, #0x148+var_12C
155388:  MOV             R1, R5
15538A:  BL              sub_17D6C2
15538E:  LDR             R0, [R4,#0x10]
155390:  LDR             R1, [R0]
155392:  LDR             R6, [R1,#0x6C]
155394:  MOVS            R1, #0
155396:  MOVW            R2, #0xFFFF
15539A:  MOV.W           R3, #0xFFFFFFFF
15539E:  MOVS            R5, #9
1553A0:  STRD.W          R1, R3, [SP,#0x148+var_140]
1553A4:  MOVS            R3, #1
1553A6:  STRD.W          R2, R2, [SP,#0x148+var_138]
1553AA:  ADD             R2, SP, #0x148+var_12C
1553AC:  STRD.W          R5, R1, [SP,#0x148+var_148]
1553B0:  STR             R1, [SP,#0x148+var_130]
1553B2:  ADD             R1, SP, #0x148+var_18
1553B4:  BLX             R6
1553B6:  ADD             R0, SP, #0x148+var_12C
1553B8:  BL              sub_17D542
1553BC:  ADD             SP, SP, #0x138
1553BE:  POP.W           {R11}
1553C2:  POP             {R4-R7,PC}
