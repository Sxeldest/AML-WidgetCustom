; =========================================================
; Game Engine Function: _ZN11FxManager_c14CreateFxSystemEP12FxSystemBP_cP11RwMatrixTagS3_h
; Address            : 0x36D6A0 - 0x36D73A
; =========================================================

36D6A0:  PUSH            {R4-R7,LR}
36D6A2:  ADD             R7, SP, #0xC
36D6A4:  PUSH.W          {R8,R9,R11}
36D6A8:  SUB             SP, SP, #8
36D6AA:  MOV             R5, R1
36D6AC:  MOV             R6, R3
36D6AE:  MOV             R4, R2
36D6B0:  MOV             R9, R0
36D6B2:  CBZ             R5, loc_36D70A
36D6B4:  LDR             R0, [R7,#arg_0]
36D6B6:  MOV             R1, R5
36D6B8:  STR             R0, [SP,#0x20+var_20]
36D6BA:  MOV             R0, R9
36D6BC:  MOV             R2, R4
36D6BE:  MOV             R3, R6
36D6C0:  BLX             j__ZN11FxManager_c12ShouldCreateEP12FxSystemBP_cP11RwMatrixTagS3_h; FxManager_c::ShouldCreate(FxSystemBP_c *,RwMatrixTag *,RwMatrixTag *,uchar)
36D6C4:  CBZ             R0, loc_36D70A
36D6C6:  MOV.W           R0, #0x108; unsigned int
36D6CA:  BLX             _Znwj; operator new(uint)
36D6CE:  MOV             R8, R0
36D6D0:  BLX             j__ZN10FxSystem_cC2Ev; FxSystem_c::FxSystem_c(void)
36D6D4:  MOV             R1, R5
36D6D6:  MOV             R2, R4
36D6D8:  MOV             R3, R6
36D6DA:  BLX             j__ZN10FxSystem_c4InitEP12FxSystemBP_cP11RwMatrixTagS3_; FxSystem_c::Init(FxSystemBP_c *,RwMatrixTag *,RwMatrixTag *)
36D6DE:  ADD.W           R0, R9, #0xC; this
36D6E2:  MOV             R1, R8; ListItem_c *
36D6E4:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
36D6E8:  LDR             R0, =(g_fx_ptr - 0x36D6EE)
36D6EA:  ADD             R0, PC; g_fx_ptr
36D6EC:  LDR             R0, [R0]; g_fx ; this
36D6EE:  BLX             j__ZN4Fx_c12GetFxQualityEv; Fx_c::GetFxQuality(void)
36D6F2:  CBZ             R0, loc_36D710
36D6F4:  LDR             R0, =(g_fx_ptr - 0x36D6FA)
36D6F6:  ADD             R0, PC; g_fx_ptr
36D6F8:  LDR             R0, [R0]; g_fx ; this
36D6FA:  BLX             j__ZN4Fx_c12GetFxQualityEv; Fx_c::GetFxQuality(void)
36D6FE:  CMP             R0, #1
36D700:  BNE             loc_36D718
36D702:  MOV             R0, R8
36D704:  MOV.W           R1, #0x3F400000
36D708:  B               loc_36D72C
36D70A:  MOV.W           R8, #0
36D70E:  B               loc_36D730
36D710:  MOV             R0, R8
36D712:  MOV.W           R1, #0x3F000000
36D716:  B               loc_36D72C
36D718:  LDR             R0, =(g_fx_ptr - 0x36D71E)
36D71A:  ADD             R0, PC; g_fx_ptr
36D71C:  LDR             R0, [R0]; g_fx ; this
36D71E:  BLX             j__ZN4Fx_c12GetFxQualityEv; Fx_c::GetFxQuality(void)
36D722:  CMP             R0, #2
36D724:  BLT             loc_36D730
36D726:  MOV             R0, R8; this
36D728:  MOV.W           R1, #0x3F800000; float
36D72C:  BLX             j__ZN10FxSystem_c11SetRateMultEf; FxSystem_c::SetRateMult(float)
36D730:  MOV             R0, R8
36D732:  ADD             SP, SP, #8
36D734:  POP.W           {R8,R9,R11}
36D738:  POP             {R4-R7,PC}
