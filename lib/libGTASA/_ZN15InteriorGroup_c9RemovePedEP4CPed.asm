; =========================================================
; Game Engine Function: _ZN15InteriorGroup_c9RemovePedEP4CPed
; Address            : 0x44A556 - 0x44A636
; =========================================================

44A556:  PUSH            {R4,R5,R7,LR}
44A558:  ADD             R7, SP, #8
44A55A:  MOV             R4, R0
44A55C:  MOV             R5, R4
44A55E:  LDR.W           R0, [R5,#0x38]!
44A562:  CBZ             R0, loc_44A568
44A564:  CMP             R0, R1
44A566:  BEQ             loc_44A620
44A568:  MOV             R5, R4
44A56A:  LDR.W           R0, [R5,#0x3C]!
44A56E:  CBZ             R0, loc_44A574
44A570:  CMP             R0, R1
44A572:  BEQ             loc_44A620
44A574:  MOV             R5, R4
44A576:  LDR.W           R0, [R5,#0x40]!
44A57A:  CBZ             R0, loc_44A580
44A57C:  CMP             R0, R1
44A57E:  BEQ             loc_44A620
44A580:  MOV             R5, R4
44A582:  LDR.W           R0, [R5,#0x44]!
44A586:  CBZ             R0, loc_44A58C
44A588:  CMP             R0, R1
44A58A:  BEQ             loc_44A620
44A58C:  MOV             R5, R4
44A58E:  LDR.W           R0, [R5,#0x48]!
44A592:  CBZ             R0, loc_44A598
44A594:  CMP             R0, R1
44A596:  BEQ             loc_44A620
44A598:  MOV             R5, R4
44A59A:  LDR.W           R0, [R5,#0x4C]!
44A59E:  CBZ             R0, loc_44A5A4
44A5A0:  CMP             R0, R1
44A5A2:  BEQ             loc_44A620
44A5A4:  MOV             R5, R4
44A5A6:  LDR.W           R0, [R5,#0x50]!
44A5AA:  CBZ             R0, loc_44A5B0
44A5AC:  CMP             R0, R1
44A5AE:  BEQ             loc_44A620
44A5B0:  MOV             R5, R4
44A5B2:  LDR.W           R0, [R5,#0x54]!
44A5B6:  CBZ             R0, loc_44A5BC
44A5B8:  CMP             R0, R1
44A5BA:  BEQ             loc_44A620
44A5BC:  MOV             R5, R4
44A5BE:  LDR.W           R0, [R5,#0x58]!
44A5C2:  CBZ             R0, loc_44A5C8
44A5C4:  CMP             R0, R1
44A5C6:  BEQ             loc_44A620
44A5C8:  MOV             R5, R4
44A5CA:  LDR.W           R0, [R5,#0x5C]!
44A5CE:  CBZ             R0, loc_44A5D4
44A5D0:  CMP             R0, R1
44A5D2:  BEQ             loc_44A620
44A5D4:  MOV             R5, R4
44A5D6:  LDR.W           R0, [R5,#0x60]!
44A5DA:  CBZ             R0, loc_44A5E0
44A5DC:  CMP             R0, R1
44A5DE:  BEQ             loc_44A620
44A5E0:  MOV             R5, R4
44A5E2:  LDR.W           R0, [R5,#0x64]!
44A5E6:  CBZ             R0, loc_44A5EC
44A5E8:  CMP             R0, R1
44A5EA:  BEQ             loc_44A620
44A5EC:  MOV             R5, R4
44A5EE:  LDR.W           R0, [R5,#0x68]!
44A5F2:  CBZ             R0, loc_44A5F8
44A5F4:  CMP             R0, R1
44A5F6:  BEQ             loc_44A620
44A5F8:  MOV             R5, R4
44A5FA:  LDR.W           R0, [R5,#0x6C]!
44A5FE:  CBZ             R0, loc_44A604
44A600:  CMP             R0, R1
44A602:  BEQ             loc_44A620
44A604:  MOV             R5, R4
44A606:  LDR.W           R0, [R5,#0x70]!
44A60A:  CBZ             R0, loc_44A610
44A60C:  CMP             R0, R1
44A60E:  BEQ             loc_44A620
44A610:  MOV             R5, R4
44A612:  LDR.W           R0, [R5,#0x74]!
44A616:  CMP             R0, #0
44A618:  IT EQ
44A61A:  POPEQ           {R4,R5,R7,PC}
44A61C:  CMP             R0, R1
44A61E:  BNE             locret_44A634
44A620:  MOV             R0, R1; this
44A622:  BLX             j__ZN11CPopulation9RemovePedEP4CPed; CPopulation::RemovePed(CPed *)
44A626:  MOVS            R0, #0
44A628:  STR             R0, [R5]
44A62A:  LDRB.W          R0, [R4,#0x36]
44A62E:  SUBS            R0, #1
44A630:  STRB.W          R0, [R4,#0x36]
44A634:  POP             {R4,R5,R7,PC}
