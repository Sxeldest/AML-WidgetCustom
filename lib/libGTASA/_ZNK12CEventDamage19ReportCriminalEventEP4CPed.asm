; =========================================================
; Game Engine Function: _ZNK12CEventDamage19ReportCriminalEventEP4CPed
; Address            : 0x372676 - 0x372734
; =========================================================

372676:  PUSH            {R4-R7,LR}
372678:  ADD             R7, SP, #0xC
37267A:  PUSH.W          {R8}
37267E:  SUB             SP, SP, #8
372680:  MOV             R6, R0
372682:  MOV             R4, R1
372684:  LDR             R0, [R6]
372686:  LDR             R1, [R0,#0x20]
372688:  MOV             R0, R6
37268A:  BLX             R1
37268C:  CMP             R0, #1
37268E:  BNE             loc_37272C
372690:  LDR             R0, [R6,#0x10]
372692:  CMP             R0, #0
372694:  BEQ             loc_37272C
372696:  LDR.W           R0, [R4,#0x59C]; this
37269A:  BLX             j__ZN8CPedType39PoliceDontCareAboutCrimesAgainstPedTypeEi; CPedType::PoliceDontCareAboutCrimesAgainstPedType(int)
37269E:  MOV             R8, R0
3726A0:  LDR             R0, [R6,#0x18]
3726A2:  CMP             R0, #9
3726A4:  BGT             loc_3726CE
3726A6:  MOV.W           R0, #0xFFFFFFFF; int
3726AA:  LDR.W           R5, [R4,#0x59C]
3726AE:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
3726B2:  LDR             R1, [R6,#0x10]
3726B4:  LDR             R3, [R1,#0x14]
3726B6:  ADD.W           R2, R3, #0x30 ; '0'
3726BA:  CMP             R3, #0
3726BC:  IT EQ
3726BE:  ADDEQ           R2, R1, #4
3726C0:  CMP             R5, #6
3726C2:  STR.W           R8, [SP,#0x18+var_18]
3726C6:  ITE EQ
3726C8:  MOVEQ           R1, #3
3726CA:  MOVNE           R1, #2
3726CC:  B               loc_372726
3726CE:  CMP             R0, #0x29 ; ')'
3726D0:  BGT             loc_3726FA
3726D2:  MOV.W           R0, #0xFFFFFFFF; int
3726D6:  LDR.W           R5, [R4,#0x59C]
3726DA:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
3726DE:  LDR             R1, [R6,#0x10]
3726E0:  LDR             R3, [R1,#0x14]
3726E2:  ADD.W           R2, R3, #0x30 ; '0'
3726E6:  CMP             R3, #0
3726E8:  IT EQ
3726EA:  ADDEQ           R2, R1, #4
3726EC:  CMP             R5, #6
3726EE:  STR.W           R8, [SP,#0x18+var_18]
3726F2:  ITE NE
3726F4:  MOVNE           R1, #4
3726F6:  MOVEQ           R1, #5
3726F8:  B               loc_372726
3726FA:  SUBS            R0, #0x31 ; '1'
3726FC:  CMP             R0, #1
3726FE:  BHI             loc_37272C
372700:  MOV.W           R0, #0xFFFFFFFF; int
372704:  LDR.W           R5, [R4,#0x59C]
372708:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
37270C:  LDR             R1, [R6,#0x10]
37270E:  LDR             R3, [R1,#0x14]
372710:  ADD.W           R2, R3, #0x30 ; '0'
372714:  CMP             R3, #0
372716:  IT EQ
372718:  ADDEQ           R2, R1, #4
37271A:  CMP             R5, #6
37271C:  STR.W           R8, [SP,#0x18+var_18]
372720:  ITE NE
372722:  MOVNE           R1, #0xA
372724:  MOVEQ           R1, #0xB
372726:  MOV             R3, R4
372728:  BLX             j__ZN7CWanted13RegisterCrimeE10eCrimeTypeRK7CVectorjb; CWanted::RegisterCrime(eCrimeType,CVector const&,uint,bool)
37272C:  ADD             SP, SP, #8
37272E:  POP.W           {R8}
372732:  POP             {R4-R7,PC}
