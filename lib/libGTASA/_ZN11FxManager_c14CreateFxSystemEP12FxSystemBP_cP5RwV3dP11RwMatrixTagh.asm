; =========================================================
; Game Engine Function: _ZN11FxManager_c14CreateFxSystemEP12FxSystemBP_cP5RwV3dP11RwMatrixTagh
; Address            : 0x36D824 - 0x36D936
; =========================================================

36D824:  PUSH            {R4-R7,LR}
36D826:  ADD             R7, SP, #0xC
36D828:  PUSH.W          {R8-R10}
36D82C:  SUB             SP, SP, #8
36D82E:  MOV             R6, R1
36D830:  MOV             R9, R3
36D832:  MOV             R8, R0
36D834:  MOVS            R5, #0
36D836:  CMP             R6, #0
36D838:  BEQ             loc_36D92C
36D83A:  LDR             R0, =(g_fxMan_ptr - 0x36D844)
36D83C:  LDR.W           R10, [R7,#arg_0]
36D840:  ADD             R0, PC; g_fxMan_ptr
36D842:  LDR             R0, [R0]; g_fxMan
36D844:  LDR.W           R1, [R0,#(dword_82061C - 0x820594)]
36D848:  ADD.W           R3, R0, R1,LSL#2
36D84C:  ADDS            R1, #1
36D84E:  LDR.W           R4, [R3,#0x8C]
36D852:  STR.W           R1, [R0,#(dword_82061C - 0x820594)]
36D856:  MOV.W           R0, #0x3F800000
36D85A:  STR             R5, [R4,#0x10]
36D85C:  STRD.W          R5, R5, [R4,#4]
36D860:  STR             R0, [R4]
36D862:  STRD.W          R0, R5, [R4,#0x14]
36D866:  STRD.W          R5, R5, [R4,#0x20]
36D86A:  STR             R0, [R4,#0x28]
36D86C:  STRD.W          R5, R5, [R4,#0x30]
36D870:  STR             R5, [R4,#0x38]
36D872:  LDR             R0, [R4,#0xC]
36D874:  ORR.W           R0, R0, #0x20000
36D878:  ORR.W           R0, R0, #3
36D87C:  STR             R0, [R4,#0xC]
36D87E:  LDR             R0, [R2]
36D880:  STR             R0, [R4,#0x30]
36D882:  LDR             R0, [R2,#4]
36D884:  STR             R0, [R4,#0x34]
36D886:  LDR             R0, [R2,#8]
36D888:  STR             R0, [R4,#0x38]
36D88A:  MOV             R0, R4
36D88C:  BLX             j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
36D890:  MOV             R0, R4
36D892:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
36D896:  MOV             R0, R8
36D898:  MOV             R1, R6
36D89A:  MOV             R2, R4
36D89C:  MOV             R3, R9
36D89E:  STR.W           R10, [SP,#0x20+var_20]
36D8A2:  BLX             j__ZN11FxManager_c12ShouldCreateEP12FxSystemBP_cP11RwMatrixTagS3_h; FxManager_c::ShouldCreate(FxSystemBP_c *,RwMatrixTag *,RwMatrixTag *,uchar)
36D8A6:  CBZ             R0, loc_36D8EC
36D8A8:  MOV.W           R0, #0x108; unsigned int
36D8AC:  BLX             _Znwj; operator new(uint)
36D8B0:  MOV             R5, R0
36D8B2:  BLX             j__ZN10FxSystem_cC2Ev; FxSystem_c::FxSystem_c(void)
36D8B6:  MOV             R1, R6
36D8B8:  MOV             R2, R4
36D8BA:  MOV             R3, R9
36D8BC:  BLX             j__ZN10FxSystem_c4InitEP12FxSystemBP_cP11RwMatrixTagS3_; FxSystem_c::Init(FxSystemBP_c *,RwMatrixTag *,RwMatrixTag *)
36D8C0:  ADD.W           R0, R8, #0xC; this
36D8C4:  MOV             R1, R5; ListItem_c *
36D8C6:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
36D8CA:  LDR             R0, =(g_fx_ptr - 0x36D8D0)
36D8CC:  ADD             R0, PC; g_fx_ptr
36D8CE:  LDR             R0, [R0]; g_fx ; this
36D8D0:  BLX             j__ZN4Fx_c12GetFxQualityEv; Fx_c::GetFxQuality(void)
36D8D4:  CBZ             R0, loc_36D8F6
36D8D6:  LDR             R0, =(g_fx_ptr - 0x36D8DC)
36D8D8:  ADD             R0, PC; g_fx_ptr
36D8DA:  LDR             R0, [R0]; g_fx ; this
36D8DC:  BLX             j__ZN4Fx_c12GetFxQualityEv; Fx_c::GetFxQuality(void)
36D8E0:  CMP             R0, #1
36D8E2:  BNE             loc_36D8FE
36D8E4:  MOV             R0, R5
36D8E6:  MOV.W           R1, #0x3F400000
36D8EA:  B               loc_36D912
36D8EC:  MOV             R0, R4
36D8EE:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
36D8F2:  MOVS            R5, #0
36D8F4:  B               loc_36D91C
36D8F6:  MOV             R0, R5
36D8F8:  MOV.W           R1, #0x3F000000
36D8FC:  B               loc_36D912
36D8FE:  LDR             R0, =(g_fx_ptr - 0x36D904)
36D900:  ADD             R0, PC; g_fx_ptr
36D902:  LDR             R0, [R0]; g_fx ; this
36D904:  BLX             j__ZN4Fx_c12GetFxQualityEv; Fx_c::GetFxQuality(void)
36D908:  CMP             R0, #2
36D90A:  BLT             loc_36D916
36D90C:  MOV             R0, R5; this
36D90E:  MOV.W           R1, #0x3F800000; float
36D912:  BLX             j__ZN10FxSystem_c11SetRateMultEf; FxSystem_c::SetRateMult(float)
36D916:  MOV             R0, R4
36D918:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
36D91C:  LDR             R0, =(g_fxMan_ptr - 0x36D922)
36D91E:  ADD             R0, PC; g_fxMan_ptr
36D920:  LDR             R0, [R0]; g_fxMan
36D922:  LDR.W           R1, [R0,#(dword_82061C - 0x820594)]
36D926:  SUBS            R1, #1
36D928:  STR.W           R1, [R0,#(dword_82061C - 0x820594)]
36D92C:  MOV             R0, R5
36D92E:  ADD             SP, SP, #8
36D930:  POP.W           {R8-R10}
36D934:  POP             {R4-R7,PC}
