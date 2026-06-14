; =========================================================
; Game Engine Function: _ZN8CVehicle9PreRenderEv
; Address            : 0x582078 - 0x5821FA
; =========================================================

582078:  PUSH            {R4,R6,R7,LR}
58207A:  ADD             R7, SP, #8
58207C:  MOV             R4, R0
58207E:  LDR.W           R0, [R4,#0x5A0]
582082:  CMP             R0, #6
582084:  BEQ.W           loc_58219E
582088:  LDRB.W          R12, [R4,#0x587]
58208C:  VMOV.F32        S0, #0.5
582090:  LDRB.W          LR, [R4,#0x585]
582094:  VMOV.F32        S3, #15.0
582098:  AND.W           R1, R12, #0xF
58209C:  LDRB.W          R2, [R4,#0x586]
5820A0:  LDRB.W          R0, [R4,#0x584]
5820A4:  VMOV.F32        S5, #1.0
5820A8:  VMOV            S2, R1
5820AC:  AND.W           R1, LR, #0xF
5820B0:  AND.W           R3, R2, #0xF
5820B4:  VMOV            S6, R1
5820B8:  AND.W           R1, R0, #0xF
5820BC:  LSRS            R0, R0, #4
5820BE:  VMOV            S4, R3
5820C2:  VMOV            S8, R1
5820C6:  LSRS            R1, R2, #4
5820C8:  VMOV            S10, R0
5820CC:  MOV.W           R0, LR,LSR#4
5820D0:  VCVT.F32.S32    S2, S2
5820D4:  VCVT.F32.S32    S4, S4
5820D8:  VCVT.F32.S32    S6, S6
5820DC:  VCVT.F32.S32    S8, S8
5820E0:  VCVT.F32.S32    S10, S10
5820E4:  VMOV            S12, R1
5820E8:  VMOV            S14, R0
5820EC:  MOV.W           R0, R12,LSR#4
5820F0:  VCVT.F32.S32    S12, S12
5820F4:  VCVT.F32.S32    S14, S14
5820F8:  VMUL.F32        S6, S6, S0
5820FC:  VMUL.F32        S8, S8, S0
582100:  VMUL.F32        S10, S10, S0
582104:  VMOV            S1, R0
582108:  LDR             R0, =(_ZN25CCustomBuildingDNPipeline17m_fDNBalanceParamE_ptr - 0x582112)
58210A:  VMUL.F32        S4, S4, S0
58210E:  ADD             R0, PC; _ZN25CCustomBuildingDNPipeline17m_fDNBalanceParamE_ptr
582110:  VCVT.F32.S32    S1, S1
582114:  VMUL.F32        S14, S14, S0
582118:  VMUL.F32        S12, S12, S0
58211C:  LDR             R0, [R0]; CCustomBuildingDNPipeline::m_fDNBalanceParam ...
58211E:  VDIV.F32        S8, S8, S3
582122:  VDIV.F32        S10, S10, S3
582126:  VDIV.F32        S6, S6, S3
58212A:  VDIV.F32        S14, S14, S3
58212E:  VLDR            S7, [R0]
582132:  VMUL.F32        S2, S2, S0
582136:  VMUL.F32        S0, S1, S0
58213A:  VSUB.F32        S1, S5, S7
58213E:  VDIV.F32        S4, S4, S3
582142:  VDIV.F32        S12, S12, S3
582146:  VMUL.F32        S8, S1, S8
58214A:  VMUL.F32        S10, S7, S10
58214E:  VDIV.F32        S2, S2, S3
582152:  VDIV.F32        S0, S0, S3
582156:  VADD.F32        S8, S10, S8
58215A:  VLDR            S10, =0.0
58215E:  VMUL.F32        S6, S1, S6
582162:  VMUL.F32        S14, S7, S14
582166:  VMUL.F32        S4, S1, S4
58216A:  VMUL.F32        S12, S7, S12
58216E:  VMUL.F32        S2, S1, S2
582172:  VMUL.F32        S0, S7, S0
582176:  VADD.F32        S8, S8, S10
58217A:  VADD.F32        S6, S14, S6
58217E:  VADD.F32        S4, S12, S4
582182:  VADD.F32        S0, S0, S2
582186:  VADD.F32        S6, S8, S6
58218A:  VADD.F32        S2, S6, S4
58218E:  VMOV.F32        S4, #0.25
582192:  VADD.F32        S0, S2, S0
582196:  VMUL.F32        S0, S0, S4
58219A:  VSTR            S0, [R4,#0x130]
58219E:  MOV             R0, R4; this
5821A0:  BLX             j__ZN8CVehicle28PreRenderDriverAndPassengersEv; CVehicle::PreRenderDriverAndPassengers(void)
5821A4:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5821AE)
5821A6:  LDRSH.W         R1, [R4,#0x26]
5821AA:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5821AC:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5821AE:  LDR.W           R0, [R0,R1,LSL#2]
5821B2:  LDRB.W          R0, [R0,#0x23]
5821B6:  CMP             R0, #0
5821B8:  ITT NE
5821BA:  MOVNE           R0, R4; this
5821BC:  BLXNE           j__ZN7CEntity22ProcessLightsForEntityEv; CEntity::ProcessLightsForEntity(void)
5821C0:  LDRB.W          R0, [R4,#0x594]
5821C4:  MOVS            R1, #0; bool
5821C6:  AND.W           R0, R0, #0xF0
5821CA:  STRB.W          R0, [R4,#0x594]
5821CE:  MOV             R0, R4; this
5821D0:  BLX             j__ZNK9CPhysical18GetLightingFromColEb; CPhysical::GetLightingFromCol(bool)
5821D4:  VMOV            S2, R0
5821D8:  VLDR            S0, =0.4
5821DC:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5821EA)
5821DE:  VMUL.F32        S0, S2, S0
5821E2:  LDRSH.W         R2, [R4,#0x26]
5821E6:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5821E8:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5821EA:  LDR.W           R0, [R0,R2,LSL#2]; this
5821EE:  VMOV            R1, S0; float
5821F2:  POP.W           {R4,R6,R7,LR}
5821F6:  B.W             sub_198544
