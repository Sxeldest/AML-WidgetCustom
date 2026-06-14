; =========================================================
; Game Engine Function: sub_18B500
; Address            : 0x18B500 - 0x18B598
; =========================================================

18B500:  PUSH            {R4-R7,LR}
18B502:  ADD             R7, SP, #0xC
18B504:  PUSH.W          {R8,R9,R11}
18B508:  SUB             SP, SP, #0x40
18B50A:  MOV             R8, R0
18B50C:  ADD             R0, SP, #0x58+var_34
18B50E:  MOV             R6, R3
18B510:  MOV             R5, R2
18B512:  MOV             R9, R1
18B514:  BL              sub_F06B2
18B518:  BL              sub_F0734
18B51C:  LDRB            R2, [R0]
18B51E:  MOV             R4, R0
18B520:  LDRD.W          R1, R12, [R7,#arg_0]
18B524:  LSLS            R2, R2, #0x1F
18B526:  BNE             loc_18B52E
18B528:  MOVS            R2, #0
18B52A:  STRH            R2, [R4]
18B52C:  B               loc_18B53E
18B52E:  LDR             R2, [R4,#8]
18B530:  MOVS            R3, #0
18B532:  STRB            R3, [R2]
18B534:  LDRB            R0, [R4]
18B536:  LDR             R2, [R4]
18B538:  STR             R3, [R4,#4]
18B53A:  LSLS            R0, R0, #0x1F
18B53C:  BNE             loc_18B542
18B53E:  MOVS            R2, #9
18B540:  B               loc_18B548
18B542:  SUBS            R0, R2, #2
18B544:  BIC.W           R2, R0, #1
18B548:  LDR             R1, [R1]
18B54A:  MOVS            R0, #0
18B54C:  LDR.W           R3, [R12]
18B550:  STR             R0, [SP,#0x58+var_1C]
18B552:  STR             R0, [SP,#0x58+var_24]
18B554:  STR             R6, [SP,#0x58+var_30]
18B556:  STR             R3, [SP,#0x58+var_20]
18B558:  STR             R1, [SP,#0x58+var_28]
18B55A:  MOV.W           R3, #0x21C
18B55E:  ADD             R1, SP, #0x58+var_30
18B560:  STRD.W          R3, R0, [SP,#0x58+var_50]
18B564:  MOV             R3, R9
18B566:  STRD.W          R1, R0, [SP,#0x58+var_48]
18B56A:  ADD             R0, SP, #0x58+var_3C
18B56C:  MOV             R1, R4
18B56E:  STR             R5, [SP,#0x58+var_58]
18B570:  BL              sub_DCA40
18B574:  LDRB            R0, [R4]
18B576:  LDRD.W          R2, R1, [R4,#4]
18B57A:  ANDS.W          R3, R0, #1
18B57E:  ITT EQ
18B580:  ADDEQ           R1, R4, #1; text
18B582:  LSREQ           R2, R0, #1
18B584:  MOV             R0, R8; int
18B586:  BL              sub_ED4F8
18B58A:  ADD             R0, SP, #0x58+var_34
18B58C:  BL              sub_F0720
18B590:  ADD             SP, SP, #0x40 ; '@'
18B592:  POP.W           {R8,R9,R11}
18B596:  POP             {R4-R7,PC}
