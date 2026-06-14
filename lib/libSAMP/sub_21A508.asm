; =========================================================
; Game Engine Function: sub_21A508
; Address            : 0x21A508 - 0x21A5B4
; =========================================================

21A508:  PUSH            {R4-R7,LR}
21A50A:  ADD             R7, SP, #0xC
21A50C:  PUSH.W          {R11}
21A510:  SUB             SP, SP, #0x38
21A512:  MOV             R4, R1
21A514:  LDR             R1, =(__stack_chk_guard_ptr - 0x21A51A)
21A516:  ADD             R1, PC; __stack_chk_guard_ptr
21A518:  LDR             R1, [R1]; __stack_chk_guard
21A51A:  LDR             R1, [R1]
21A51C:  STR             R1, [SP,#0x48+var_14]
21A51E:  LDRD.W          R2, R0, [R0,#8]
21A522:  SUBS            R0, R0, R2
21A524:  ADDS            R0, #1
21A526:  CMP             R0, #0x11
21A528:  BCC             loc_21A59A
21A52A:  ADD             R1, SP, #0x48+var_40
21A52C:  MOVS            R0, #0
21A52E:  CMP             R0, #0x10
21A530:  BEQ             loc_21A564
21A532:  LDRB            R3, [R2,R0]
21A534:  SUB.W           R5, R3, #0x3A ; ':'
21A538:  CMN.W           R5, #0xA
21A53C:  IT CC
21A53E:  ADDCC           R3, #9
21A540:  ADDS            R5, R2, R0
21A542:  LDRB            R5, [R5,#1]
21A544:  SUB.W           R6, R5, #0x3A ; ':'
21A548:  CMN.W           R6, #0xA
21A54C:  MOV             R6, #0xFFFFFFD0
21A550:  IT CC
21A552:  MOVCC           R6, #0xFFFFFFA9
21A556:  ADD             R5, R6
21A558:  ADD.W           R3, R5, R3,LSL#4
21A55C:  STRB.W          R3, [R1],#1
21A560:  ADDS            R0, #2
21A562:  B               loc_21A52E
21A564:  ADD             R0, SP, #0x48+var_40
21A566:  BL              sub_20F088
21A56A:  ADD             R5, SP, #0x48+var_38
21A56C:  VMOV.I32        Q8, #0
21A570:  MOVS            R1, #0x20 ; ' '
21A572:  MOVS            R2, #0x20 ; ' '
21A574:  MOV             R0, R5
21A576:  VST1.64         {D16-D17}, [R0]!
21A57A:  VST1.64         {D16-D17}, [R0]
21A57E:  MOV             R0, R5
21A580:  VLDR            D16, [SP,#0x48+var_40]
21A584:  VSTR            D16, [SP,#0x48+var_48]
21A588:  LDR             R3, =(aA_0 - 0x21A58E); "%a" ...
21A58A:  ADD             R3, PC; "%a"
21A58C:  BL              sub_21A4C4
21A590:  ADDS            R2, R5, R0
21A592:  MOV             R0, R4
21A594:  MOV             R1, R5
21A596:  BL              sub_216F98
21A59A:  LDR             R0, [SP,#0x48+var_14]
21A59C:  LDR             R1, =(__stack_chk_guard_ptr - 0x21A5A2)
21A59E:  ADD             R1, PC; __stack_chk_guard_ptr
21A5A0:  LDR             R1, [R1]; __stack_chk_guard
21A5A2:  LDR             R1, [R1]
21A5A4:  CMP             R1, R0
21A5A6:  ITTT EQ
21A5A8:  ADDEQ           SP, SP, #0x38 ; '8'
21A5AA:  POPEQ.W         {R11}
21A5AE:  POPEQ           {R4-R7,PC}
21A5B0:  BLX             __stack_chk_fail
