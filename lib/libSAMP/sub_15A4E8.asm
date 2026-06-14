; =========================================================
; Game Engine Function: sub_15A4E8
; Address            : 0x15A4E8 - 0x15A5B2
; =========================================================

15A4E8:  PUSH            {R4,R5,R7,LR}
15A4EA:  ADD             R7, SP, #8
15A4EC:  SUB             SP, SP, #0x118
15A4EE:  MOV             R4, R0
15A4F0:  LDR             R0, =(byte_381A50 - 0x15A4F6)
15A4F2:  ADD             R0, PC; byte_381A50
15A4F4:  LDRB            R0, [R0]
15A4F6:  DMB.W           ISH
15A4FA:  LSLS            R0, R0, #0x1F
15A4FC:  BEQ             loc_15A572
15A4FE:  MOVS            R0, #0
15A500:  STRB.W          R0, [R7,#var_9]
15A504:  CBZ             R4, loc_15A56E
15A506:  LDR             R0, [R4]
15A508:  CBZ             R0, loc_15A56E
15A50A:  LDR             R0, [R4,#4]
15A50C:  CMP             R0, #8
15A50E:  BCC             loc_15A56E
15A510:  LDR             R1, =(unk_BA6B0 - 0x15A516)
15A512:  ADD             R1, PC; unk_BA6B0
15A514:  ADD.W           R0, R4, #8
15A518:  BL              sub_17E596
15A51C:  CBZ             R0, loc_15A56E
15A51E:  LDRD.W          R1, R0, [R4]; src
15A522:  ADDS            R0, #7
15A524:  MOVS            R3, #0
15A526:  LSRS            R2, R0, #3; size
15A528:  MOV             R0, SP; int
15A52A:  BL              sub_17D4F2
15A52E:  SUB.W           R1, R7, #-var_9; int
15A532:  MOV             R0, SP; int
15A534:  MOVS            R2, #8
15A536:  MOVS            R3, #1
15A538:  BL              sub_17D786
15A53C:  LDRB.W          R0, [R7,#var_9]
15A540:  LDR             R4, =(off_234A54 - 0x15A548)
15A542:  CMP             R0, #3
15A544:  ADD             R4, PC; off_234A54
15A546:  BEQ             loc_15A550
15A548:  LDR             R0, [R4]; dword_381A0C
15A54A:  LDR             R0, [R0]
15A54C:  LDR             R0, [R0,#0x58]
15A54E:  CBZ             R0, loc_15A568
15A550:  LDR             R0, =(unk_381A3C - 0x15A556)
15A552:  ADD             R0, PC; unk_381A3C
15A554:  SUB.W           R1, R7, #-var_9
15A558:  BL              sub_15BB58
15A55C:  CBZ             R0, loc_15A568
15A55E:  LDR             R1, [R4]; dword_381A0C
15A560:  LDR             R2, [R0,#0xC]
15A562:  LDR             R0, [R1]
15A564:  MOV             R1, SP
15A566:  BLX             R2
15A568:  MOV             R0, SP
15A56A:  BL              sub_17D542
15A56E:  ADD             SP, SP, #0x118
15A570:  POP             {R4,R5,R7,PC}
15A572:  LDR             R0, =(byte_381A50 - 0x15A578)
15A574:  ADD             R0, PC; byte_381A50 ; __guard *
15A576:  BLX             j___cxa_guard_acquire
15A57A:  CMP             R0, #0
15A57C:  BEQ             loc_15A4FE
15A57E:  LDR             R1, =(unk_22F7A8 - 0x15A58A)
15A580:  MOV             R5, SP
15A582:  MOV             R0, R5; dest
15A584:  MOVS            R2, #0x90; n
15A586:  ADD             R1, PC; unk_22F7A8 ; src
15A588:  BLX             j_memcpy
15A58C:  LDR             R0, =(unk_381A3C - 0x15A592)
15A58E:  ADD             R0, PC; unk_381A3C
15A590:  MOV             R1, R5
15A592:  MOVS            R2, #0x12
15A594:  BL              sub_15B1DC
15A598:  LDR             R0, =(sub_15B226+1 - 0x15A5A2)
15A59A:  LDR             R1, =(unk_381A3C - 0x15A5A4)
15A59C:  LDR             R2, =(off_22A540 - 0x15A5A6)
15A59E:  ADD             R0, PC; sub_15B226 ; lpfunc
15A5A0:  ADD             R1, PC; unk_381A3C ; obj
15A5A2:  ADD             R2, PC; off_22A540 ; lpdso_handle
15A5A4:  BLX             __cxa_atexit
15A5A8:  LDR             R0, =(byte_381A50 - 0x15A5AE)
15A5AA:  ADD             R0, PC; byte_381A50 ; __guard *
15A5AC:  BLX             j___cxa_guard_release
15A5B0:  B               loc_15A4FE
