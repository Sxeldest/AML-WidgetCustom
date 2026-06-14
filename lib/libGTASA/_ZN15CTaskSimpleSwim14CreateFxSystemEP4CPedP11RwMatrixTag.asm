; =========================================================
; Game Engine Function: _ZN15CTaskSimpleSwim14CreateFxSystemEP4CPedP11RwMatrixTag
; Address            : 0x53C644 - 0x53C67C
; =========================================================

53C644:  PUSH            {R4,R6,R7,LR}
53C646:  ADD             R7, SP, #8
53C648:  SUB             SP, SP, #0x10
53C64A:  MOV             R4, R0
53C64C:  LDR             R0, =(g_fxMan_ptr - 0x53C656)
53C64E:  LDR             R1, =(aWaterRipples - 0x53C65E); "water_ripples"
53C650:  MOV             R3, R2; int
53C652:  ADD             R0, PC; g_fxMan_ptr
53C654:  MOVS            R2, #0
53C656:  STRD.W          R2, R2, [SP,#0x18+var_10]
53C65A:  ADD             R1, PC; "water_ripples"
53C65C:  LDR             R0, [R0]; g_fxMan ; int
53C65E:  STRD.W          R2, R2, [SP,#0x18+var_18]; int
53C662:  ADD             R2, SP, #0x18+var_14; int
53C664:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
53C668:  CMP             R0, #0
53C66A:  STR             R0, [R4,#0x60]
53C66C:  BEQ             loc_53C678
53C66E:  BLX             j__ZN10FxSystem_c16CopyParentMatrixEv; FxSystem_c::CopyParentMatrix(void)
53C672:  LDR             R0, [R4,#0x60]; this
53C674:  BLX             j__ZN10FxSystem_c4PlayEv; FxSystem_c::Play(void)
53C678:  ADD             SP, SP, #0x10
53C67A:  POP             {R4,R6,R7,PC}
