; =========================================================
; Game Engine Function: _ZN4Fx_c12AddWheelDustEP8CVehicle7CVectorhf
; Address            : 0x365DA4 - 0x3660F2
; =========================================================

365DA4:  PUSH            {R4-R7,LR}
365DA6:  ADD             R7, SP, #0xC
365DA8:  PUSH.W          {R8-R11}
365DAC:  SUB             SP, SP, #4
365DAE:  VPUSH           {D8-D15}
365DB2:  SUB             SP, SP, #0x48
365DB4:  MOV             R4, R1
365DB6:  MOV             R8, R0
365DB8:  MOV.W           R0, #0xFFFFFFFF; int
365DBC:  MOVS            R1, #0; bool
365DBE:  MOV             R6, R3
365DC0:  MOV             R5, R2
365DC2:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
365DC6:  LDR             R1, =(TheCamera_ptr - 0x365DD8)
365DC8:  VMOV            S16, R6
365DCC:  VMOV            S18, R5
365DD0:  VLDR            S20, [R7,#arg_0]
365DD4:  ADD             R1, PC; TheCamera_ptr
365DD6:  LDR             R1, [R1]; TheCamera
365DD8:  LDR             R2, [R1,#(dword_951FBC - 0x951FA8)]
365DDA:  ADD.W           R3, R2, #0x30 ; '0'
365DDE:  CMP             R2, #0
365DE0:  IT EQ
365DE2:  ADDEQ           R3, R1, #4
365DE4:  VLDR            S0, [R3]
365DE8:  VLDR            S2, [R3,#4]
365DEC:  VSUB.F32        S0, S0, S18
365DF0:  VLDR            S4, [R3,#8]
365DF4:  VSUB.F32        S2, S2, S16
365DF8:  VSUB.F32        S4, S4, S20
365DFC:  VMUL.F32        S0, S0, S0
365E00:  VMUL.F32        S2, S2, S2
365E04:  VMUL.F32        S4, S4, S4
365E08:  VADD.F32        S0, S0, S2
365E0C:  VLDR            S2, =625.0
365E10:  VADD.F32        S0, S0, S4
365E14:  VCMPE.F32       S0, S2
365E18:  VMRS            APSR_nzcv, FPSCR
365E1C:  BGT.W           loc_3660E4
365E20:  LDR.W           R1, [R8,#0x54]
365E24:  CMP             R1, #1
365E26:  BLT             loc_365E64
365E28:  LDR             R1, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x365E32)
365E2A:  LDRSH.W         R2, [R4,#0x26]
365E2E:  ADD             R1, PC; _ZN6CTimer14m_FrameCounterE_ptr
365E30:  LDR             R1, [R1]; CTimer::m_FrameCounter ...
365E32:  LDR             R1, [R1]; CTimer::m_FrameCounter
365E34:  ADD             R1, R2
365E36:  TST.W           R1, #1
365E3A:  BNE.W           loc_3660E4
365E3E:  VLDR            S2, =64.0
365E42:  MOVS            R2, #0
365E44:  VCMPE.F32       S0, S2
365E48:  VMRS            APSR_nzcv, FPSCR
365E4C:  IT LE
365E4E:  MOVLE           R2, #1
365E50:  CMP             R0, #0
365E52:  IT NE
365E54:  MOVNE           R0, #1
365E56:  TST             R0, R2
365E58:  BNE             loc_365E68
365E5A:  ANDS.W          R0, R1, #3
365E5E:  BNE.W           loc_3660E4
365E62:  B               loc_365E68
365E64:  CMP             R1, #0
365E66:  BEQ             loc_365F24
365E68:  MOVS            R0, #0
365E6A:  MOV.W           R1, #0x3F800000
365E6E:  MOV.W           R2, #0x3F000000
365E72:  MOVW            R3, #0xB852
365E76:  STRD.W          R2, R1, [SP,#0xA8+var_A8]; float
365E7A:  MOVW            R1, #0x8F5C
365E7E:  MOVW            R2, #0x47AE
365E82:  STRD.W          R0, R0, [SP,#0xA8+var_A0]; float
365E86:  ADD             R0, SP, #0xA8+var_7C; this
365E88:  MOVT            R1, #0x3F02; float
365E8C:  MOVT            R2, #0x3EE1; float
365E90:  MOVT            R3, #0x3E9E; float
365E94:  LDR             R5, [R7,#arg_4]
365E96:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
365E9A:  ADD.W           R0, R4, #0x4A0
365E9E:  CMP             R5, #0
365EA0:  VLDR            S0, [R0]
365EA4:  BEQ             loc_365EAC
365EA6:  VMOV.F32        S2, #1.0
365EAA:  B               loc_365EE6
365EAC:  VLDR            S2, [R4,#0x48]
365EB0:  VLDR            S4, [R4,#0x4C]
365EB4:  VMUL.F32        S2, S2, S2
365EB8:  VLDR            S6, [R4,#0x50]
365EBC:  VMUL.F32        S4, S4, S4
365EC0:  VMUL.F32        S6, S6, S6
365EC4:  VADD.F32        S2, S2, S4
365EC8:  VADD.F32        S2, S2, S6
365ECC:  VSQRT.F32       S4, S2
365ED0:  VMOV.F32        S2, #1.0
365ED4:  VADD.F32        S4, S4, S4
365ED8:  VCMPE.F32       S4, S2
365EDC:  VMRS            APSR_nzcv, FPSCR
365EE0:  IT LE
365EE2:  VMOVLE.F32      S2, S4
365EE6:  VLDR            S4, =0.9
365EEA:  VLDR            S6, =0.05
365EEE:  VMUL.F32        S4, S2, S4
365EF2:  VLDR            S8, =0.1
365EF6:  VMUL.F32        S6, S2, S6
365EFA:  VADD.F32        S4, S4, S8
365EFE:  VADD.F32        S8, S6, S8
365F02:  VMOV.F32        S6, #2.0
365F06:  VSTR            S4, [SP,#0xA8+var_6C]
365F0A:  VSTR            S8, [SP,#0xA8+var_64]
365F0E:  LDR.W           R0, [R4,#0x5A4]
365F12:  CMP             R0, #2
365F14:  BEQ             loc_365F1E
365F16:  CMP             R0, #0xA
365F18:  BEQ             loc_365F60
365F1A:  CMP             R0, #9
365F1C:  BNE             loc_365F66
365F1E:  VMOV.F32        S8, #0.5
365F22:  B               loc_365F6E
365F24:  LDR             R1, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x365F2E)
365F26:  LDRSH.W         R2, [R4,#0x26]
365F2A:  ADD             R1, PC; _ZN6CTimer14m_FrameCounterE_ptr
365F2C:  LDR             R1, [R1]; CTimer::m_FrameCounter ...
365F2E:  LDR             R1, [R1]; CTimer::m_FrameCounter
365F30:  ADD             R1, R2
365F32:  TST.W           R1, #3
365F36:  BNE.W           loc_3660E4
365F3A:  VLDR            S2, =64.0
365F3E:  MOVS            R2, #0
365F40:  VCMPE.F32       S0, S2
365F44:  VMRS            APSR_nzcv, FPSCR
365F48:  IT LE
365F4A:  MOVLE           R2, #1
365F4C:  CMP             R0, #0
365F4E:  IT NE
365F50:  MOVNE           R0, #1
365F52:  TST             R0, R2
365F54:  BNE             loc_365E68
365F56:  ANDS.W          R0, R1, #7
365F5A:  BNE.W           loc_3660E4
365F5E:  B               loc_365E68
365F60:  VMOV.F32        S8, #0.25
365F64:  B               loc_365F6E
365F66:  VMOV.F32        S6, #1.5
365F6A:  VLDR            S8, =0.7
365F6E:  VMUL.F32        S4, S8, S4
365F72:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x365F78)
365F74:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
365F76:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
365F78:  VSTR            S4, [SP,#0xA8+var_6C]
365F7C:  VLDR            S8, [R0]
365F80:  VLDR            S4, [R4,#0x48]
365F84:  VLDR            S10, [R4,#0x4C]
365F88:  VMUL.F32        S24, S8, S4
365F8C:  VLDR            S12, [R4,#0x50]
365F90:  VMUL.F32        S22, S8, S10
365F94:  VMUL.F32        S26, S8, S12
365F98:  VMUL.F32        S10, S24, S24
365F9C:  VMUL.F32        S8, S22, S22
365FA0:  VMUL.F32        S12, S26, S26
365FA4:  VADD.F32        S8, S10, S8
365FA8:  VADD.F32        S8, S8, S12
365FAC:  VSQRT.F32       S8, S8
365FB0:  VMUL.F32        S6, S6, S8
365FB4:  VCVT.S32.F32    S6, S6
365FB8:  VMOV            R6, S6
365FBC:  CMP             R6, #1
365FBE:  IT LE
365FC0:  MOVLE           R6, #1
365FC2:  CMP             R6, #1
365FC4:  BLT.W           loc_3660E4
365FC8:  VABS.F32        S30, S0
365FCC:  VLDR            S0, =0.8
365FD0:  VMOV            S6, R6
365FD4:  LDR             R0, =(g_fx_ptr - 0x365FE6)
365FD6:  VADD.F32        S0, S2, S0
365FDA:  VLDR            S2, =-0.2
365FDE:  VCVT.F32.S32    S17, S6
365FE2:  ADD             R0, PC; g_fx_ptr
365FE4:  VMOV.F32        S27, #1.0
365FE8:  MOVW            R10, #0
365FEC:  LDR             R5, [R0]; g_fx
365FEE:  ADD.W           R9, SP, #0xA8+var_94
365FF2:  VLDR            S28, [R7,#arg_8]
365FF6:  ADD.W           R11, SP, #0xA8+var_88
365FFA:  VLDR            S21, =-40.0
365FFE:  MOVT            R10, #0xBF80
366002:  VLDR            S23, =4.6566e-10
366006:  MOV.W           R8, #0
36600A:  VADD.F32        S19, S0, S2
36600E:  VLDR            S25, =0.0
366012:  VLDR            S29, =0.2
366016:  B               loc_36601C
366018:  VLDR            S4, [R4,#0x48]
36601C:  VMUL.F32        S31, S30, S4
366020:  BLX             rand
366024:  VMOV            S0, R0
366028:  VMUL.F32        S2, S31, S21
36602C:  VCVT.F32.S32    S0, S0
366030:  VMUL.F32        S0, S0, S23
366034:  VMUL.F32        S0, S2, S0
366038:  VADD.F32        S0, S0, S25
36603C:  VSTR            S0, [SP,#0xA8+var_88]
366040:  VLDR            S0, [R4,#0x4C]
366044:  VMUL.F32        S31, S30, S0
366048:  BLX             rand
36604C:  VMOV            S0, R0
366050:  VMUL.F32        S2, S31, S21
366054:  VCVT.F32.S32    S0, S0
366058:  VMOV            S4, R8
36605C:  VCVT.F32.S32    S4, S4
366060:  VMUL.F32        S0, S0, S23
366064:  VDIV.F32        S31, S4, S17
366068:  VMUL.F32        S0, S2, S0
36606C:  VADD.F32        S0, S0, S25
366070:  VSTR            S0, [SP,#0xA8+var_84]
366074:  BLX             rand
366078:  VMOV            S0, R0
36607C:  MOVW            R1, #0x3333
366080:  VSUB.F32        S2, S27, S31
366084:  MOVT            R1, #0x3F33
366088:  VCVT.F32.S32    S0, S0
36608C:  STR             R1, [SP,#0xA8+var_9C]; float
36608E:  MOVS            R1, #0
366090:  LDR             R0, [R5,#(dword_820538 - 0x820520)]; int
366092:  STR             R1, [SP,#0xA8+var_98]; int
366094:  ADD             R1, SP, #0xA8+var_7C
366096:  VSTR            S28, [SP,#0xA8+var_A0]
36609A:  MOV             R2, R11; int
36609C:  MOVS            R3, #0; int
36609E:  VMUL.F32        S4, S22, S2
3660A2:  VMUL.F32        S0, S0, S23
3660A6:  VMUL.F32        S6, S24, S2
3660AA:  VMUL.F32        S2, S26, S2
3660AE:  VSUB.F32        S4, S16, S4
3660B2:  VMUL.F32        S0, S19, S0
3660B6:  VSUB.F32        S6, S18, S6
3660BA:  VSUB.F32        S2, S20, S2
3660BE:  VSTR            S4, [SP,#0xA8+var_90]
3660C2:  VADD.F32        S0, S0, S29
3660C6:  VSTR            S6, [SP,#0xA8+var_94]
3660CA:  VSTR            S2, [SP,#0xA8+var_8C]
3660CE:  VSTR            S0, [SP,#0xA8+var_80]
3660D2:  STRD.W          R1, R10, [SP,#0xA8+var_A8]; int
3660D6:  MOV             R1, R9; int
3660D8:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
3660DC:  ADD.W           R8, R8, #1
3660E0:  CMP             R8, R6
3660E2:  BLT             loc_366018
3660E4:  ADD             SP, SP, #0x48 ; 'H'
3660E6:  VPOP            {D8-D15}
3660EA:  ADD             SP, SP, #4
3660EC:  POP.W           {R8-R11}
3660F0:  POP             {R4-R7,PC}
