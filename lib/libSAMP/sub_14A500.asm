; =========================================================
; Game Engine Function: sub_14A500
; Address            : 0x14A500 - 0x14A606
; =========================================================

14A500:  PUSH            {R4-R7,LR}
14A502:  ADD             R7, SP, #0xC
14A504:  PUSH.W          {R8,R9,R11}
14A508:  VPUSH           {D8}
14A50C:  SUB             SP, SP, #0x10
14A50E:  MOV             R4, R0
14A510:  LDR             R0, =(off_234970 - 0x14A51A)
14A512:  MOV             R6, R3
14A514:  MOV             R9, R2
14A516:  ADD             R0, PC; off_234970
14A518:  LDR.W           R8, [R0]; dword_23DEF0
14A51C:  LDR.W           R0, [R8]
14A520:  BL              sub_F9B84
14A524:  CMP             R0, #0
14A526:  BEQ             loc_14A5E6
14A528:  LDR.W           R1, [R4,#0x128]
14A52C:  VLDR            S16, [R7,#arg_0]
14A530:  CBZ             R1, loc_14A540
14A532:  LDR.W           R0, [R8]
14A536:  BL              sub_F9E64
14A53A:  MOVS            R0, #0
14A53C:  STR.W           R0, [R4,#0x128]
14A540:  LDRD.W          R2, R3, [R6]; int
14A544:  MOVS            R5, #1
14A546:  LDR             R1, [R6,#8]
14A548:  LDRB            R6, [R4,#0x18]
14A54A:  LDR.W           R0, [R8]; int
14A54E:  STR             R1, [SP,#0x30+var_30]; float
14A550:  MOV             R1, R9; int
14A552:  STRD.W          R5, R6, [SP,#0x30+var_28]
14A556:  VSTR            S16, [SP,#0x30+var_2C]
14A55A:  BL              sub_F9DEC
14A55E:  MOV             R5, R0
14A560:  CMP             R0, #0
14A562:  BEQ             loc_14A5EA
14A564:  LDR             R1, =(aAxl - 0x14A572); "AXL" ...
14A566:  MOVS            R0, #3; prio
14A568:  LDR             R2, =(aSpawnPlayerP - 0x14A574); "Spawn player %p" ...
14A56A:  LDR.W           R3, [R4,#0x128]
14A56E:  ADD             R1, PC; "AXL"
14A570:  ADD             R2, PC; "Spawn player %p"
14A572:  LDR             R6, [R7,#arg_4]
14A574:  BLX             __android_log_print
14A578:  CBZ             R6, loc_14A582
14A57A:  LDRH            R0, [R4,#0x14]
14A57C:  MOV             R1, R6
14A57E:  BL              sub_107120
14A582:  LDR.W           R1, [R4,#0x12C]
14A586:  CBZ             R1, loc_14A596
14A588:  LDR.W           R0, [R8]
14A58C:  BL              sub_F9A3C
14A590:  MOVS            R0, #0
14A592:  STR.W           R0, [R4,#0x12C]
14A596:  LDR             R0, =(off_23496C - 0x14A59E)
14A598:  LDR             R6, [R7,#arg_8]
14A59A:  ADD             R0, PC; off_23496C
14A59C:  LDR             R0, [R0]; dword_23DEF4
14A59E:  LDR             R0, [R0]
14A5A0:  LDR.W           R0, [R0,#0x20C]
14A5A4:  LDRB.W          R0, [R0,#0x34]
14A5A8:  CBZ             R0, loc_14A5B2
14A5AA:  LDRH            R1, [R4,#0x14]
14A5AC:  MOV             R0, R5
14A5AE:  BL              sub_104AC0
14A5B2:  ADD.W           R0, R4, #0x1B
14A5B6:  STR             R0, [R5,#0x58]
14A5B8:  MOVS            R0, #0
14A5BA:  MOVS            R1, #0
14A5BC:  MOVT            R0, #0x42C8
14A5C0:  MOVS            R2, #0
14A5C2:  STR             R0, [R4,#8]
14A5C4:  MOV             R0, R5
14A5C6:  MOVS            R3, #0
14A5C8:  STR.W           R5, [R4,#0x128]
14A5CC:  BL              sub_104B1C
14A5D0:  CMP             R6, #4
14A5D2:  BEQ             loc_14A5DC
14A5D4:  MOV             R0, R5
14A5D6:  MOV             R1, R6
14A5D8:  BL              sub_104D40
14A5DC:  LDRB            R0, [R4,#0x19]
14A5DE:  CMP             R0, #0x21 ; '!'
14A5E0:  BEQ             loc_14A5F2
14A5E2:  MOVS            R0, #0x21 ; '!'
14A5E4:  B               loc_14A5F0
14A5E6:  MOVS            R5, #0
14A5E8:  B               loc_14A5F8
14A5EA:  LDRB            R0, [R4,#0x19]
14A5EC:  CBZ             R0, loc_14A5F2
14A5EE:  MOVS            R0, #0
14A5F0:  STRB            R0, [R4,#0x19]
14A5F2:  CMP             R5, #0
14A5F4:  IT NE
14A5F6:  MOVNE           R5, #1
14A5F8:  MOV             R0, R5
14A5FA:  ADD             SP, SP, #0x10
14A5FC:  VPOP            {D8}
14A600:  POP.W           {R8,R9,R11}
14A604:  POP             {R4-R7,PC}
