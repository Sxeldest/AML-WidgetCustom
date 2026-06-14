; =========================================================
; Game Engine Function: _ZN6CWorld48ProcessVerticalLineSectorList_FillGlobeColPointsER8CPtrListRK8CColLineRP7CEntitybP15CStoredCollPoly
; Address            : 0x426584 - 0x426760
; =========================================================

426584:  PUSH            {R4-R7,LR}
426586:  ADD             R7, SP, #0xC
426588:  PUSH.W          {R8-R11}
42658C:  SUB             SP, SP, #4
42658E:  VPUSH           {D8-D9}
426592:  SUB             SP, SP, #0x80
426594:  MOV             R5, R1
426596:  MOV.W           R1, #0x3F800000
42659A:  STR             R3, [SP,#0xB0+var_84]
42659C:  ADD.W           R10, SP, #0xB0+var_80
4265A0:  STR             R1, [SP,#0xB0+var_34]
4265A2:  LDR.W           R11, [R0]
4265A6:  MOV             R0, R5
4265A8:  VLD1.32         {D16-D17}, [R0]!
4265AC:  CMP.W           R11, #0
4265B0:  VLD1.32         {D18-D19}, [R0]
4265B4:  MOV             R0, R10
4265B6:  VST1.64         {D16-D17}, [R0]!
4265BA:  VLDR            S0, [SP,#0xB0+var_78]
4265BE:  VST1.64         {D18-D19}, [R0]
4265C2:  BEQ.W           loc_426742
4265C6:  VLDR            S2, [SP,#0xB0+var_68]
4265CA:  ADR             R0, sub_426760
4265CC:  LDR             R1, =(gaTempSphereColPoints_ptr - 0x4265DC)
4265CE:  MOVS            R4, #0
4265D0:  VSUB.F32        S16, S2, S0
4265D4:  MOV.W           R8, #0
4265D8:  ADD             R1, PC; gaTempSphereColPoints_ptr
4265DA:  VCMPE.F32       S16, #0.0
4265DE:  VMRS            APSR_nzcv, FPSCR
4265E2:  IT LT
4265E4:  ADDLT           R0, #4
4265E6:  VLDR            S18, [R0]
4265EA:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x4265F0)
4265EC:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4265EE:  LDR.W           R9, [R0]; CWorld::ms_nCurrentScanCode ...
4265F2:  LDR             R0, =(FilledColPointIndex_ptr - 0x4265F8)
4265F4:  ADD             R0, PC; FilledColPointIndex_ptr
4265F6:  LDR             R0, [R0]; FilledColPointIndex
4265F8:  STR             R0, [SP,#0xB0+var_88]
4265FA:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x426600)
4265FC:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4265FE:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
426600:  STR             R0, [SP,#0xB0+var_8C]
426602:  LDR             R0, [R1]; gaTempSphereColPoints
426604:  STR             R0, [SP,#0xB0+var_90]
426606:  LDR             R0, =(FilledColPointIndex_ptr - 0x42660E)
426608:  LDR             R1, =(gaTempSphereColPoints_ptr - 0x426610)
42660A:  ADD             R0, PC; FilledColPointIndex_ptr
42660C:  ADD             R1, PC; gaTempSphereColPoints_ptr
42660E:  LDR             R0, [R0]; FilledColPointIndex
426610:  STR             R0, [SP,#0xB0+var_94]
426612:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x426618)
426614:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
426616:  LDR             R0, [R0]; CWorld::ms_nCurrentScanCode ...
426618:  STR             R0, [SP,#0xB0+var_98]
42661A:  LDR             R0, [R1]; gaTempSphereColPoints
42661C:  STR             R0, [SP,#0xB0+var_9C]
42661E:  LDR             R0, =(FilledColPointIndex_ptr - 0x426624)
426620:  ADD             R0, PC; FilledColPointIndex_ptr
426622:  LDR             R0, [R0]; FilledColPointIndex
426624:  STR             R0, [SP,#0xB0+var_A0]
426626:  B               loc_426702
426628:  STRH            R0, [R4,#0x30]
42662A:  MOV.W           R0, #0x3F800000
42662E:  STR             R0, [SP,#0xB0+var_34]
426630:  LDR             R6, [R4,#0x14]
426632:  CBNZ            R6, loc_426644
426634:  MOV             R0, R4; this
426636:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
42663A:  LDR             R1, [R4,#0x14]; CMatrix *
42663C:  ADDS            R0, R4, #4; this
42663E:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
426642:  LDR             R6, [R4,#0x14]
426644:  MOV             R0, R4; this
426646:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
42664A:  MOV             R2, R0; CColLine *
42664C:  ADD             R0, SP, #0xB0+var_34
42664E:  STR             R0, [SP,#0xB0+var_B0]; int
426650:  MOV.W           R8, #0
426654:  LDR             R0, [SP,#0xB0+var_84]
426656:  ADD             R3, SP, #0xB0+var_60; int
426658:  STRD.W          R0, R8, [SP,#0xB0+var_AC]; int
42665C:  MOV             R0, R10; int
42665E:  MOV             R1, R6; int
426660:  STR.W           R8, [SP,#0xB0+var_A4]; int
426664:  BLX             j__ZN10CCollision19ProcessVerticalLineERK8CColLineRK7CMatrixR9CColModelR9CColPointRfbbP15CStoredCollPoly; CCollision::ProcessVerticalLine(CColLine const&,CMatrix const&,CColModel &,CColPoint &,float &,bool,bool,CStoredCollPoly *)
426668:  CMP             R0, #1
42666A:  BNE             loc_426736
42666C:  LDR             R0, [SP,#0xB0+var_88]
42666E:  LDR             R0, [R0]
426670:  CMP             R0, #0x20 ; ' '
426672:  BGE             loc_426736
426674:  LDR             R1, [SP,#0xB0+var_58]
426676:  VCMPE.F32       S16, #0.0
42667A:  VLDR            S0, [SP,#0xB0+var_68]
42667E:  STR             R1, [SP,#0xB0+var_78]
426680:  VMRS            APSR_nzcv, FPSCR
426684:  VLDR            S2, [SP,#0xB0+var_78]
426688:  VLDR            D16, [SP,#0xB0+var_60]
42668C:  VSUB.F32        S0, S0, S2
426690:  VSTR            D16, [SP,#0xB0+var_80]
426694:  BGE             loc_4266BE
426696:  VCMPE.F32       S0, #0.0
42669A:  VMRS            APSR_nzcv, FPSCR
42669E:  BGE             loc_4266F0
4266A0:  LDR             R1, [SP,#0xB0+var_8C]
4266A2:  MOVS            R2, #0x2C ; ','
4266A4:  LDR             R3, [SP,#0xB0+var_90]
4266A6:  MLA.W           R0, R0, R2, R3
4266AA:  MOVW            R2, #0xFFFF
4266AE:  LDRH            R1, [R1]
4266B0:  ADD             R1, R2
4266B2:  STRH            R1, [R4,#0x30]
4266B4:  ADD             R1, SP, #0xB0+var_60
4266B6:  BLX             j__ZN9CColPointaSERKS_; CColPoint::operator=(CColPoint const&)
4266BA:  LDR             R1, [SP,#0xB0+var_94]
4266BC:  B               loc_4266E4
4266BE:  VCMPE.F32       S0, #0.0
4266C2:  VMRS            APSR_nzcv, FPSCR
4266C6:  BLE             loc_4266F0
4266C8:  LDR             R1, [SP,#0xB0+var_98]
4266CA:  MOVS            R2, #0x2C ; ','
4266CC:  LDR             R3, [SP,#0xB0+var_9C]
4266CE:  MLA.W           R0, R0, R2, R3
4266D2:  MOVW            R2, #0xFFFF
4266D6:  LDRH            R1, [R1]
4266D8:  ADD             R1, R2
4266DA:  STRH            R1, [R4,#0x30]
4266DC:  ADD             R1, SP, #0xB0+var_60
4266DE:  BLX             j__ZN9CColPointaSERKS_; CColPoint::operator=(CColPoint const&)
4266E2:  LDR             R1, [SP,#0xB0+var_A0]
4266E4:  LDR             R0, [R1]
4266E6:  MOV.W           R8, #1
4266EA:  ADDS            R0, #1
4266EC:  STR             R0, [R1]
4266EE:  B               loc_4266F4
4266F0:  MOV.W           R8, #0
4266F4:  VLDR            S0, [SP,#0xB0+var_78]
4266F8:  VADD.F32        S0, S18, S0
4266FC:  VSTR            S0, [SP,#0xB0+var_78]
426700:  B               loc_426736
426702:  MOVS.W          R0, R8,LSL#31
426706:  BNE             loc_426720
426708:  MOV             R0, R5
42670A:  VLD1.32         {D16-D17}, [R0]!
42670E:  VLD1.32         {D18-D19}, [R0]
426712:  MOV             R0, R10
426714:  LDRD.W          R4, R11, [R11]
426718:  VST1.64         {D16-D17}, [R0]!
42671C:  VST1.64         {D18-D19}, [R0]
426720:  LDRH            R1, [R4,#0x30]
426722:  LDRH.W          R0, [R9]; CWorld::ms_nCurrentScanCode
426726:  CMP             R1, R0
426728:  BEQ             loc_426732
42672A:  LDRB            R1, [R4,#0x1C]
42672C:  LSLS            R1, R1, #0x1F
42672E:  BNE.W           loc_426628
426732:  MOV.W           R8, #0
426736:  CMP.W           R11, #0
42673A:  IT EQ
42673C:  CMPEQ.W         R8, #0
426740:  BNE             loc_426702
426742:  LDR             R0, =(FilledColPointIndex_ptr - 0x426748)
426744:  ADD             R0, PC; FilledColPointIndex_ptr
426746:  LDR             R0, [R0]; FilledColPointIndex
426748:  LDR             R1, [R0]
42674A:  MOVS            R0, #0
42674C:  CMP             R1, #0
42674E:  IT GT
426750:  MOVGT           R0, #1
426752:  ADD             SP, SP, #0x80
426754:  VPOP            {D8-D9}
426758:  ADD             SP, SP, #4
42675A:  POP.W           {R8-R11}
42675E:  POP             {R4-R7,PC}
