; =========================================================
; Game Engine Function: alGetSource3i64SOFT
; Address            : 0x25A470 - 0x25A5A4
; =========================================================

25A470:  PUSH            {R4-R7,LR}
25A472:  ADD             R7, SP, #0xC
25A474:  PUSH.W          {R8-R10}
25A478:  SUB             SP, SP, #0x18
25A47A:  MOV             R8, R3
25A47C:  MOV             R9, R2
25A47E:  MOV             R5, R1
25A480:  MOV             R6, R0
25A482:  LDR.W           R10, [R7,#arg_0]
25A486:  BLX             j_GetContextRef
25A48A:  MOV             R4, R0
25A48C:  CBZ             R4, loc_25A4E8
25A48E:  ADD.W           R0, R4, #8
25A492:  MOV             R1, R6
25A494:  BLX             j_LookupUIntMapKey
25A498:  CBZ             R0, loc_25A4F0
25A49A:  CMP.W           R9, #0
25A49E:  IT NE
25A4A0:  CMPNE.W         R8, #0
25A4A4:  BEQ             loc_25A526
25A4A6:  CMP.W           R10, #0
25A4AA:  BEQ             loc_25A526
25A4AC:  MOVW            R1, #0x1004
25A4B0:  SUBS            R1, R5, R1
25A4B2:  CMP             R1, #3
25A4B4:  BCC             loc_25A4C0
25A4B6:  MOVS            R1, #0x20006
25A4BC:  CMP             R5, R1
25A4BE:  BNE             loc_25A55A
25A4C0:  MOV             R3, SP
25A4C2:  MOV             R1, R4
25A4C4:  MOV             R2, R5
25A4C6:  BL              sub_25A180
25A4CA:  CMP             R0, #0
25A4CC:  BNE             loc_25A594
25A4CE:  LDRD.W          R0, R1, [SP,#0x30+var_30]
25A4D2:  STRD.W          R0, R1, [R9]
25A4D6:  LDRD.W          R0, R1, [SP,#0x30+var_28]
25A4DA:  STRD.W          R0, R1, [R8]
25A4DE:  LDRD.W          R0, R1, [SP,#0x30+var_20]
25A4E2:  STRD.W          R0, R1, [R10]
25A4E6:  B               loc_25A594
25A4E8:  ADD             SP, SP, #0x18
25A4EA:  POP.W           {R8-R10}
25A4EE:  POP             {R4-R7,PC}
25A4F0:  LDR             R0, =(TrapALError_ptr - 0x25A4F6)
25A4F2:  ADD             R0, PC; TrapALError_ptr
25A4F4:  LDR             R0, [R0]; TrapALError
25A4F6:  LDRB            R0, [R0]
25A4F8:  CMP             R0, #0
25A4FA:  ITT NE
25A4FC:  MOVNE           R0, #5; sig
25A4FE:  BLXNE           raise
25A502:  LDREX.W         R0, [R4,#0x50]
25A506:  CMP             R0, #0
25A508:  BNE             loc_25A58C
25A50A:  ADD.W           R0, R4, #0x50 ; 'P'
25A50E:  MOVW            R1, #0xA001
25A512:  DMB.W           ISH
25A516:  STREX.W         R2, R1, [R0]
25A51A:  CBZ             R2, loc_25A590
25A51C:  LDREX.W         R2, [R0]
25A520:  CMP             R2, #0
25A522:  BEQ             loc_25A516
25A524:  B               loc_25A58C
25A526:  LDR             R0, =(TrapALError_ptr - 0x25A52C)
25A528:  ADD             R0, PC; TrapALError_ptr
25A52A:  LDR             R0, [R0]; TrapALError
25A52C:  LDRB            R0, [R0]
25A52E:  CMP             R0, #0
25A530:  ITT NE
25A532:  MOVNE           R0, #5; sig
25A534:  BLXNE           raise
25A538:  LDREX.W         R0, [R4,#0x50]
25A53C:  CBNZ            R0, loc_25A58C
25A53E:  ADD.W           R0, R4, #0x50 ; 'P'
25A542:  MOVW            R1, #0xA003
25A546:  DMB.W           ISH
25A54A:  STREX.W         R2, R1, [R0]
25A54E:  CBZ             R2, loc_25A590
25A550:  LDREX.W         R2, [R0]
25A554:  CMP             R2, #0
25A556:  BEQ             loc_25A54A
25A558:  B               loc_25A58C
25A55A:  LDR             R0, =(TrapALError_ptr - 0x25A560)
25A55C:  ADD             R0, PC; TrapALError_ptr
25A55E:  LDR             R0, [R0]; TrapALError
25A560:  LDRB            R0, [R0]
25A562:  CMP             R0, #0
25A564:  ITT NE
25A566:  MOVNE           R0, #5; sig
25A568:  BLXNE           raise
25A56C:  LDREX.W         R0, [R4,#0x50]
25A570:  CBNZ            R0, loc_25A58C
25A572:  ADD.W           R0, R4, #0x50 ; 'P'
25A576:  MOVW            R1, #0xA002
25A57A:  DMB.W           ISH
25A57E:  STREX.W         R2, R1, [R0]
25A582:  CBZ             R2, loc_25A590
25A584:  LDREX.W         R2, [R0]
25A588:  CMP             R2, #0
25A58A:  BEQ             loc_25A57E
25A58C:  CLREX.W
25A590:  DMB.W           ISH
25A594:  MOV             R0, R4
25A596:  ADD             SP, SP, #0x18
25A598:  POP.W           {R8-R10}
25A59C:  POP.W           {R4-R7,LR}
25A5A0:  B.W             ALCcontext_DecRef
