; =========================================================
; Game Engine Function: _ZN4Fx_c12AddWheelSandEP8CVehicle7CVectorhf
; Address            : 0x365A14 - 0x365D5E
; =========================================================

365A14:  PUSH            {R4-R7,LR}
365A16:  ADD             R7, SP, #0xC
365A18:  PUSH.W          {R8-R11}
365A1C:  SUB             SP, SP, #4
365A1E:  VPUSH           {D8-D15}
365A22:  SUB             SP, SP, #0x48
365A24:  MOV             R4, R1
365A26:  MOV             R8, R0
365A28:  MOV.W           R0, #0xFFFFFFFF; int
365A2C:  MOVS            R1, #0; bool
365A2E:  MOV             R6, R3
365A30:  MOV             R5, R2
365A32:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
365A36:  LDR             R1, =(TheCamera_ptr - 0x365A48)
365A38:  VMOV            S16, R6
365A3C:  VMOV            S18, R5
365A40:  VLDR            S20, [R7,#arg_0]
365A44:  ADD             R1, PC; TheCamera_ptr
365A46:  LDR             R1, [R1]; TheCamera
365A48:  LDR             R2, [R1,#(dword_951FBC - 0x951FA8)]
365A4A:  ADD.W           R3, R2, #0x30 ; '0'
365A4E:  CMP             R2, #0
365A50:  IT EQ
365A52:  ADDEQ           R3, R1, #4
365A54:  VLDR            S0, [R3]
365A58:  VLDR            S2, [R3,#4]
365A5C:  VSUB.F32        S0, S0, S18
365A60:  VLDR            S4, [R3,#8]
365A64:  VSUB.F32        S2, S2, S16
365A68:  VSUB.F32        S4, S4, S20
365A6C:  VMUL.F32        S0, S0, S0
365A70:  VMUL.F32        S2, S2, S2
365A74:  VMUL.F32        S4, S4, S4
365A78:  VADD.F32        S0, S0, S2
365A7C:  VLDR            S2, =625.0
365A80:  VADD.F32        S0, S0, S4
365A84:  VCMPE.F32       S0, S2
365A88:  VMRS            APSR_nzcv, FPSCR
365A8C:  BGT.W           loc_365D50
365A90:  LDR.W           R1, [R8,#0x54]
365A94:  CMP             R1, #1
365A96:  BLT             loc_365AD4
365A98:  LDR             R1, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x365AA2)
365A9A:  LDRSH.W         R2, [R4,#0x26]
365A9E:  ADD             R1, PC; _ZN6CTimer14m_FrameCounterE_ptr
365AA0:  LDR             R1, [R1]; CTimer::m_FrameCounter ...
365AA2:  LDR             R1, [R1]; CTimer::m_FrameCounter
365AA4:  ADD             R1, R2
365AA6:  TST.W           R1, #1
365AAA:  BNE.W           loc_365D50
365AAE:  VLDR            S2, =64.0
365AB2:  MOVS            R2, #0
365AB4:  VCMPE.F32       S0, S2
365AB8:  VMRS            APSR_nzcv, FPSCR
365ABC:  IT LE
365ABE:  MOVLE           R2, #1
365AC0:  CMP             R0, #0
365AC2:  IT NE
365AC4:  MOVNE           R0, #1
365AC6:  TST             R0, R2
365AC8:  BNE             loc_365AD8
365ACA:  ANDS.W          R0, R1, #3
365ACE:  BNE.W           loc_365D50
365AD2:  B               loc_365AD8
365AD4:  CMP             R1, #0
365AD6:  BEQ             loc_365B90
365AD8:  MOVS            R0, #0
365ADA:  MOV.W           R1, #0x3F800000
365ADE:  MOV.W           R2, #0x3F000000
365AE2:  MOVW            R3, #0xEB85
365AE6:  STRD.W          R2, R1, [SP,#0xA8+var_A8]; float
365AEA:  MOVW            R1, #0x5C29
365AEE:  MOVW            R2, #0x851F
365AF2:  STRD.W          R0, R0, [SP,#0xA8+var_A0]; float
365AF6:  ADD             R0, SP, #0xA8+var_7C; this
365AF8:  MOVT            R1, #0x3F4F; float
365AFC:  MOVT            R2, #0x3F2B; float
365B00:  MOVT            R3, #0x3F11; float
365B04:  LDR             R5, [R7,#arg_4]
365B06:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
365B0A:  ADD.W           R0, R4, #0x4A0
365B0E:  CMP             R5, #0
365B10:  VLDR            S0, [R0]
365B14:  BEQ             loc_365B1C
365B16:  VMOV.F32        S2, #1.0
365B1A:  B               loc_365B56
365B1C:  VLDR            S2, [R4,#0x48]
365B20:  VLDR            S4, [R4,#0x4C]
365B24:  VMUL.F32        S2, S2, S2
365B28:  VLDR            S6, [R4,#0x50]
365B2C:  VMUL.F32        S4, S4, S4
365B30:  VMUL.F32        S6, S6, S6
365B34:  VADD.F32        S2, S2, S4
365B38:  VADD.F32        S2, S2, S6
365B3C:  VSQRT.F32       S4, S2
365B40:  VMOV.F32        S2, #1.0
365B44:  VADD.F32        S4, S4, S4
365B48:  VCMPE.F32       S4, S2
365B4C:  VMRS            APSR_nzcv, FPSCR
365B50:  IT LE
365B52:  VMOVLE.F32      S2, S4
365B56:  VLDR            S4, =0.9
365B5A:  VLDR            S6, =0.1
365B5E:  VMUL.F32        S4, S2, S4
365B62:  VMUL.F32        S8, S2, S6
365B66:  VADD.F32        S4, S4, S6
365B6A:  VADD.F32        S8, S8, S6
365B6E:  VMOV.F32        S6, #2.0
365B72:  VSTR            S4, [SP,#0xA8+var_6C]
365B76:  VSTR            S8, [SP,#0xA8+var_64]
365B7A:  LDR.W           R0, [R4,#0x5A4]
365B7E:  CMP             R0, #2
365B80:  BEQ             loc_365B8A
365B82:  CMP             R0, #0xA
365B84:  BEQ             loc_365BCC
365B86:  CMP             R0, #9
365B88:  BNE             loc_365BD2
365B8A:  VMOV.F32        S8, #0.5
365B8E:  B               loc_365BDA
365B90:  LDR             R1, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x365B9A)
365B92:  LDRSH.W         R2, [R4,#0x26]
365B96:  ADD             R1, PC; _ZN6CTimer14m_FrameCounterE_ptr
365B98:  LDR             R1, [R1]; CTimer::m_FrameCounter ...
365B9A:  LDR             R1, [R1]; CTimer::m_FrameCounter
365B9C:  ADD             R1, R2
365B9E:  TST.W           R1, #3
365BA2:  BNE.W           loc_365D50
365BA6:  VLDR            S2, =64.0
365BAA:  MOVS            R2, #0
365BAC:  VCMPE.F32       S0, S2
365BB0:  VMRS            APSR_nzcv, FPSCR
365BB4:  IT LE
365BB6:  MOVLE           R2, #1
365BB8:  CMP             R0, #0
365BBA:  IT NE
365BBC:  MOVNE           R0, #1
365BBE:  TST             R0, R2
365BC0:  BNE             loc_365AD8
365BC2:  ANDS.W          R0, R1, #7
365BC6:  BNE.W           loc_365D50
365BCA:  B               loc_365AD8
365BCC:  VMOV.F32        S8, #0.25
365BD0:  B               loc_365BDA
365BD2:  VMOV.F32        S6, #1.5
365BD6:  VLDR            S8, =0.7
365BDA:  VMUL.F32        S4, S8, S4
365BDE:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x365BE4)
365BE0:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
365BE2:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
365BE4:  VSTR            S4, [SP,#0xA8+var_6C]
365BE8:  VLDR            S8, [R0]
365BEC:  VLDR            S4, [R4,#0x48]
365BF0:  VLDR            S10, [R4,#0x4C]
365BF4:  VMUL.F32        S24, S8, S4
365BF8:  VLDR            S12, [R4,#0x50]
365BFC:  VMUL.F32        S22, S8, S10
365C00:  VMUL.F32        S26, S8, S12
365C04:  VMUL.F32        S10, S24, S24
365C08:  VMUL.F32        S8, S22, S22
365C0C:  VMUL.F32        S12, S26, S26
365C10:  VADD.F32        S8, S10, S8
365C14:  VADD.F32        S8, S8, S12
365C18:  VSQRT.F32       S8, S8
365C1C:  VMUL.F32        S6, S6, S8
365C20:  VCVT.S32.F32    S6, S6
365C24:  VMOV            R6, S6
365C28:  CMP             R6, #1
365C2A:  IT LE
365C2C:  MOVLE           R6, #1
365C2E:  CMP             R6, #1
365C30:  BLT.W           loc_365D50
365C34:  VABS.F32        S30, S0
365C38:  VLDR            S0, =0.8
365C3C:  VMOV            S6, R6
365C40:  LDR             R0, =(g_fx_ptr - 0x365C52)
365C42:  VADD.F32        S0, S2, S0
365C46:  VLDR            S2, =-0.2
365C4A:  VCVT.F32.S32    S17, S6
365C4E:  ADD             R0, PC; g_fx_ptr
365C50:  VMOV.F32        S27, #1.0
365C54:  MOVW            R10, #0
365C58:  LDR             R5, [R0]; g_fx
365C5A:  ADD.W           R9, SP, #0xA8+var_94
365C5E:  VLDR            S28, [R7,#arg_8]
365C62:  ADD.W           R11, SP, #0xA8+var_88
365C66:  VLDR            S21, =-40.0
365C6A:  MOVT            R10, #0xBF80
365C6E:  VLDR            S23, =4.6566e-10
365C72:  MOV.W           R8, #0
365C76:  VADD.F32        S19, S0, S2
365C7A:  VLDR            S25, =0.0
365C7E:  VLDR            S29, =0.2
365C82:  B               loc_365C88
365C84:  VLDR            S4, [R4,#0x48]
365C88:  VMUL.F32        S31, S30, S4
365C8C:  BLX             rand
365C90:  VMOV            S0, R0
365C94:  VMUL.F32        S2, S31, S21
365C98:  VCVT.F32.S32    S0, S0
365C9C:  VMUL.F32        S0, S0, S23
365CA0:  VMUL.F32        S0, S2, S0
365CA4:  VADD.F32        S0, S0, S25
365CA8:  VSTR            S0, [SP,#0xA8+var_88]
365CAC:  VLDR            S0, [R4,#0x4C]
365CB0:  VMUL.F32        S31, S30, S0
365CB4:  BLX             rand
365CB8:  VMOV            S0, R0
365CBC:  VMUL.F32        S2, S31, S21
365CC0:  VCVT.F32.S32    S0, S0
365CC4:  VMOV            S4, R8
365CC8:  VCVT.F32.S32    S4, S4
365CCC:  VMUL.F32        S0, S0, S23
365CD0:  VDIV.F32        S31, S4, S17
365CD4:  VMUL.F32        S0, S2, S0
365CD8:  VADD.F32        S0, S0, S25
365CDC:  VSTR            S0, [SP,#0xA8+var_84]
365CE0:  BLX             rand
365CE4:  VMOV            S0, R0
365CE8:  MOVW            R1, #0x3333
365CEC:  VSUB.F32        S2, S27, S31
365CF0:  MOVT            R1, #0x3F33
365CF4:  VCVT.F32.S32    S0, S0
365CF8:  STR             R1, [SP,#0xA8+var_9C]; float
365CFA:  MOVS            R1, #0
365CFC:  LDR             R0, [R5,#(dword_820538 - 0x820520)]; int
365CFE:  STR             R1, [SP,#0xA8+var_98]; int
365D00:  ADD             R1, SP, #0xA8+var_7C
365D02:  VSTR            S28, [SP,#0xA8+var_A0]
365D06:  MOV             R2, R11; int
365D08:  MOVS            R3, #0; int
365D0A:  VMUL.F32        S4, S22, S2
365D0E:  VMUL.F32        S0, S0, S23
365D12:  VMUL.F32        S6, S24, S2
365D16:  VMUL.F32        S2, S26, S2
365D1A:  VSUB.F32        S4, S16, S4
365D1E:  VMUL.F32        S0, S19, S0
365D22:  VSUB.F32        S6, S18, S6
365D26:  VSUB.F32        S2, S20, S2
365D2A:  VSTR            S4, [SP,#0xA8+var_90]
365D2E:  VADD.F32        S0, S0, S29
365D32:  VSTR            S6, [SP,#0xA8+var_94]
365D36:  VSTR            S2, [SP,#0xA8+var_8C]
365D3A:  VSTR            S0, [SP,#0xA8+var_80]
365D3E:  STRD.W          R1, R10, [SP,#0xA8+var_A8]; int
365D42:  MOV             R1, R9; int
365D44:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
365D48:  ADD.W           R8, R8, #1
365D4C:  CMP             R8, R6
365D4E:  BLT             loc_365C84
365D50:  ADD             SP, SP, #0x48 ; 'H'
365D52:  VPOP            {D8-D15}
365D56:  ADD             SP, SP, #4
365D58:  POP.W           {R8-R11}
365D5C:  POP             {R4-R7,PC}
