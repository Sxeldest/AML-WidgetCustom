; =========================================================
; Game Engine Function: sub_14C4E4
; Address            : 0x14C4E4 - 0x14C5A8
; =========================================================

14C4E4:  PUSH            {R4,R6,R7,LR}
14C4E6:  ADD             R7, SP, #8
14C4E8:  SUB             SP, SP, #0x120
14C4EA:  LDR             R1, =(off_23496C - 0x14C4F0)
14C4EC:  ADD             R1, PC; off_23496C
14C4EE:  LDR             R1, [R1]; dword_23DEF4
14C4F0:  LDR             R1, [R1]
14C4F2:  LDR.W           R1, [R1,#0x3B0]
14C4F6:  LDR             R4, [R1]
14C4F8:  CMP             R4, #0
14C4FA:  BEQ             loc_14C5A4
14C4FC:  LDRD.W          R1, R0, [R0]; src
14C500:  MOVS            R3, #0
14C502:  ASRS            R2, R0, #0x1F
14C504:  ADD.W           R0, R0, R2,LSR#29
14C508:  MOVS            R2, #1
14C50A:  ADD.W           R2, R2, R0,ASR#3; size
14C50E:  ADD             R0, SP, #0x128+var_124; int
14C510:  BL              sub_17D4F2
14C514:  ADD             R1, SP, #0x128+var_C; int
14C516:  MOVS            R2, #0x20 ; ' '
14C518:  MOVS            R3, #1
14C51A:  BL              sub_17D786
14C51E:  ADD             R0, SP, #0x128+var_124; int
14C520:  ADD             R1, SP, #0x128+var_10; int
14C522:  MOVS            R2, #0x20 ; ' '
14C524:  MOVS            R3, #1
14C526:  BL              sub_17D786
14C52A:  LDR             R2, [SP,#0x128+var_10]
14C52C:  CMP             R2, #0x4A ; 'J'
14C52E:  ITT EQ
14C530:  MOVEQ           R2, #0
14C532:  STREQ           R2, [SP,#0x128+var_10]
14C534:  MOV             R0, R2
14C536:  BL              sub_108480
14C53A:  LDR             R3, [SP,#0x128+var_10]
14C53C:  CLZ.W           R1, R3
14C540:  LSRS            R1, R1, #5
14C542:  ORRS            R0, R1
14C544:  CMP             R0, #1
14C546:  BNE             loc_14C560
14C548:  ADD.W           R1, R4, #0x13A0
14C54C:  LDR             R0, [SP,#0x128+var_C]
14C54E:  LDRH            R2, [R1]
14C550:  CMP             R0, R2
14C552:  BNE             loc_14C570
14C554:  LDR             R0, [R1,#0x1C]
14C556:  LDR             R0, [R0,#0x1C]
14C558:  MOV             R1, R3
14C55A:  BL              sub_103E90
14C55E:  B               loc_14C59E
14C560:  LDR             R1, =(aAxl - 0x14C568); "AXL" ...
14C562:  LDR             R2, =(aSetplayerskinD - 0x14C56A); "SetPlayerSkin %d isn't a valid ped mode"... ...
14C564:  ADD             R1, PC; "AXL"
14C566:  ADD             R2, PC; "SetPlayerSkin %d isn't a valid ped mode"...
14C568:  MOVS            R0, #5; prio
14C56A:  BLX             __android_log_print
14C56E:  B               loc_14C59E
14C570:  UXTH            R1, R0
14C572:  CMP.W           R1, #0x3EC
14C576:  BHI             loc_14C59E
14C578:  UXTAH.W         R0, R4, R0
14C57C:  LDRB.W          R0, [R0,#0xFB4]
14C580:  CBZ             R0, loc_14C59E
14C582:  ADD.W           R0, R4, R1,LSL#2
14C586:  LDR             R0, [R0,#4]
14C588:  CBZ             R0, loc_14C59E
14C58A:  LDR             R0, [R0]
14C58C:  CBZ             R0, loc_14C59E
14C58E:  LDRB            R1, [R0,#0x19]
14C590:  CBZ             R1, loc_14C59E
14C592:  LDR.W           R0, [R0,#0x128]
14C596:  CBZ             R0, loc_14C59E
14C598:  MOV             R1, R3
14C59A:  BL              sub_103E90
14C59E:  ADD             R0, SP, #0x128+var_124
14C5A0:  BL              sub_17D542
14C5A4:  ADD             SP, SP, #0x120
14C5A6:  POP             {R4,R6,R7,PC}
