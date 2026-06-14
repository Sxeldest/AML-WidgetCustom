; =========================================================
; Game Engine Function: _ZN8CVehicle26AddDamagedVehicleParticlesEv
; Address            : 0x58A85C - 0x58A974
; =========================================================

58A85C:  PUSH            {R4-R7,LR}
58A85E:  ADD             R7, SP, #0xC
58A860:  PUSH.W          {R11}
58A864:  SUB             SP, SP, #0x18
58A866:  MOV             R4, R0
58A868:  LDR.W           R0, [R4,#0x5A4]
58A86C:  CMP             R0, #4
58A86E:  BEQ             loc_58A96C
58A870:  ADDW            R5, R4, #0x4CC
58A874:  VLDR            S2, =650.0
58A878:  VLDR            S0, [R5]
58A87C:  VCMPE.F32       S0, S2
58A880:  VMRS            APSR_nzcv, FPSCR
58A884:  BGE             loc_58A95C
58A886:  VLDR            S2, =250.0
58A88A:  VCMPE.F32       S0, S2
58A88E:  VMRS            APSR_nzcv, FPSCR
58A892:  BLT             loc_58A95C
58A894:  LDRB.W          R0, [R4,#0x45]
58A898:  LSLS            R0, R0, #0x1F
58A89A:  BNE             loc_58A95C
58A89C:  LDR             R1, [R4,#0x18]
58A89E:  CBZ             R1, loc_58A8FC
58A8A0:  LDR.W           R0, [R4,#0x588]
58A8A4:  CBNZ            R0, loc_58A902
58A8A6:  LDR.W           R0, [R4,#0x388]
58A8AA:  ADR             R6, aOverheatCar; "overheat_car"
58A8AC:  LDRSH.W         R3, [R4,#0x26]
58A8B0:  LDR.W           R12, =(g_fxMan_ptr - 0x58A8BE)
58A8B4:  LDRB.W          LR, [R0,#0x75]
58A8B8:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58A8C4)
58A8BA:  ADD             R12, PC; g_fxMan_ptr
58A8BC:  CMP.W           LR, #0x45 ; 'E'
58A8C0:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58A8C2:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
58A8C4:  LDR.W           R0, [R0,R3,LSL#2]
58A8C8:  LDR             R3, [R1,#4]
58A8CA:  ADR             R1, aOverheatCarEle; "overheat_car_electric"
58A8CC:  LDR             R2, [R0,#0x74]
58A8CE:  ADD.W           R3, R3, #0x10; int
58A8D2:  LDR.W           R0, [R12]; g_fxMan ; int
58A8D6:  VLDR            D16, [R2,#0x54]
58A8DA:  IT NE
58A8DC:  MOVNE           R1, R6; this
58A8DE:  LDR             R2, [R2,#0x5C]
58A8E0:  STR             R2, [SP,#0x28+var_18]
58A8E2:  MOVS            R2, #0
58A8E4:  STR             R2, [SP,#0x28+var_28]; int
58A8E6:  ADD             R2, SP, #0x28+var_20; int
58A8E8:  VSTR            D16, [SP,#0x28+var_20]
58A8EC:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
58A8F0:  CMP             R0, #0
58A8F2:  STR.W           R0, [R4,#0x588]
58A8F6:  IT NE
58A8F8:  BLXNE           j__ZN10FxSystem_c4PlayEv; FxSystem_c::Play(void)
58A8FC:  LDR.W           R0, [R4,#0x588]; this
58A900:  CBZ             R0, loc_58A96C
58A902:  VLDR            S0, =-250.0
58A906:  MOVS            R1, #1; unsigned __int8
58A908:  VLDR            S2, [R5]
58A90C:  VADD.F32        S0, S2, S0
58A910:  VLDR            S2, =-400.0
58A914:  VDIV.F32        S0, S0, S2
58A918:  VMOV.F32        S2, #1.0
58A91C:  VADD.F32        S0, S0, S2
58A920:  VMOV            R2, S0; float
58A924:  BLX             j__ZN10FxSystem_c12SetConstTimeEhf; FxSystem_c::SetConstTime(uchar,float)
58A928:  VLDR            S0, =50.0
58A92C:  ADD             R1, SP, #0x28+var_20
58A92E:  VLDR            S2, [R4,#0x48]
58A932:  VLDR            S4, [R4,#0x4C]
58A936:  VLDR            S6, [R4,#0x50]
58A93A:  VMUL.F32        S2, S2, S0
58A93E:  VMUL.F32        S4, S4, S0
58A942:  VMUL.F32        S0, S6, S0
58A946:  VSTR            S4, [SP,#0x28+var_20+4]
58A94A:  VSTR            S2, [SP,#0x28+var_20]
58A94E:  VSTR            S0, [SP,#0x28+var_18]
58A952:  LDR.W           R0, [R4,#0x588]
58A956:  BLX             j__ZN10FxSystem_c9SetVelAddEP5RwV3d; FxSystem_c::SetVelAdd(RwV3d *)
58A95A:  B               loc_58A96C
58A95C:  LDR.W           R0, [R4,#0x588]; this
58A960:  CBZ             R0, loc_58A96C
58A962:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
58A966:  MOVS            R0, #0
58A968:  STR.W           R0, [R4,#0x588]
58A96C:  ADD             SP, SP, #0x18
58A96E:  POP.W           {R11}
58A972:  POP             {R4-R7,PC}
