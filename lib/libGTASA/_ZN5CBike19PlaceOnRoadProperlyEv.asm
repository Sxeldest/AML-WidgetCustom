; =========================================================
; Game Engine Function: _ZN5CBike19PlaceOnRoadProperlyEv
; Address            : 0x567494 - 0x5676E2
; =========================================================

567494:  PUSH            {R4-R7,LR}
567496:  ADD             R7, SP, #0xC
567498:  PUSH.W          {R11}
56749C:  VPUSH           {D8-D15}
5674A0:  SUB             SP, SP, #0x68
5674A2:  MOV             R4, R0
5674A4:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
5674A8:  VLDR            S24, [R0,#0x10]
5674AC:  MOV             R0, R4; this
5674AE:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
5674B2:  VMOV.F32        S30, #-5.0
5674B6:  LDR             R1, [R4,#0x14]
5674B8:  ADDS            R5, R4, #4
5674BA:  VMOV.F32        S17, #5.0
5674BE:  CMP             R1, #0
5674C0:  ADD             R3, SP, #0xB8+var_80; int
5674C2:  MOV             R2, R5
5674C4:  VLDR            S0, [R1,#0x10]
5674C8:  VLDR            S2, [R1,#0x14]
5674CC:  IT NE
5674CE:  ADDNE.W         R2, R1, #0x30 ; '0'
5674D2:  VLDR            S10, [R2,#8]
5674D6:  VMUL.F32        S12, S24, S0
5674DA:  VMUL.F32        S4, S24, S2
5674DE:  VLDR            S6, [R2]
5674E2:  VADD.F32        S14, S10, S30
5674E6:  VLDR            S8, [R2,#4]
5674EA:  VLDR            S28, [R0,#4]
5674EE:  VADD.F32        S10, S10, S17
5674F2:  MOVS            R0, #0
5674F4:  MOVS            R2, #1
5674F6:  VMUL.F32        S2, S2, S28
5674FA:  VMUL.F32        S0, S0, S28
5674FE:  VADD.F32        S16, S12, S6
567502:  VADD.F32        S18, S4, S8
567506:  VMOV            R1, S14; int
56750A:  VSTR            S10, [SP,#0xB8+var_84]
56750E:  VADD.F32        S22, S8, S2
567512:  VADD.F32        S20, S6, S0
567516:  VSTR            S18, [SP,#0xB8+var_88]
56751A:  VSTR            S16, [SP,#0xB8+var_8C]
56751E:  STRD.W          R2, R0, [SP,#0xB8+var_B8]; int
567522:  ADD             R2, SP, #0xB8+var_7C; int
567524:  STRD.W          R0, R0, [SP,#0xB8+var_B0]; int
567528:  STRD.W          R0, R0, [SP,#0xB8+var_A8]; int
56752C:  STR             R0, [SP,#0xB8+var_A0]; int
56752E:  ADD             R0, SP, #0xB8+var_8C; CVector *
567530:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
567534:  CMP             R0, #1
567536:  BNE             loc_567568
567538:  LDRB.W          R0, [SP,#0xB8+var_57]
56753C:  VLDR            S26, [SP,#0xB8+var_74]
567540:  STR.W           R0, [R4,#0x554]
567544:  LDR             R1, [SP,#0xB8+var_80]
567546:  STR.W           R1, [R4,#0x490]
56754A:  LDR             R0, [R4,#0x14]
56754C:  LDR             R2, [R1,#0x1C]
56754E:  LDRD.W          R3, R6, [R4,#0x1C]
567552:  LSRS            R2, R2, #0x1E
567554:  BFI.W           R3, R2, #0x1E, #1
567558:  STRD.W          R3, R6, [R4,#0x1C]
56755C:  LDR             R1, [R1,#0x1C]
56755E:  BFI.W           R1, R3, #0, #0x1F
567562:  STRD.W          R1, R6, [R4,#0x1C]
567566:  B               loc_567578
567568:  LDR             R0, [R4,#0x14]
56756A:  MOV             R1, R5
56756C:  CMP             R0, #0
56756E:  IT NE
567570:  ADDNE.W         R1, R0, #0x30 ; '0'
567574:  VLDR            S26, [R1,#8]
567578:  CMP             R0, #0
56757A:  MOV             R1, R5
56757C:  IT NE
56757E:  ADDNE.W         R1, R0, #0x30 ; '0'
567582:  MOVS            R0, #0
567584:  VLDR            S0, [R1,#8]
567588:  MOVS            R2, #1
56758A:  VSTR            S22, [SP,#0xB8+var_88]
56758E:  ADD             R3, SP, #0xB8+var_80; int
567590:  VADD.F32        S2, S0, S30
567594:  VSTR            S20, [SP,#0xB8+var_8C]
567598:  VADD.F32        S0, S0, S17
56759C:  VMOV            R1, S2; int
5675A0:  VSTR            S0, [SP,#0xB8+var_84]
5675A4:  STRD.W          R2, R0, [SP,#0xB8+var_B8]; int
5675A8:  ADD             R2, SP, #0xB8+var_7C; int
5675AA:  STRD.W          R0, R0, [SP,#0xB8+var_B0]; int
5675AE:  STRD.W          R0, R0, [SP,#0xB8+var_A8]; int
5675B2:  STR             R0, [SP,#0xB8+var_A0]; int
5675B4:  ADD             R0, SP, #0xB8+var_8C; CVector *
5675B6:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
5675BA:  CMP             R0, #1
5675BC:  BNE             loc_5675EE
5675BE:  LDRB.W          R0, [SP,#0xB8+var_57]
5675C2:  VLDR            S30, [SP,#0xB8+var_74]
5675C6:  STR.W           R0, [R4,#0x580]
5675CA:  LDR             R0, [SP,#0xB8+var_80]
5675CC:  STR.W           R0, [R4,#0x490]
5675D0:  LDR             R6, [R4,#0x14]
5675D2:  LDR             R1, [R0,#0x1C]
5675D4:  LDRD.W          R2, R3, [R4,#0x1C]
5675D8:  LSRS            R1, R1, #0x1E
5675DA:  BFI.W           R2, R1, #0x1E, #1
5675DE:  STRD.W          R2, R3, [R4,#0x1C]
5675E2:  LDR             R0, [R0,#0x1C]
5675E4:  BFI.W           R0, R2, #0, #0x1F
5675E8:  STRD.W          R0, R3, [R4,#0x1C]
5675EC:  B               loc_5675FC
5675EE:  LDR             R6, [R4,#0x14]
5675F0:  CMP             R6, #0
5675F2:  IT NE
5675F4:  ADDNE.W         R5, R6, #0x30 ; '0'
5675F8:  VLDR            S30, [R5,#8]
5675FC:  VSUB.F32        S24, S24, S28
567600:  VSUB.F32        S0, S26, S30
567604:  VDIV.F32        S0, S0, S24
567608:  VMOV            R0, S0; x
56760C:  BLX             atanf
567610:  VSUB.F32        S0, S16, S20
567614:  MOV             R5, R0
567616:  VSUB.F32        S2, S18, S22
56761A:  MOVS            R1, #0
56761C:  VNEG.F32        S0, S0
567620:  VDIV.F32        S2, S2, S24
567624:  VDIV.F32        S0, S0, S24
567628:  VSTR            S2, [R6]
56762C:  LDR             R0, [R4,#0x14]
56762E:  VSTR            S0, [R0,#4]
567632:  LDR             R0, [R4,#0x14]
567634:  STR             R1, [R0,#8]
567636:  MOV             R0, R5; x
567638:  BLX             cosf
56763C:  LDR             R1, [R4,#0x14]
56763E:  VMOV            S0, R0
567642:  VLDR            S2, [R1,#4]
567646:  VNMUL.F32       S2, S0, S2
56764A:  VSTR            S2, [R1,#0x10]
56764E:  LDR             R0, [R4,#0x14]
567650:  VLDR            S2, [R0]
567654:  VMUL.F32        S0, S0, S2
567658:  VSTR            S0, [R0,#0x14]
56765C:  MOV             R0, R5; x
56765E:  BLX             sinf
567662:  LDR             R1, [R4,#0x14]
567664:  STR             R0, [R1,#0x18]
567666:  ADD             R0, SP, #0xB8+var_98; CVector *
567668:  LDR             R1, [R4,#0x14]; CVector *
56766A:  ADD.W           R2, R1, #0x10
56766E:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
567672:  ADD             R2, SP, #0xB8+var_98
567674:  VMOV.F32        S24, #0.5
567678:  VADD.F32        S0, S26, S30
56767C:  LDM             R2, {R0-R2}
56767E:  VADD.F32        S16, S16, S20
567682:  VADD.F32        S18, S18, S22
567686:  LDR             R3, [R4,#0x14]
567688:  STR             R0, [R3,#0x20]
56768A:  LDR             R0, [R4,#0x14]
56768C:  VMUL.F32        S20, S0, S24
567690:  STR             R1, [R0,#0x24]
567692:  LDR             R0, [R4,#0x14]
567694:  STR             R2, [R0,#0x28]
567696:  LDR             R0, [R4]
567698:  LDR.W           R1, [R0,#0xD8]
56769C:  MOV             R0, R4
56769E:  BLX             R1
5676A0:  VMOV            S0, R0
5676A4:  LDR             R0, [R4,#0x14]
5676A6:  VMUL.F32        S2, S18, S24
5676AA:  VMUL.F32        S4, S16, S24
5676AE:  CMP             R0, #0
5676B0:  VADD.F32        S0, S20, S0
5676B4:  BEQ             loc_5676C6
5676B6:  VSTR            S4, [R0,#0x30]
5676BA:  LDR             R0, [R4,#0x14]
5676BC:  VSTR            S2, [R0,#0x34]
5676C0:  LDR             R0, [R4,#0x14]
5676C2:  ADDS            R0, #0x38 ; '8'
5676C4:  B               loc_5676D2
5676C6:  ADD.W           R0, R4, #0xC
5676CA:  VSTR            S4, [R4,#4]
5676CE:  VSTR            S2, [R4,#8]
5676D2:  VSTR            S0, [R0]
5676D6:  ADD             SP, SP, #0x68 ; 'h'
5676D8:  VPOP            {D8-D15}
5676DC:  POP.W           {R11}
5676E0:  POP             {R4-R7,PC}
