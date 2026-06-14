; =========================================================
; Game Engine Function: _ZN8CVehicle14DoBoatSplashesEf
; Address            : 0x589C50 - 0x58A164
; =========================================================

589C50:  PUSH            {R4-R7,LR}
589C52:  ADD             R7, SP, #0xC
589C54:  PUSH.W          {R8-R11}
589C58:  SUB             SP, SP, #4
589C5A:  VPUSH           {D8-D15}
589C5E:  SUB             SP, SP, #0x70
589C60:  MOV             R4, R0
589C62:  MOV             R5, R1
589C64:  VLDR            S0, [R4,#0x48]
589C68:  VLDR            S2, [R4,#0x4C]
589C6C:  VMUL.F32        S0, S0, S0
589C70:  VLDR            S4, [R4,#0x50]
589C74:  VMUL.F32        S2, S2, S2
589C78:  VMUL.F32        S4, S4, S4
589C7C:  VADD.F32        S0, S0, S2
589C80:  VADD.F32        S16, S0, S4
589C84:  VLDR            S0, =0.0025
589C88:  VCMPE.F32       S16, S0
589C8C:  VMRS            APSR_nzcv, FPSCR
589C90:  BLE.W           loc_58A156
589C94:  LDR             R0, [R4,#0x14]
589C96:  VLDR            S0, [R0,#0x28]
589C9A:  VCMPE.F32       S0, #0.0
589C9E:  VMRS            APSR_nzcv, FPSCR
589CA2:  BLE.W           loc_58A156
589CA6:  LDR.W           R0, =(TheCamera_ptr - 0x589CAE)
589CAA:  ADD             R0, PC; TheCamera_ptr
589CAC:  LDR             R0, [R0]; TheCamera ; this
589CAE:  BLX             j__ZN7CCamera28GetLookingForwardFirstPersonEv; CCamera::GetLookingForwardFirstPerson(void)
589CB2:  CMP             R0, #0
589CB4:  BNE.W           loc_58A156
589CB8:  MOV             R0, R4; this
589CBA:  BLX             j__ZN7CEntity9IsVisibleEv; CEntity::IsVisible(void)
589CBE:  CMP             R0, #1
589CC0:  BNE.W           loc_58A156
589CC4:  LDRB.W          R0, [R4,#0x3BE]
589CC8:  CMP             R0, #1
589CCA:  BNE             loc_589CDC
589CCC:  LDR.W           R1, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x589CD4)
589CD0:  ADD             R1, PC; _ZN6CTimer14m_FrameCounterE_ptr
589CD2:  LDR             R1, [R1]; CTimer::m_FrameCounter ...
589CD4:  LDRB            R1, [R1]; CTimer::m_FrameCounter
589CD6:  LSLS            R1, R1, #0x1E
589CD8:  BMI.W           loc_58A156
589CDC:  LDR.W           R1, =(TheCamera_ptr - 0x589CE6)
589CE0:  LDR             R2, [R4,#0x14]
589CE2:  ADD             R1, PC; TheCamera_ptr
589CE4:  VLDR            S30, =0.0
589CE8:  ADD.W           R3, R2, #0x30 ; '0'
589CEC:  CMP             R2, #0
589CEE:  LDR             R1, [R1]; TheCamera
589CF0:  VLDR            S28, =80.0
589CF4:  LDR             R6, [R1,#(dword_951FBC - 0x951FA8)]
589CF6:  IT EQ
589CF8:  ADDEQ           R3, R4, #4
589CFA:  VLDR            D16, [R3]
589CFE:  ADD.W           R2, R6, #0x30 ; '0'
589D02:  CMP             R6, #0
589D04:  IT EQ
589D06:  ADDEQ           R2, R1, #4
589D08:  VLDR            D17, [R2]
589D0C:  VSUB.F32        D16, D16, D17
589D10:  VMUL.F32        D0, D16, D16
589D14:  VADD.F32        S0, S0, S1
589D18:  VADD.F32        S0, S0, S30
589D1C:  VSQRT.F32       S26, S0
589D20:  VCMPE.F32       S26, S28
589D24:  VMRS            APSR_nzcv, FPSCR
589D28:  BGE.W           loc_58A156
589D2C:  VSQRT.F32       S2, S16
589D30:  LDRH            R1, [R4,#0x26]
589D32:  CMP.W           R1, #0x1CC
589D36:  VLDR            S4, =0.075
589D3A:  VMOV            S0, R5
589D3E:  VMUL.F32        S2, S2, S4
589D42:  VMUL.F32        S0, S2, S0
589D46:  BNE             loc_589D68
589D48:  VMOV.F32        S4, #3.0
589D4C:  VMOV.F32        S2, #0.5
589D50:  VMUL.F32        S0, S0, S4
589D54:  B               loc_589D6C
589D56:  ALIGN 4
589D58:  DCFS 0.0025
589D5C:  DCFS 0.0
589D60:  DCFS 80.0
589D64:  DCFS 0.075
589D68:  VMOV.F32        S2, #1.0
589D6C:  VCMPE.F32       S0, S2
589D70:  VMRS            APSR_nzcv, FPSCR
589D74:  IT GT
589D76:  VMOVGT.F32      S0, S2
589D7A:  VLDR            S2, =0.15
589D7E:  VCMPE.F32       S0, S2
589D82:  VMRS            APSR_nzcv, FPSCR
589D86:  BLE.W           loc_58A156
589D8A:  LDR             R1, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x589D98)
589D8C:  MOV             R2, #0xAAAAAAAB
589D94:  ADD             R1, PC; _ZN6CTimer14m_FrameCounterE_ptr
589D96:  LDR             R1, [R1]; CTimer::m_FrameCounter ...
589D98:  LDR             R1, [R1]; CTimer::m_FrameCounter
589D9A:  UMULL.W         R2, R3, R1, R2
589D9E:  LSRS            R2, R3, #1
589DA0:  ADD.W           R2, R2, R2,LSL#1
589DA4:  SUBS            R1, R1, R2
589DA6:  BNE.W           loc_58A156
589DAA:  VMOV.F32        S17, #0.75
589DAE:  CMP             R0, #1
589DB0:  VMUL.F32        S22, S0, S17
589DB4:  ITTT EQ
589DB6:  VMOVEQ.F32      S0, #1.0
589DBA:  VADDEQ.F32      S2, S22, S22
589DBE:  VMINEQ.F32      D11, D1, D0
589DC2:  BLX             rand
589DC6:  VMOV            S0, R0
589DCA:  VLDR            S18, =4.6566e-10
589DCE:  VLDR            S6, =128.0
589DD2:  VMOV.F32        S2, #10.0
589DD6:  VCVT.F32.S32    S0, S0
589DDA:  VLDR            S20, =0.4
589DDE:  VADD.F32        S4, S22, S22
589DE2:  VLDR            S21, =0.3
589DE6:  VMUL.F32        S6, S22, S6
589DEA:  VLDR            S24, =0.8
589DEE:  VMUL.F32        S16, S22, S2
589DF2:  VMUL.F32        S0, S0, S18
589DF6:  VADD.F32        S2, S4, S21
589DFA:  VADD.F32        S4, S6, S30
589DFE:  VADD.F32        S30, S16, S17
589E02:  VMUL.F32        S0, S0, S20
589E06:  VADD.F32        S0, S0, S24
589E0A:  VMUL.F32        S17, S2, S0
589E0E:  VLDR            S0, =50.0
589E12:  VCVT.U32.F32    S2, S4
589E16:  VCMPE.F32       S26, S0
589E1A:  VMOV            R5, S2
589E1E:  CMP             R5, #0x40 ; '@'
589E20:  IT CS
589E22:  MOVCS           R5, #0x40 ; '@'
589E24:  VMRS            APSR_nzcv, FPSCR
589E28:  BLE             loc_589E4A
589E2A:  VMOV.F32        S0, #30.0
589E2E:  VSUB.F32        S2, S28, S26
589E32:  VDIV.F32        S0, S2, S0
589E36:  VMOV            S2, R5
589E3A:  VCVT.F32.S32    S2, S2
589E3E:  VMUL.F32        S0, S0, S2
589E42:  VCVT.U32.F32    S0, S0
589E46:  VMOV            R5, S0
589E4A:  MOV.W           R0, #0x3F800000
589E4E:  MOVS            R1, #0
589E50:  STRD.W          R0, R0, [SP,#0xD0+var_D0]; float
589E54:  MOV.W           R2, #0x3F800000; float
589E58:  STR             R1, [SP,#0xD0+var_C8]; float
589E5A:  MOV.W           R1, #0x3F800000; float
589E5E:  STR             R0, [SP,#0xD0+var_C4]; float
589E60:  ADD             R0, SP, #0xD0+var_7C; this
589E62:  MOV.W           R3, #0x3F800000; float
589E66:  MOV.W           R10, #0
589E6A:  MOV             R11, R0
589E6C:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
589E70:  VMOV            S0, R5
589E74:  VLDR            S2, =255.0
589E78:  VLDR            S4, =0.1
589E7C:  VMOV.F32        S6, #1.0
589E80:  VCVT.F32.U32    S0, S0
589E84:  MOV             R0, R4; this
589E86:  VMUL.F32        S4, S30, S4
589E8A:  VDIV.F32        S0, S0, S2
589E8E:  VLDR            S2, =0.2
589E92:  VMIN.F32        D2, D2, D3
589E96:  VMIN.F32        D0, D0, D3
589E9A:  VMUL.F32        S2, S17, S2
589E9E:  VSTR            S4, [SP,#0xD0+var_6C]
589EA2:  VMIN.F32        D1, D1, D3
589EA6:  VSTR            S2, [SP,#0xD0+var_64]
589EAA:  VSTR            S0, [SP,#0xD0+var_70]
589EAE:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
589EB2:  VLDR            S22, [R0]
589EB6:  VLDR            S30, [R0,#8]
589EBA:  MOV             R0, R4; this
589EBC:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
589EC0:  VMOV.F32        S2, #0.25
589EC4:  LDRH            R1, [R4,#0x26]
589EC6:  VMOV.F32        S0, #0.5
589ECA:  VLDR            S26, =0.7
589ECE:  CMP.W           R1, #0x1CC
589ED2:  ADR             R2, dword_58A1A0
589ED4:  ADD             R5, SP, #0xD0+var_88
589ED6:  IT EQ
589ED8:  VMOVEQ.F32      S26, S2
589EDC:  CMP.W           R1, #0x1CC
589EE0:  VLDR            S2, [R0,#0x10]
589EE4:  VLDR            S28, [R0,#0xC]
589EE8:  IT EQ
589EEA:  ADDEQ           R2, #4
589EEC:  VLDR            S4, [R2]
589EF0:  VMUL.F32        S17, S2, S0
589EF4:  VMUL.F32        S0, S22, S26
589EF8:  ADD             R0, SP, #0xD0+var_98
589EFA:  VMUL.F32        S30, S30, S4
589EFE:  MOV             R2, R5
589F00:  VSTR            S17, [SP,#0xD0+var_88+4]
589F04:  VSTR            S30, [SP,#0xD0+var_80]
589F08:  VSTR            S0, [SP,#0xD0+var_88]
589F0C:  LDR             R1, [R4,#0x14]
589F0E:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
589F12:  VLDR            D16, [SP,#0xD0+var_98]
589F16:  LDR             R0, [SP,#0xD0+var_90]
589F18:  STR             R0, [SP,#0xD0+var_80]
589F1A:  VSTR            D16, [SP,#0xD0+var_88]
589F1E:  LDR             R0, [R4,#0x14]
589F20:  VLDR            S22, [R0,#0x10]
589F24:  VLDR            S19, [R0,#0x14]
589F28:  VLDR            S23, [R0,#0x18]
589F2C:  BLX             rand
589F30:  VMOV            S0, R0
589F34:  VCVT.F32.S32    S0, S0
589F38:  VMUL.F32        S0, S0, S18
589F3C:  VMUL.F32        S0, S0, S20
589F40:  VADD.F32        S0, S0, S24
589F44:  VNMUL.F32       S22, S22, S0
589F48:  VNMUL.F32       S25, S19, S0
589F4C:  VNMUL.F32       S23, S23, S0
589F50:  VSTR            S22, [SP,#0xD0+var_98]
589F54:  VSTR            S25, [SP,#0xD0+var_98+4]
589F58:  VSTR            S23, [SP,#0xD0+var_90]
589F5C:  LDR             R6, [R4,#0x14]
589F5E:  BLX             rand
589F62:  VMOV            S0, R0
589F66:  VCVT.F32.S32    S19, S0
589F6A:  VLDR            S27, [R6]
589F6E:  VLDR            S29, [R6,#4]
589F72:  VLDR            S31, [R6,#8]
589F76:  LDR             R6, [R4,#0x14]
589F78:  BLX             rand
589F7C:  VMOV            S0, R0
589F80:  LDR             R0, =(g_fx_ptr - 0x589F9A)
589F82:  VMUL.F32        S2, S19, S18
589F86:  VLDR            S19, =0.4
589F8A:  VCVT.F32.S32    S0, S0
589F8E:  VLDR            S8, [R6,#0x20]
589F92:  VLDR            S10, [R6,#0x24]
589F96:  ADD             R0, PC; g_fx_ptr
589F98:  VLDR            S12, [R6,#0x28]
589F9C:  MOVW            R1, #0x999A
589FA0:  LDR             R6, [R0]; g_fx
589FA2:  MOVW            R9, #0x999A
589FA6:  MOVW            R8, #0
589FAA:  MOVT            R1, #0x3F19
589FAE:  MOVT            R9, #0x3F99
589FB2:  MOVT            R8, #0xBF80
589FB6:  VMUL.F32        S2, S2, S19
589FBA:  LDR             R0, [R6,#(dword_820524 - 0x820520)]; int
589FBC:  VMUL.F32        S0, S0, S18
589FC0:  ADD             R2, SP, #0xD0+var_98; int
589FC2:  MOVS            R3, #0; int
589FC4:  VADD.F32        S2, S2, S21
589FC8:  VMUL.F32        S0, S0, S20
589FCC:  VMUL.F32        S4, S29, S2
589FD0:  VMUL.F32        S6, S27, S2
589FD4:  VADD.F32        S0, S0, S24
589FD8:  VMUL.F32        S2, S31, S2
589FDC:  VSUB.F32        S4, S25, S4
589FE0:  VSUB.F32        S6, S22, S6
589FE4:  VMUL.F32        S10, S10, S0
589FE8:  VMUL.F32        S8, S8, S0
589FEC:  VMUL.F32        S0, S12, S0
589FF0:  VSUB.F32        S2, S23, S2
589FF4:  VADD.F32        S4, S10, S4
589FF8:  VADD.F32        S6, S6, S8
589FFC:  VADD.F32        S0, S0, S2
58A000:  VMUL.F32        S2, S16, S4
58A004:  VMUL.F32        S4, S16, S6
58A008:  VMUL.F32        S0, S16, S0
58A00C:  VSTR            S2, [SP,#0xD0+var_98+4]
58A010:  VSTR            S4, [SP,#0xD0+var_98]
58A014:  VSTR            S0, [SP,#0xD0+var_90]
58A018:  STRD.W          R11, R8, [SP,#0xD0+var_D0]; int
58A01C:  STRD.W          R9, R1, [SP,#0xD0+var_C8]; float
58A020:  MOV             R1, R5; int
58A022:  STR.W           R10, [SP,#0xD0+var_C0]; int
58A026:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
58A02A:  VMUL.F32        S0, S28, S26
58A02E:  VSTR            S17, [SP,#0xD0+var_A8+4]
58A032:  ADD.W           R11, SP, #0xD0+var_A8
58A036:  ADD             R0, SP, #0xD0+var_B8
58A038:  MOV             R2, R11
58A03A:  VSTR            S0, [SP,#0xD0+var_A8]
58A03E:  VSTR            S30, [SP,#0xD0+var_A0]
58A042:  LDR             R1, [R4,#0x14]
58A044:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
58A048:  VLDR            D16, [SP,#0xD0+var_B8]
58A04C:  LDR             R0, [SP,#0xD0+var_B0]
58A04E:  STR             R0, [SP,#0xD0+var_A0]
58A050:  VSTR            D16, [SP,#0xD0+var_A8]
58A054:  LDR             R0, [R4,#0x14]
58A056:  VLDR            S22, [R0,#0x10]
58A05A:  VLDR            S26, [R0,#0x14]
58A05E:  VLDR            S28, [R0,#0x18]
58A062:  BLX             rand
58A066:  VMOV            S0, R0
58A06A:  VCVT.F32.S32    S0, S0
58A06E:  VMUL.F32        S0, S0, S18
58A072:  VMUL.F32        S0, S0, S20
58A076:  VADD.F32        S30, S0, S24
58A07A:  VNMUL.F32       S0, S22, S30
58A07E:  VNMUL.F32       S2, S26, S30
58A082:  VNMUL.F32       S4, S28, S30
58A086:  VSTR            S0, [SP,#0xD0+var_B8]
58A08A:  VSTR            S2, [SP,#0xD0+var_B8+4]
58A08E:  VSTR            S4, [SP,#0xD0+var_B0]
58A092:  LDR.W           R10, [R4,#0x14]
58A096:  BLX             rand
58A09A:  MOV             R5, R0
58A09C:  LDR             R4, [R4,#0x14]
58A09E:  VLDR            S17, [R10]
58A0A2:  VLDR            S23, [R10,#4]
58A0A6:  VLDR            S25, [R10,#8]
58A0AA:  BLX             rand
58A0AE:  VMOV            S2, R5
58A0B2:  ADD             R1, SP, #0xD0+var_7C
58A0B4:  VMOV            S0, R0
58A0B8:  ADD             R2, SP, #0xD0+var_B8; int
58A0BA:  VCVT.F32.S32    S2, S2
58A0BE:  MOVS            R3, #0; int
58A0C0:  VCVT.F32.S32    S0, S0
58A0C4:  VLDR            S14, [R4,#0x20]
58A0C8:  VMUL.F32        S4, S26, S30
58A0CC:  VLDR            S1, [R4,#0x24]
58A0D0:  VMUL.F32        S8, S22, S30
58A0D4:  VLDR            S3, [R4,#0x28]
58A0D8:  VMUL.F32        S12, S28, S30
58A0DC:  LDR             R0, [R6,#(dword_820524 - 0x820520)]; int
58A0DE:  VMUL.F32        S2, S2, S18
58A0E2:  VMUL.F32        S0, S0, S18
58A0E6:  VMUL.F32        S2, S2, S19
58A0EA:  VMUL.F32        S0, S0, S20
58A0EE:  VADD.F32        S2, S2, S21
58A0F2:  VADD.F32        S0, S0, S24
58A0F6:  VMUL.F32        S6, S23, S2
58A0FA:  VMUL.F32        S10, S17, S2
58A0FE:  VMUL.F32        S2, S25, S2
58A102:  VMUL.F32        S1, S1, S0
58A106:  VSUB.F32        S4, S6, S4
58A10A:  VMUL.F32        S6, S14, S0
58A10E:  VSUB.F32        S8, S10, S8
58A112:  VMUL.F32        S0, S3, S0
58A116:  VSUB.F32        S2, S2, S12
58A11A:  VADD.F32        S4, S1, S4
58A11E:  VADD.F32        S6, S8, S6
58A122:  VADD.F32        S0, S0, S2
58A126:  VMUL.F32        S2, S16, S4
58A12A:  VMUL.F32        S4, S16, S6
58A12E:  VMUL.F32        S0, S16, S0
58A132:  VSTR            S2, [SP,#0xD0+var_B8+4]
58A136:  VSTR            S4, [SP,#0xD0+var_B8]
58A13A:  VSTR            S0, [SP,#0xD0+var_B0]
58A13E:  STMEA.W         SP, {R1,R8,R9}
58A142:  MOV             R1, #0x3F19999A
58A14A:  STR             R1, [SP,#0xD0+var_C4]; float
58A14C:  MOVS            R1, #0
58A14E:  STR             R1, [SP,#0xD0+var_C0]; int
58A150:  MOV             R1, R11; int
58A152:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
58A156:  ADD             SP, SP, #0x70 ; 'p'
58A158:  VPOP            {D8-D15}
58A15C:  ADD             SP, SP, #4
58A15E:  POP.W           {R8-R11}
58A162:  POP             {R4-R7,PC}
