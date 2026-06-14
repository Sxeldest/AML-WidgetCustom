; =========================================================
; Game Engine Function: _ZN12CWaterCannon19Update_OncePerFrameEs
; Address            : 0x5CABF8 - 0x5CAD08
; =========================================================

5CABF8:  PUSH            {R4-R7,LR}
5CABFA:  ADD             R7, SP, #0xC
5CABFC:  PUSH.W          {R8-R11}
5CAC00:  SUB             SP, SP, #0xC
5CAC02:  MOV             R4, R0
5CAC04:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5CAC0E)
5CAC06:  MOV             R8, R1
5CAC08:  LDR             R1, [R4,#8]
5CAC0A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5CAC0C:  ADDS            R1, #0x96
5CAC0E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5CAC10:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5CAC12:  CMP             R0, R1
5CAC14:  BLS             loc_5CAC32
5CAC16:  LDRSH.W         R0, [R4,#4]
5CAC1A:  ADDS            R0, #1
5CAC1C:  ASRS            R1, R0, #0x1F
5CAC1E:  ADD.W           R1, R0, R1,LSR#27
5CAC22:  BIC.W           R1, R1, #0x1F
5CAC26:  SUBS            R0, R0, R1
5CAC28:  STRH            R0, [R4,#4]
5CAC2A:  ADD             R0, R4
5CAC2C:  MOVS            R1, #0
5CAC2E:  STRB.W          R1, [R0,#0x30C]
5CAC32:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5CAC40)
5CAC34:  MOV.W           R1, #0x30C
5CAC38:  VLDR            S2, =0.004
5CAC3C:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5CAC3E:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5CAC40:  VLDR            S0, [R0]
5CAC44:  MOVS            R0, #0
5CAC46:  VMUL.F32        S2, S0, S2
5CAC4A:  LDRB            R2, [R4,R1]
5CAC4C:  CBZ             R2, loc_5CAC94
5CAC4E:  ADDS            R2, R4, R0
5CAC50:  VLDR            S8, [R2,#0x194]
5CAC54:  VLDR            S4, [R2,#0x18C]
5CAC58:  VSUB.F32        S8, S8, S2
5CAC5C:  VLDR            S6, [R2,#0x190]
5CAC60:  VMUL.F32        S4, S0, S4
5CAC64:  VLDR            S10, [R2,#0xC]
5CAC68:  VMUL.F32        S6, S0, S6
5CAC6C:  VLDR            S12, [R2,#0x10]
5CAC70:  VLDR            S14, [R2,#0x14]
5CAC74:  VMUL.F32        S1, S0, S8
5CAC78:  VSTR            S8, [R2,#0x194]
5CAC7C:  VADD.F32        S4, S4, S10
5CAC80:  VADD.F32        S6, S6, S12
5CAC84:  VADD.F32        S10, S1, S14
5CAC88:  VSTR            S4, [R2,#0xC]
5CAC8C:  VSTR            S6, [R2,#0x10]
5CAC90:  VSTR            S10, [R2,#0x14]
5CAC94:  ADDS            R0, #0xC
5CAC96:  ADDS            R1, #1
5CAC98:  CMP.W           R0, #0x180
5CAC9C:  BNE             loc_5CAC4A
5CAC9E:  LDR             R0, =(gFireManager_ptr - 0x5CACAE)
5CACA0:  MOVS            R5, #0
5CACA2:  MOV.W           R6, #0x30C
5CACA6:  MOV.W           R10, #0x3F000000
5CACAA:  ADD             R0, PC; gFireManager_ptr
5CACAC:  MOV.W           R11, #0x40000000
5CACB0:  LDR.W           R9, [R0]; gFireManager
5CACB4:  LDRB            R0, [R4,R6]
5CACB6:  CBZ             R0, loc_5CACCA
5CACB8:  ADDS            R0, R4, R5
5CACBA:  ADD.W           R3, R0, #0xC
5CACBE:  MOV             R0, R9
5CACC0:  LDM             R3, {R1-R3}
5CACC2:  STRD.W          R11, R10, [SP,#0x28+var_28]
5CACC6:  BLX.W           j__ZN12CFireManager24ExtinguishPointWithWaterE7CVectorff; CFireManager::ExtinguishPointWithWater(CVector,float,float)
5CACCA:  ADDS            R5, #0xC
5CACCC:  ADDS            R6, #1
5CACCE:  CMP.W           R5, #0x180
5CACD2:  BNE             loc_5CACB4
5CACD4:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x5CACDA)
5CACD6:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
5CACD8:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
5CACDA:  LDR             R0, [R0]; CTimer::m_FrameCounter
5CACDC:  ADD             R0, R8
5CACDE:  LSLS            R0, R0, #0x1E
5CACE0:  ITT EQ
5CACE2:  MOVEQ           R0, R4; this
5CACE4:  BLXEQ.W         j__ZN12CWaterCannon8PushPedsEv; CWaterCannon::PushPeds(void)
5CACE8:  MOVS            R0, #0
5CACEA:  SXTAH.W         R1, R4, R0
5CACEE:  LDRB.W          R1, [R1,#0x30C]
5CACF2:  CBNZ            R1, loc_5CAD00
5CACF4:  ADDS            R0, #1
5CACF6:  SXTH            R0, R0
5CACF8:  CMP             R0, #0x1F
5CACFA:  BLE             loc_5CACEA
5CACFC:  MOVS            R0, #0
5CACFE:  STR             R0, [R4]
5CAD00:  ADD             SP, SP, #0xC
5CAD02:  POP.W           {R8-R11}
5CAD06:  POP             {R4-R7,PC}
