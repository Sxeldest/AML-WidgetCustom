; =========================================================
; Game Engine Function: sub_147668
; Address            : 0x147668 - 0x1476B8
; =========================================================

147668:  PUSH            {R7,LR}
14766A:  MOV             R7, SP
14766C:  SUB             SP, SP, #0x118
14766E:  LDRD.W          R1, R0, [R0]; src
147672:  MOVS            R3, #0
147674:  ASRS            R2, R0, #0x1F
147676:  ADD.W           R0, R0, R2,LSR#29
14767A:  MOVS            R2, #1
14767C:  ADD.W           R2, R2, R0,ASR#3; size
147680:  ADD             R0, SP, #0x120+var_11C; int
147682:  BL              sub_17D4F2
147686:  MOV             R1, SP; int
147688:  MOVS            R2, #0x20 ; ' '
14768A:  MOVS            R3, #1
14768C:  BL              sub_17D786
147690:  LDR             R3, [SP,#0x120+var_120]
147692:  LDR             R1, =(aAxl - 0x14769A); "AXL" ...
147694:  LDR             R2, =(aEditattachedob - 0x14769C); "EditAttachedObject: attachedObjectIndex"... ...
147696:  ADD             R1, PC; "AXL"
147698:  ADD             R2, PC; "EditAttachedObject: attachedObjectIndex"...
14769A:  MOVS            R0, #4; prio
14769C:  BLX             __android_log_print
1476A0:  LDR             R0, =(off_234A20 - 0x1476A8)
1476A2:  LDR             R1, [SP,#0x120+var_120]
1476A4:  ADD             R0, PC; off_234A20
1476A6:  LDR             R0, [R0]; dword_23DF0C
1476A8:  LDR             R0, [R0]
1476AA:  BL              sub_147DA0
1476AE:  ADD             R0, SP, #0x120+var_11C
1476B0:  BL              sub_17D542
1476B4:  ADD             SP, SP, #0x118
1476B6:  POP             {R7,PC}
