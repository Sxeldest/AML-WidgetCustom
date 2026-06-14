; =========================================================
; Game Engine Function: sub_11F53C
; Address            : 0x11F53C - 0x11F5C0
; =========================================================

11F53C:  PUSH            {R4-R7,LR}
11F53E:  ADD             R7, SP, #0xC
11F540:  PUSH.W          {R8,R9,R11}
11F544:  SUB             SP, SP, #0x30
11F546:  MOV             R8, R0
11F548:  ADD             R0, SP, #0x48+var_24
11F54A:  MOV             R6, R3
11F54C:  MOV             R5, R2
11F54E:  MOV             R9, R1
11F550:  BL              sub_F06B2
11F554:  BL              sub_F0734
11F558:  MOV             R4, R0
11F55A:  LDRB            R0, [R0]
11F55C:  LSLS            R0, R0, #0x1F
11F55E:  BNE             loc_11F566
11F560:  MOVS            R0, #0
11F562:  STRH            R0, [R4]
11F564:  B               loc_11F576
11F566:  LDR             R0, [R4,#8]
11F568:  MOVS            R1, #0
11F56A:  STRB            R1, [R0]
11F56C:  LDRB            R2, [R4]
11F56E:  LDR             R0, [R4]
11F570:  STR             R1, [R4,#4]
11F572:  LSLS            R1, R2, #0x1F
11F574:  BNE             loc_11F57A
11F576:  MOVS            R2, #9
11F578:  B               loc_11F580
11F57A:  SUBS            R0, #2
11F57C:  BIC.W           R2, R0, #1
11F580:  STR             R6, [SP,#0x48+var_20]
11F582:  MOVS            R0, #0
11F584:  MOVS            R3, #0xC
11F586:  ADD             R1, SP, #0x48+var_20
11F588:  STRD.W          R3, R0, [SP,#0x48+var_40]
11F58C:  STRD.W          R1, R0, [SP,#0x48+var_38]
11F590:  ADD             R0, SP, #0x48+var_2C
11F592:  MOV             R1, R4
11F594:  MOV             R3, R9
11F596:  STR             R5, [SP,#0x48+var_48]
11F598:  BL              sub_DCA40
11F59C:  LDRB            R0, [R4]
11F59E:  LDRD.W          R2, R1, [R4,#4]
11F5A2:  ANDS.W          R3, R0, #1
11F5A6:  ITT EQ
11F5A8:  ADDEQ           R1, R4, #1; text
11F5AA:  LSREQ           R2, R0, #1
11F5AC:  MOV             R0, R8; int
11F5AE:  BL              sub_ED4F8
11F5B2:  ADD             R0, SP, #0x48+var_24
11F5B4:  BL              sub_F0720
11F5B8:  ADD             SP, SP, #0x30 ; '0'
11F5BA:  POP.W           {R8,R9,R11}
11F5BE:  POP             {R4-R7,PC}
