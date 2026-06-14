; =========================================================
; Game Engine Function: png_do_check_palette_indexes
; Address            : 0x2036D0 - 0x203824
; =========================================================

2036D0:  PUSH            {R4,R6,R7,LR}
2036D2:  ADD             R7, SP, #8
2036D4:  LDRH.W          R2, [R0,#0x200]
2036D8:  CMP             R2, #0
2036DA:  BEQ.W           def_203710; jumptable 00203710 default case, cases 3,5-7
2036DE:  LDRB.W          R12, [R1,#9]
2036E2:  MOVS            R3, #1
2036E4:  LSL.W           R3, R3, R12
2036E8:  CMP             R3, R2
2036EA:  BLE.W           def_203710; jumptable 00203710 default case, cases 3,5-7
2036EE:  SUB.W           R3, R12, #1; switch 8 cases
2036F2:  CMP             R3, #7
2036F4:  BHI.W           def_203710; jumptable 00203710 default case, cases 3,5-7
2036F8:  LDRB            R2, [R1,#0xB]
2036FA:  LDRD.W          R12, R1, [R1]
2036FE:  NEGS            R2, R2
203700:  MUL.W           LR, R12, R2
203704:  LDR.W           R12, [R0,#0x1E4]
203708:  ADD             R1, R12
20370A:  SUBS            R2, R1, #1
20370C:  AND.W           R4, LR, #7
203710:  TBB.W           [PC,R3]; switch jump
203714:  DCB 4; jump table for switch statement
203715:  DCB 0x28
203716:  DCB 0x87
203717:  DCB 0x1B
203718:  DCB 0x87
203719:  DCB 0x87
20371A:  DCB 0x87
20371B:  DCB 0x43
20371C:  CMP             R2, R12; jumptable 00203710 case 1
20371E:  BLS.W           def_203710; jumptable 00203710 default case, cases 3,5-7
203722:  LDRB            R1, [R2]
203724:  LSRS            R1, R4
203726:  ITT NE
203728:  MOVNE           R1, #1
20372A:  STRNE.W         R1, [R0,#0x204]
20372E:  SUBS            R1, R2, #1
203730:  CMP             R1, R12
203732:  IT LS
203734:  POPLS           {R4,R6,R7,PC}
203736:  MOVS            R2, #1
203738:  LDRB            R3, [R1]
20373A:  SUBS            R1, #1
20373C:  CMP             R3, #0
20373E:  IT NE
203740:  STRNE.W         R2, [R0,#0x204]
203744:  CMP             R1, R12
203746:  BHI             loc_203738
203748:  B               def_203710; jumptable 00203710 default case, cases 3,5-7
20374A:  CMP             R2, R12; jumptable 00203710 case 4
20374C:  BLS             def_203710; jumptable 00203710 default case, cases 3,5-7
20374E:  LDRB            R1, [R2]
203750:  LDR.W           LR, [R0,#0x204]
203754:  LSRS            R1, R4
203756:  AND.W           R3, R1, #0xF
20375A:  CMP             R3, LR
20375C:  BLE             loc_2037B8
20375E:  STR.W           R3, [R0,#0x204]
203762:  B               loc_2037B6
203764:  CMP             R2, R12; jumptable 00203710 case 2
203766:  BLS             def_203710; jumptable 00203710 default case, cases 3,5-7
203768:  LDRB            R1, [R2]
20376A:  LDR.W           LR, [R0,#0x204]
20376E:  LSRS            R1, R4
203770:  AND.W           R3, R1, #3
203774:  CMP             R3, LR
203776:  ITT GT
203778:  STRGT.W         R3, [R0,#0x204]
20377C:  MOVGT           LR, R3
20377E:  UBFX.W          R3, R1, #2, #2
203782:  CMP             R3, LR
203784:  ITT GT
203786:  STRGT.W         R3, [R0,#0x204]
20378A:  MOVGT           LR, R3
20378C:  UBFX.W          R3, R1, #4, #2
203790:  CMP             R3, LR
203792:  BLE             loc_2037DE
203794:  STR.W           R3, [R0,#0x204]
203798:  B               loc_2037DC
20379A:  CMP             R2, R12; jumptable 00203710 case 8
20379C:  BLS             def_203710; jumptable 00203710 default case, cases 3,5-7
20379E:  LDR.W           R1, [R0,#0x204]
2037A2:  LDRB            R3, [R2]
2037A4:  SUBS            R2, #1
2037A6:  CMP             R1, R3
2037A8:  ITT LT
2037AA:  STRLT.W         R3, [R0,#0x204]
2037AE:  MOVLT           R1, R3
2037B0:  CMP             R2, R12
2037B2:  BHI             loc_2037A2
2037B4:  B               def_203710; jumptable 00203710 default case, cases 3,5-7
2037B6:  MOV             LR, R3
2037B8:  LSRS            R1, R1, #4
2037BA:  CMP             R1, LR
2037BC:  ITT GT
2037BE:  STRGT.W         R1, [R0,#0x204]
2037C2:  MOVGT           LR, R1
2037C4:  SUBS            R2, #1
2037C6:  CMP             R2, R12
2037C8:  BLS             def_203710; jumptable 00203710 default case, cases 3,5-7
2037CA:  LDRB            R1, [R2]
2037CC:  AND.W           R3, R1, #0xF
2037D0:  CMP             LR, R3
2037D2:  BGE             loc_2037B8
2037D4:  STR.W           R3, [R0,#0x204]
2037D8:  LDRB            R1, [R2]
2037DA:  B               loc_2037B6
2037DC:  MOV             LR, R3
2037DE:  LSRS            R1, R1, #6
2037E0:  CMP             R1, LR
2037E2:  ITT GT
2037E4:  STRGT.W         R1, [R0,#0x204]
2037E8:  MOVGT           LR, R1
2037EA:  SUBS            R2, #1
2037EC:  CMP             R2, R12
2037EE:  BLS             def_203710; jumptable 00203710 default case, cases 3,5-7
2037F0:  LDRB            R1, [R2]
2037F2:  AND.W           R3, R1, #3
2037F6:  CMP             LR, R3
2037F8:  ITTT LT
2037FA:  STRLT.W         R3, [R0,#0x204]
2037FE:  LDRBLT          R1, [R2]
203800:  MOVLT           LR, R3
203802:  UBFX.W          R3, R1, #2, #2
203806:  CMP             R3, LR
203808:  ITTT GT
20380A:  STRGT.W         R3, [R0,#0x204]
20380E:  LDRBGT          R1, [R2]
203810:  MOVGT           LR, R3
203812:  UBFX.W          R3, R1, #4, #2
203816:  CMP             R3, LR
203818:  BLE             loc_2037DE
20381A:  STR.W           R3, [R0,#0x204]
20381E:  LDRB            R1, [R2]
203820:  B               loc_2037DC
203822:  POP             {R4,R6,R7,PC}; jumptable 00203710 default case, cases 3,5-7
