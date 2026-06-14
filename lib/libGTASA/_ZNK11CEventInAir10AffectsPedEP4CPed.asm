; =========================================================
; Game Engine Function: _ZNK11CEventInAir10AffectsPedEP4CPed
; Address            : 0x37665C - 0x3766D8
; =========================================================

37665C:  PUSH            {R4,R5,R7,LR}
37665E:  ADD             R7, SP, #8
376660:  MOV             R4, R1
376662:  LDR.W           R0, [R4,#0x440]
376666:  ADDS            R0, #4; this
376668:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
37666C:  MOV             R5, R0
37666E:  CBZ             R5, loc_376698
376670:  LDR             R0, [R5]
376672:  LDR             R1, [R0,#0x14]
376674:  MOV             R0, R5
376676:  BLX             R1
376678:  CMP             R0, #0x6C ; 'l'
37667A:  BEQ             loc_3766D4
37667C:  LDR             R0, [R5]
37667E:  LDR             R1, [R0,#0x14]
376680:  MOV             R0, R5
376682:  BLX             R1
376684:  MOVW            R1, #0x201
376688:  CMP             R0, R1
37668A:  BEQ             loc_3766D4
37668C:  LDR             R0, [R5]
37668E:  LDR             R1, [R0,#0x14]
376690:  MOV             R0, R5
376692:  BLX             R1
376694:  CMP             R0, #0xF0
376696:  BEQ             loc_3766D4
376698:  LDR.W           R0, [R4,#0x440]
37669C:  ADDS            R0, #4; this
37669E:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
3766A2:  CBZ             R0, loc_3766AE
3766A4:  LDR             R1, [R0]
3766A6:  LDR             R1, [R1,#0x14]
3766A8:  BLX             R1
3766AA:  CMP             R0, #0xCF
3766AC:  BEQ             loc_3766D4
3766AE:  LDR.W           R0, [R4,#0xE0]
3766B2:  CBNZ            R0, loc_3766D4
3766B4:  LDRB            R0, [R4,#0x1C]
3766B6:  LSLS            R0, R0, #0x1F
3766B8:  BEQ             loc_3766D4
3766BA:  LDR.W           R0, [R4,#0x100]
3766BE:  CBNZ            R0, loc_3766D4
3766C0:  MOV             R0, R4; this
3766C2:  BLX             j__ZN20CPedGeometryAnalyser7IsInAirERK4CPed; CPedGeometryAnalyser::IsInAir(CPed const&)
3766C6:  CMP             R0, #1
3766C8:  BNE             loc_3766D4
3766CA:  MOV             R0, R4; this
3766CC:  POP.W           {R4,R5,R7,LR}
3766D0:  B.W             sub_196874
3766D4:  MOVS            R0, #0
3766D6:  POP             {R4,R5,R7,PC}
