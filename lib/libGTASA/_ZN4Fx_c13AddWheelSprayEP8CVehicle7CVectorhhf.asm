; =========================================================
; Game Engine Function: _ZN4Fx_c13AddWheelSprayEP8CVehicle7CVectorhhf
; Address            : 0x364F18 - 0x36524A
; =========================================================

364F18:  PUSH            {R4-R7,LR}
364F1A:  ADD             R7, SP, #0xC
364F1C:  PUSH.W          {R8-R11}
364F20:  SUB             SP, SP, #4
364F22:  VPUSH           {D8-D15}
364F26:  SUB             SP, SP, #0x48
364F28:  MOV             R4, R1
364F2A:  MOV.W           R0, #0xFFFFFFFF; int
364F2E:  MOVS            R1, #0; bool
364F30:  MOV             R5, R3
364F32:  MOV             R6, R2
364F34:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
364F38:  LDR             R1, =(TheCamera_ptr - 0x364F4A)
364F3A:  VMOV            S16, R5
364F3E:  VMOV            S18, R6
364F42:  VLDR            S20, [R7,#arg_0]
364F46:  ADD             R1, PC; TheCamera_ptr
364F48:  LDR             R1, [R1]; TheCamera
364F4A:  LDR             R2, [R1,#(dword_951FBC - 0x951FA8)]
364F4C:  ADD.W           R3, R2, #0x30 ; '0'
364F50:  CMP             R2, #0
364F52:  IT EQ
364F54:  ADDEQ           R3, R1, #4
364F56:  VLDR            S0, [R3]
364F5A:  VLDR            S2, [R3,#4]
364F5E:  VSUB.F32        S0, S0, S18
364F62:  VLDR            S4, [R3,#8]
364F66:  VSUB.F32        S2, S2, S16
364F6A:  VSUB.F32        S4, S4, S20
364F6E:  VMUL.F32        S0, S0, S0
364F72:  VMUL.F32        S2, S2, S2
364F76:  VMUL.F32        S4, S4, S4
364F7A:  VADD.F32        S0, S0, S2
364F7E:  VLDR            S2, =625.0
364F82:  VADD.F32        S0, S0, S4
364F86:  VCMPE.F32       S0, S2
364F8A:  VMRS            APSR_nzcv, FPSCR
364F8E:  BGT.W           loc_36523C
364F92:  VLDR            S2, =400.0
364F96:  VCMPE.F32       S0, S2
364F9A:  VMRS            APSR_nzcv, FPSCR
364F9E:  BLE             loc_364FB4
364FA0:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x364FA8)
364FA2:  LDRH            R1, [R4,#0x26]
364FA4:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
364FA6:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
364FA8:  LDR             R0, [R0]; CTimer::m_FrameCounter
364FAA:  ADD             R0, R1
364FAC:  LSLS            R0, R0, #0x1E
364FAE:  BNE.W           loc_36523C
364FB2:  B               loc_364FD6
364FB4:  CBZ             R0, loc_364FC4
364FB6:  VLDR            S2, =64.0
364FBA:  VCMPE.F32       S0, S2
364FBE:  VMRS            APSR_nzcv, FPSCR
364FC2:  BLE             loc_364FD6
364FC4:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x364FCC)
364FC6:  LDRH            R1, [R4,#0x26]
364FC8:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
364FCA:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
364FCC:  LDR             R0, [R0]; CTimer::m_FrameCounter
364FCE:  ADD             R0, R1
364FD0:  LSLS            R0, R0, #0x1F
364FD2:  BNE.W           loc_36523C
364FD6:  LDR             R6, [R7,#arg_4]
364FD8:  CBNZ            R6, loc_365012
364FDA:  VLDR            S0, [R4,#0x48]
364FDE:  VLDR            S2, [R4,#0x4C]
364FE2:  VMUL.F32        S0, S0, S0
364FE6:  VLDR            S4, [R4,#0x50]
364FEA:  VMUL.F32        S2, S2, S2
364FEE:  VMUL.F32        S4, S4, S4
364FF2:  VADD.F32        S0, S0, S2
364FF6:  VLDR            S2, =0.01
364FFA:  VADD.F32        S0, S0, S4
364FFE:  VSQRT.F32       S0, S0
365002:  VABS.F32        S0, S0
365006:  VCMPE.F32       S0, S2
36500A:  VMRS            APSR_nzcv, FPSCR
36500E:  BLE.W           loc_36523C
365012:  MOVW            R2, #0xCCCD
365016:  MOVS            R0, #0
365018:  MOVT            R2, #0x3D4C
36501C:  MOV.W           R1, #0x3F800000
365020:  STRD.W          R2, R0, [SP,#0xA8+var_A8]; float
365024:  MOV.W           R2, #0x3F800000; float
365028:  STRD.W          R1, R0, [SP,#0xA8+var_A0]; float
36502C:  ADD             R0, SP, #0xA8+var_7C; this
36502E:  MOV.W           R1, #0x3F800000; float
365032:  MOV.W           R3, #0x3F800000; float
365036:  LDR             R5, [R7,#arg_8]
365038:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
36503C:  CBZ             R6, loc_365044
36503E:  VMOV.F32        S22, #1.0
365042:  B               loc_36507E
365044:  VLDR            S0, [R4,#0x48]
365048:  VMOV.F32        S22, #1.0
36504C:  VLDR            S2, [R4,#0x4C]
365050:  VMUL.F32        S0, S0, S0
365054:  VLDR            S4, [R4,#0x50]
365058:  VMUL.F32        S2, S2, S2
36505C:  VMUL.F32        S4, S4, S4
365060:  VADD.F32        S0, S0, S2
365064:  VADD.F32        S0, S0, S4
365068:  VSQRT.F32       S0, S0
36506C:  VADD.F32        S0, S0, S0
365070:  VCMPE.F32       S0, S22
365074:  VMRS            APSR_nzcv, FPSCR
365078:  IT LE
36507A:  VMOVLE.F32      S22, S0
36507E:  ADR             R0, dword_36526C
365080:  CMP             R5, #0
365082:  IT NE
365084:  ADDNE           R0, #4
365086:  VLDR            S0, =0.2
36508A:  VLDR            S2, [R0]
36508E:  VMUL.F32        S4, S22, S0
365092:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x36509C)
365094:  VMUL.F32        S6, S2, S22
365098:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
36509A:  LDR             R5, [R0]; CTimer::ms_fTimeStep ...
36509C:  MOV             R0, #0x3DA3D70A
3650A4:  STR             R0, [SP,#0xA8+var_64]
3650A6:  VADD.F32        S0, S4, S0
3650AA:  VADD.F32        S2, S2, S6
3650AE:  VSTR            S0, [SP,#0xA8+var_6C]
3650B2:  VSTR            S2, [SP,#0xA8+var_70]
3650B6:  BLX             rand
3650BA:  VLDR            S2, [R4,#0x48]
3650BE:  VLDR            S0, [R5]
3650C2:  VLDR            S6, [R4,#0x4C]
3650C6:  VMUL.F32        S10, S2, S0
3650CA:  VLDR            S4, [R4,#0x50]
3650CE:  VMUL.F32        S8, S6, S0
3650D2:  VMUL.F32        S12, S4, S0
3650D6:  VMUL.F32        S10, S10, S10
3650DA:  VMUL.F32        S8, S8, S8
3650DE:  VMUL.F32        S12, S12, S12
3650E2:  VADD.F32        S10, S10, S8
3650E6:  VMOV            S8, R0
3650EA:  VCVT.F32.S32    S8, S8
3650EE:  VADD.F32        S10, S12, S10
3650F2:  VSQRT.F32       S10, S10
3650F6:  VCVT.S32.F32    S10, S10
3650FA:  VMOV            R6, S10
3650FE:  CMP             R6, #1
365100:  IT LE
365102:  MOVLE           R6, #1
365104:  CMP             R6, #1
365106:  BLT.W           loc_36523C
36510A:  VMOV.F32        S10, #10.0
36510E:  VLDR            S26, =4.6566e-10
365112:  VMOV.F32        S14, #30.0
365116:  LDR             R0, =(g_fx_ptr - 0x365128)
365118:  VMUL.F32        S8, S8, S26
36511C:  VLDR            S24, [R7,#arg_C]
365120:  VMOV.F32        S19, #1.0
365124:  ADD             R0, PC; g_fx_ptr
365126:  VMOV.F32        S23, #0.25
36512A:  VLDR            S25, =0.0
36512E:  LDR             R5, [R0]; g_fx
365130:  ADD.W           R9, SP, #0xA8+var_88
365134:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x365146)
365136:  ADD.W           R11, SP, #0xA8+var_94
36513A:  VMUL.F32        S12, S22, S10
36513E:  MOV.W           R10, #0
365142:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
365144:  LDR.W           R8, [R0]; CTimer::ms_fTimeStep ...
365148:  VADD.F32        S10, S12, S10
36514C:  VSUB.F32        S12, S14, S10
365150:  VADD.F32        S10, S10, S14
365154:  VSUB.F32        S10, S10, S12
365158:  VMUL.F32        S8, S10, S8
36515C:  VADD.F32        S8, S12, S8
365160:  VMUL.F32        S28, S4, S8
365164:  VMUL.F32        S30, S6, S8
365168:  VMUL.F32        S17, S2, S8
36516C:  VMOV            S8, R6
365170:  VCVT.F32.S32    S8, S8
365174:  VDIV.F32        S21, S19, S8
365178:  B               loc_36518A
36517A:  VLDR            S2, [R4,#0x48]
36517E:  VLDR            S6, [R4,#0x4C]
365182:  VLDR            S4, [R4,#0x50]
365186:  VLDR            S0, [R8]
36518A:  VMOV            S8, R10
36518E:  VMUL.F32        S6, S21, S6
365192:  VCVT.F32.S32    S8, S8
365196:  VSTR            S30, [SP,#0xA8+var_90]
36519A:  VMUL.F32        S2, S21, S2
36519E:  VSTR            S17, [SP,#0xA8+var_94]
3651A2:  VMUL.F32        S4, S21, S4
3651A6:  VSTR            S28, [SP,#0xA8+var_8C]
3651AA:  VMUL.F32        S6, S6, S8
3651AE:  VMUL.F32        S2, S2, S8
3651B2:  VMUL.F32        S4, S4, S8
3651B6:  VMUL.F32        S6, S6, S0
3651BA:  VMUL.F32        S2, S2, S0
3651BE:  VMUL.F32        S0, S0, S4
3651C2:  VSUB.F32        S4, S16, S6
3651C6:  VSUB.F32        S2, S18, S2
3651CA:  VSUB.F32        S0, S20, S0
3651CE:  VADD.F32        S4, S4, S25
3651D2:  VADD.F32        S2, S2, S25
3651D6:  VADD.F32        S0, S0, S23
3651DA:  VSTR            S4, [SP,#0xA8+var_84]
3651DE:  VSTR            S2, [SP,#0xA8+var_88]
3651E2:  VSTR            S0, [SP,#0xA8+var_80]
3651E6:  BLX             rand
3651EA:  VMOV            S0, R0
3651EE:  MOV             R1, #0x3F19999A
3651F6:  MOV             R2, R11; int
3651F8:  VCVT.F32.S32    S0, S0
3651FC:  VLDR            S2, [SP,#0xA8+var_8C]
365200:  STR             R1, [SP,#0xA8+var_9C]; float
365202:  MOVS            R1, #0
365204:  STR             R1, [SP,#0xA8+var_98]; int
365206:  ADD             R1, SP, #0xA8+var_7C
365208:  VSTR            S24, [SP,#0xA8+var_A0]
36520C:  MOVS            R3, #0; int
36520E:  STR             R1, [SP,#0xA8+var_A8]; int
365210:  MOVS            R1, #0
365212:  LDR             R0, [R5,#(dword_820524 - 0x820520)]; int
365214:  MOVT            R1, #0xBF80
365218:  STR             R1, [SP,#0xA8+var_A4]; float
36521A:  MOV             R1, R9; int
36521C:  VMUL.F32        S0, S0, S26
365220:  VADD.F32        S0, S0, S19
365224:  VMUL.F32        S0, S22, S0
365228:  VADD.F32        S0, S2, S0
36522C:  VSTR            S0, [SP,#0xA8+var_8C]
365230:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
365234:  ADD.W           R10, R10, #1
365238:  CMP             R10, R6
36523A:  BLT             loc_36517A
36523C:  ADD             SP, SP, #0x48 ; 'H'
36523E:  VPOP            {D8-D15}
365242:  ADD             SP, SP, #4
365244:  POP.W           {R8-R11}
365248:  POP             {R4-R7,PC}
