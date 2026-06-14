; =========================================================
; Game Engine Function: _ZNK25CEventPedEnteredMyVehicle10AffectsPedEP4CPed
; Address            : 0x374660 - 0x374698
; =========================================================

374660:  PUSH            {R4,R5,R7,LR}
374662:  ADD             R7, SP, #8
374664:  MOV             R5, R1
374666:  MOV             R4, R0
374668:  MOV             R0, R5; this
37466A:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
37466E:  CMP             R0, #1
374670:  BNE             loc_37468A
374672:  LDR.W           R0, [R5,#0x590]
374676:  CMP             R0, #0
374678:  ITT NE
37467A:  LDRBNE.W        R1, [R5,#0x485]
37467E:  MOVSNE.W        R1, R1,LSL#31
374682:  BEQ             loc_37468A
374684:  LDR             R1, [R4,#0x14]
374686:  CMP             R0, R1
374688:  BEQ             loc_37468E
37468A:  MOVS            R0, #0
37468C:  POP             {R4,R5,R7,PC}
37468E:  LDR             R0, [R4,#0x10]
374690:  CMP             R0, #0
374692:  IT NE
374694:  MOVNE           R0, #1
374696:  POP             {R4,R5,R7,PC}
