; =========================================================
; Game Engine Function: sub_18B34C
; Address            : 0x18B34C - 0x18B3E2
; =========================================================

18B34C:  PUSH            {R4-R7,LR}
18B34E:  ADD             R7, SP, #0xC
18B350:  PUSH.W          {R8,R9,R11}
18B354:  SUB             SP, SP, #0x40
18B356:  MOV             R8, R0
18B358:  ADD             R0, SP, #0x58+var_34
18B35A:  MOV             R6, R3
18B35C:  MOV             R5, R2
18B35E:  MOV             R9, R1
18B360:  BL              sub_F06B2
18B364:  BL              sub_F0734
18B368:  LDRB            R2, [R0]
18B36A:  MOV             R4, R0
18B36C:  LDRD.W          R12, R1, [R7,#arg_0]
18B370:  LSLS            R2, R2, #0x1F
18B372:  BNE             loc_18B37A
18B374:  MOVS            R2, #0
18B376:  STRH            R2, [R4]
18B378:  B               loc_18B38A
18B37A:  LDR             R2, [R4,#8]
18B37C:  MOVS            R3, #0
18B37E:  STRB            R3, [R2]
18B380:  LDRB            R0, [R4]
18B382:  LDR             R2, [R4]
18B384:  STR             R3, [R4,#4]
18B386:  LSLS            R0, R0, #0x1F
18B388:  BNE             loc_18B38E
18B38A:  MOVS            R2, #9
18B38C:  B               loc_18B394
18B38E:  SUBS            R0, R2, #2
18B390:  BIC.W           R2, R0, #1
18B394:  LDR             R1, [R1]
18B396:  MOVS            R0, #0
18B398:  LDR.W           R3, [R12]
18B39C:  STR             R0, [SP,#0x58+var_24]
18B39E:  STR             R6, [SP,#0x58+var_30]
18B3A0:  STR             R3, [SP,#0x58+var_28]
18B3A2:  STR             R1, [SP,#0x58+var_20]
18B3A4:  MOVW            R3, #0xC2C
18B3A8:  ADD             R1, SP, #0x58+var_30
18B3AA:  STRD.W          R3, R0, [SP,#0x58+var_50]
18B3AE:  MOV             R3, R9
18B3B0:  STRD.W          R1, R0, [SP,#0x58+var_48]
18B3B4:  ADD             R0, SP, #0x58+var_3C
18B3B6:  MOV             R1, R4
18B3B8:  STR             R5, [SP,#0x58+var_58]
18B3BA:  BL              sub_DCA40
18B3BE:  LDRB            R0, [R4]
18B3C0:  LDRD.W          R2, R1, [R4,#4]
18B3C4:  ANDS.W          R3, R0, #1
18B3C8:  ITT EQ
18B3CA:  ADDEQ           R1, R4, #1; text
18B3CC:  LSREQ           R2, R0, #1
18B3CE:  MOV             R0, R8; int
18B3D0:  BL              sub_ED4F8
18B3D4:  ADD             R0, SP, #0x58+var_34
18B3D6:  BL              sub_F0720
18B3DA:  ADD             SP, SP, #0x40 ; '@'
18B3DC:  POP.W           {R8,R9,R11}
18B3E0:  POP             {R4-R7,PC}
