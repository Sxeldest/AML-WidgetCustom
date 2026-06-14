; =========================================================
; Game Engine Function: sub_14E518
; Address            : 0x14E518 - 0x14E586
; =========================================================

14E518:  PUSH            {R4,R6,R7,LR}
14E51A:  ADD             R7, SP, #8
14E51C:  SUB             SP, SP, #0x120
14E51E:  LDR             R1, =(off_23496C - 0x14E524)
14E520:  ADD             R1, PC; off_23496C
14E522:  LDR             R1, [R1]; dword_23DEF4
14E524:  LDR             R1, [R1]
14E526:  LDR.W           R1, [R1,#0x3B0]
14E52A:  LDR             R4, [R1,#0x1C]
14E52C:  CBZ             R4, loc_14E582
14E52E:  LDRD.W          R1, R0, [R0]; src
14E532:  MOVS            R3, #0
14E534:  ASRS            R2, R0, #0x1F
14E536:  ADD.W           R0, R0, R2,LSR#29
14E53A:  MOVS            R2, #1
14E53C:  ADD.W           R2, R2, R0,ASR#3; size
14E540:  ADD             R0, SP, #0x128+var_124; int
14E542:  BL              sub_17D4F2
14E546:  SUB.W           R1, R7, #-var_A; int
14E54A:  MOVS            R2, #0x10
14E54C:  MOVS            R3, #1
14E54E:  BL              sub_17D786
14E552:  ADD             R0, SP, #0x128+var_124; int
14E554:  ADD             R1, SP, #0x128+var_10; int
14E556:  MOVS            R2, #0x20 ; ' '
14E558:  MOVS            R3, #1
14E55A:  BL              sub_17D786
14E55E:  LDRH.W          R0, [R7,#var_A]
14E562:  LSRS            R1, R0, #3
14E564:  CMP             R1, #0x7C ; '|'
14E566:  BHI             loc_14E57C
14E568:  ADDS            R1, R4, R0
14E56A:  LDRB.W          R1, [R1,#0xFA0]
14E56E:  CBZ             R1, loc_14E57C
14E570:  LDR.W           R0, [R4,R0,LSL#2]
14E574:  CBZ             R0, loc_14E57C
14E576:  LDR             R1, [SP,#0x128+var_10]
14E578:  BL              sub_F7FBC
14E57C:  ADD             R0, SP, #0x128+var_124
14E57E:  BL              sub_17D542
14E582:  ADD             SP, SP, #0x120
14E584:  POP             {R4,R6,R7,PC}
