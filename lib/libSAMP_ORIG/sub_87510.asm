; =========================================================
; Game Engine Function: sub_87510
; Address            : 0x87510 - 0x875DA
; =========================================================

87510:  PUSH            {R4-R7,LR}
87512:  ADD             R7, SP, #0xC
87514:  PUSH.W          {R8,R9,R11}
87518:  SUB             SP, SP, #8
8751A:  LDR             R0, =(__stack_chk_guard_ptr - 0x87522)
8751C:  MOV             R4, R2
8751E:  ADD             R0, PC; __stack_chk_guard_ptr
87520:  LDR             R0, [R0]; __stack_chk_guard
87522:  LDR             R0, [R0]
87524:  STR             R0, [SP,#0x20+var_1C]
87526:  LDR.W           R9, [R2]
8752A:  STR             R1, [SP,#0x20+var_20]
8752C:  CMP.W           R9, #0
87530:  BEQ             loc_87586
87532:  LDR             R6, [R4,#4]
87534:  MOV             R8, R1
87536:  MOV             R1, R9
87538:  CMP             R6, #0
8753A:  ITTE NE
8753C:  STRNE           R6, [R4,#8]
8753E:  MOVNE           R5, R6
87540:  LDREQ           R5, [R4,#8]
87542:  LDR.W           R0, [R8,#4]
87546:  LDR             R2, [R5]
87548:  LDR             R2, [R2,#4]
8754A:  CMP             R2, R0
8754C:  BCS             loc_87586
8754E:  LDR             R2, [R5,#8]
87550:  CMP             R2, R6
87552:  ITT NE
87554:  STRNE           R2, [R4,#8]
87556:  MOVNE           R5, R2
87558:  SUBS            R1, #1
8755A:  BNE             loc_87546
8755C:  CMP             R6, #0
8755E:  ITT NE
87560:  LDRNE           R5, [R6,#4]
87562:  STRNE           R5, [R4,#8]
87564:  MOVS            R0, #0xC; unsigned int
87566:  CMP.W           R9, #1
8756A:  BEQ             loc_875A8
8756C:  CMP.W           R9, #0
87570:  BNE             loc_875BE
87572:  BLX             j__Znwj; operator new(uint)
87576:  MOVS            R1, #1
87578:  STR             R0, [R4,#8]
8757A:  STRD.W          R1, R0, [R4]
8757E:  STRD.W          R8, R0, [R0]
87582:  STR             R0, [R0,#8]
87584:  B               loc_8758E
87586:  MOV             R1, SP
87588:  MOV             R0, R4
8758A:  BL              sub_8767C
8758E:  LDR             R0, [SP,#0x20+var_1C]
87590:  LDR             R1, =(__stack_chk_guard_ptr - 0x87596)
87592:  ADD             R1, PC; __stack_chk_guard_ptr
87594:  LDR             R1, [R1]; __stack_chk_guard
87596:  LDR             R1, [R1]
87598:  CMP             R1, R0
8759A:  ITTT EQ
8759C:  ADDEQ           SP, SP, #8
8759E:  POPEQ.W         {R8,R9,R11}
875A2:  POPEQ           {R4-R7,PC}
875A4:  BLX             __stack_chk_fail
875A8:  BLX             j__Znwj; operator new(uint)
875AC:  MOVS            R1, #2
875AE:  STRD.W          R0, R0, [R6,#4]
875B2:  STR             R6, [R4,#8]
875B4:  STR             R1, [R4]
875B6:  STRD.W          R8, R6, [R0]
875BA:  STR             R6, [R0,#8]
875BC:  B               loc_8758E
875BE:  BLX             j__Znwj; operator new(uint)
875C2:  LDR             R1, [R5,#8]
875C4:  STR             R1, [R0,#8]
875C6:  ADD.W           R1, R9, #1
875CA:  LDR             R2, [R5,#8]
875CC:  STR             R5, [R0,#4]
875CE:  STR.W           R8, [R0]
875D2:  STR             R1, [R4]
875D4:  STR             R0, [R5,#8]
875D6:  STR             R0, [R2,#4]
875D8:  B               loc_8758E
