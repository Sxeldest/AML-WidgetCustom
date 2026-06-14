; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins22RenderHeliRotorAlphaCBEP8RpAtomic
; Address            : 0x5D54D0 - 0x5D55E4
; =========================================================

5D54D0:  PUSH            {R4-R7,LR}
5D54D2:  ADD             R7, SP, #0xC
5D54D4:  PUSH.W          {R11}
5D54D8:  LDR             R1, =(gVehicleDistanceFromCamera_ptr - 0x5D54E2)
5D54DA:  MOV             R4, R0
5D54DC:  LDR             R0, =(_ZN18CVisibilityPlugins21ms_bigVehicleLod0DistE_ptr - 0x5D54E4)
5D54DE:  ADD             R1, PC; gVehicleDistanceFromCamera_ptr
5D54E0:  ADD             R0, PC; _ZN18CVisibilityPlugins21ms_bigVehicleLod0DistE_ptr
5D54E2:  LDR             R1, [R1]; gVehicleDistanceFromCamera
5D54E4:  LDR             R0, [R0]; CVisibilityPlugins::ms_bigVehicleLod0Dist ...
5D54E6:  VLDR            S2, [R1]
5D54EA:  VLDR            S0, [R0]
5D54EE:  VCMPE.F32       S2, S0
5D54F2:  VMRS            APSR_nzcv, FPSCR
5D54F6:  BGE             loc_5D55DC
5D54F8:  LDR             R0, [R4,#4]
5D54FA:  LDR             R1, [R4,#0x3C]
5D54FC:  LDR             R5, [R1,#4]
5D54FE:  BLX.W           j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
5D5502:  MOV             R6, R0
5D5504:  MOV             R0, R5
5D5506:  BLX.W           j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
5D550A:  LDR             R1, =(_ZN18CVisibilityPlugins14ms_pCameraPosnE_ptr - 0x5D5514)
5D550C:  VLDR            S0, [R6,#0x30]
5D5510:  ADD             R1, PC; _ZN18CVisibilityPlugins14ms_pCameraPosnE_ptr
5D5512:  VLDR            S2, [R6,#0x34]
5D5516:  VLDR            S4, [R6,#0x38]
5D551A:  LDR             R1, [R1]; CVisibilityPlugins::ms_pCameraPosn ...
5D551C:  VLDR            S12, [R0,#0x28]
5D5520:  LDR             R1, [R1]; CVisibilityPlugins::ms_pCameraPosn
5D5522:  VLDR            S6, [R1]
5D5526:  VLDR            S8, [R1,#4]
5D552A:  VSUB.F32        S0, S0, S6
5D552E:  VLDR            S10, [R1,#8]
5D5532:  VSUB.F32        S2, S2, S8
5D5536:  VLDR            S6, [R0,#0x20]
5D553A:  VLDR            S8, [R0,#0x24]
5D553E:  VSUB.F32        S4, S4, S10
5D5542:  LDR             R0, =(gVehicleDistanceFromCamera_ptr - 0x5D554A)
5D5544:  LDR             R1, =(_ZN18CVisibilityPlugins11m_alphaListE_ptr - 0x5D554C)
5D5546:  ADD             R0, PC; gVehicleDistanceFromCamera_ptr
5D5548:  ADD             R1, PC; _ZN18CVisibilityPlugins11m_alphaListE_ptr
5D554A:  VMUL.F32        S0, S0, S6
5D554E:  LDR             R0, [R0]; gVehicleDistanceFromCamera
5D5550:  VMUL.F32        S2, S2, S8
5D5554:  VMUL.F32        S4, S4, S12
5D5558:  VADD.F32        S0, S0, S2
5D555C:  VMOV.F32        S2, #20.0
5D5560:  VADD.F32        S0, S0, S4
5D5564:  VMUL.F32        S0, S0, S2
5D5568:  VLDR            S2, [R0]
5D556C:  LDR             R0, [R1]; CVisibilityPlugins::m_alphaList ...
5D556E:  LDR             R1, [R0,#(dword_A83F84 - 0xA83F74)]
5D5570:  ADDS            R0, #0x14
5D5572:  CMP             R1, R0
5D5574:  VADD.F32        S0, S2, S0
5D5578:  BEQ             loc_5D559C
5D557A:  LDR             R0, =(_ZN18CVisibilityPlugins11m_alphaListE_ptr - 0x5D5580)
5D557C:  ADD             R0, PC; _ZN18CVisibilityPlugins11m_alphaListE_ptr
5D557E:  LDR             R2, [R0]; CVisibilityPlugins::m_alphaList ...
5D5580:  VLDR            S2, [R1,#8]
5D5584:  VCMPE.F32       S2, S0
5D5588:  VMRS            APSR_nzcv, FPSCR
5D558C:  BGE             loc_5D559A
5D558E:  LDR             R1, [R1,#0x10]
5D5590:  ADD.W           R0, R2, #0x14
5D5594:  CMP             R1, R0
5D5596:  BNE             loc_5D5580
5D5598:  B               loc_5D559C
5D559A:  MOV             R0, R1
5D559C:  LDR             R1, =(_ZN18CVisibilityPlugins11m_alphaListE_ptr - 0x5D55A2)
5D559E:  ADD             R1, PC; _ZN18CVisibilityPlugins11m_alphaListE_ptr
5D55A0:  LDR             R2, [R1]; CVisibilityPlugins::m_alphaList ...
5D55A2:  LDR             R1, [R2,#(dword_A83FAC - 0xA83F74)]
5D55A4:  ADDS            R2, #0x3C ; '<'
5D55A6:  CMP             R1, R2
5D55A8:  BEQ             loc_5D55D6
5D55AA:  LDR             R2, =(_ZN18CVisibilityPlugins12RenderAtomicEPvf_ptr - 0x5D55B6)
5D55AC:  CMP             R1, #0
5D55AE:  LDRD.W          R3, R6, [R1,#0xC]
5D55B2:  ADD             R2, PC; _ZN18CVisibilityPlugins12RenderAtomicEPvf_ptr
5D55B4:  VSTR            S0, [R1,#8]
5D55B8:  LDR             R2, [R2]; CVisibilityPlugins::RenderAtomic(void *,float)
5D55BA:  STRD.W          R4, R2, [R1]
5D55BE:  STR             R3, [R6,#0xC]
5D55C0:  LDRD.W          R2, R3, [R1,#0xC]
5D55C4:  STR             R3, [R2,#0x10]
5D55C6:  LDR             R0, [R0,#0xC]
5D55C8:  LDR             R2, [R0,#0x10]
5D55CA:  STR             R2, [R1,#0x10]
5D55CC:  LDR             R2, [R0,#0x10]
5D55CE:  STR             R1, [R2,#0xC]
5D55D0:  STR             R0, [R1,#0xC]
5D55D2:  STR             R1, [R0,#0x10]
5D55D4:  BNE             loc_5D55DC
5D55D6:  MOV             R0, R4
5D55D8:  BLX.W           j__Z27AtomicDefaultRenderCallBackP8RpAtomic; AtomicDefaultRenderCallBack(RpAtomic *)
5D55DC:  MOV             R0, R4
5D55DE:  POP.W           {R11}
5D55E2:  POP             {R4-R7,PC}
