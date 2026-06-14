; =========================================================
; Game Engine Function: _ZN15CProjectileInfo6UpdateEv
; Address            : 0x5D9EE8 - 0x5DAC5E
; =========================================================

5D9EE8:  PUSH            {R4-R7,LR}
5D9EEA:  ADD             R7, SP, #0xC
5D9EEC:  PUSH.W          {R8-R11}
5D9EF0:  SUB             SP, SP, #4
5D9EF2:  VPUSH           {D8-D15}
5D9EF6:  SUB             SP, SP, #0x110
5D9EF8:  LDR.W           R0, =(_ZN15CProjectileInfo15ms_apProjectileE_ptr - 0x5D9F0C)
5D9EFC:  VMOV.F32        S22, #0.25
5D9F00:  LDR.W           R1, =(gaProjectileInfo_ptr - 0x5D9F12)
5D9F04:  VMOV.F32        S26, #1.0
5D9F08:  ADD             R0, PC; _ZN15CProjectileInfo15ms_apProjectileE_ptr
5D9F0A:  VMOV.F32        S30, #-1.0
5D9F0E:  ADD             R1, PC; gaProjectileInfo_ptr
5D9F10:  VMOV.F32        S16, #1.5
5D9F14:  LDR             R0, [R0]; CProjectileInfo::ms_apProjectile ...
5D9F16:  MOVS            R5, #0
5D9F18:  STR             R0, [SP,#0x170+var_DC]
5D9F1A:  MOV.W           R8, #0
5D9F1E:  LDR.W           R0, =(gaProjectileInfo_ptr - 0x5D9F28)
5D9F22:  LDR             R6, [R1]; gaProjectileInfo
5D9F24:  ADD             R0, PC; gaProjectileInfo_ptr
5D9F26:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5D9F34)
5D9F2A:  VLDR            S19, =0.000015259
5D9F2E:  LDR             R0, [R0]; gaProjectileInfo
5D9F30:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5D9F32:  STR             R0, [SP,#0x170+var_E4]
5D9F34:  LDR.W           R0, =(gaProjectileInfo_ptr - 0x5D9F40)
5D9F38:  VLDR            S20, =4.6566e-10
5D9F3C:  ADD             R0, PC; gaProjectileInfo_ptr
5D9F3E:  VLDR            S24, =0.04
5D9F42:  VLDR            S28, =0.08
5D9F46:  LDR             R0, [R0]; gaProjectileInfo
5D9F48:  STR             R0, [SP,#0x170+var_104]
5D9F4A:  LDR             R0, [R1]; CTimer::m_snTimeInMilliseconds ...
5D9F4C:  STR             R0, [SP,#0x170+var_108]
5D9F4E:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5D9F5A)
5D9F52:  LDR.W           R1, =(gaProjectileInfo_ptr - 0x5D9F60)
5D9F56:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5D9F58:  VLDR            S31, =0.1
5D9F5C:  ADD             R1, PC; gaProjectileInfo_ptr
5D9F5E:  VLDR            S29, =0.05
5D9F62:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5D9F64:  STR             R0, [SP,#0x170+var_10C]
5D9F66:  LDR.W           R0, =(g_fx_ptr - 0x5D9F70)
5D9F6A:  STR             R6, [SP,#0x170+var_E0]
5D9F6C:  ADD             R0, PC; g_fx_ptr
5D9F6E:  LDR             R0, [R0]; g_fx
5D9F70:  STR             R0, [SP,#0x170+var_D0]
5D9F72:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5D9F7A)
5D9F76:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5D9F78:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5D9F7A:  STR             R0, [SP,#0x170+var_E8]
5D9F7C:  LDR             R0, [R1]; gaProjectileInfo
5D9F7E:  STR             R0, [SP,#0x170+var_EC]
5D9F80:  LDR.W           R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x5D9F8C)
5D9F84:  LDR.W           R1, =(gaProjectileInfo_ptr - 0x5D9F8E)
5D9F88:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
5D9F8A:  ADD             R1, PC; gaProjectileInfo_ptr
5D9F8C:  LDR             R0, [R0]; CWorld::pIgnoreEntity ...
5D9F8E:  STR             R0, [SP,#0x170+var_11C]
5D9F90:  LDR.W           R0, =(gaProjectileInfo_ptr - 0x5D9F98)
5D9F94:  ADD             R0, PC; gaProjectileInfo_ptr
5D9F96:  LDR             R0, [R0]; gaProjectileInfo
5D9F98:  STR             R0, [SP,#0x170+var_138]
5D9F9A:  LDR.W           R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x5D9FA2)
5D9F9E:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
5D9FA0:  LDR             R0, [R0]; CWorld::pIgnoreEntity ...
5D9FA2:  STR             R0, [SP,#0x170+var_120]
5D9FA4:  LDR.W           R0, =(gaProjectileInfo_ptr - 0x5D9FAC)
5D9FA8:  ADD             R0, PC; gaProjectileInfo_ptr
5D9FAA:  LDR             R0, [R0]; gaProjectileInfo
5D9FAC:  STR             R0, [SP,#0x170+var_124]
5D9FAE:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5D9FB6)
5D9FB2:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5D9FB4:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5D9FB6:  STR             R0, [SP,#0x170+var_128]
5D9FB8:  LDR.W           R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x5D9FC0)
5D9FBC:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
5D9FBE:  LDR             R0, [R0]; CWorld::pIgnoreEntity ...
5D9FC0:  STR             R0, [SP,#0x170+var_13C]
5D9FC2:  LDR.W           R0, =(gaProjectileInfo_ptr - 0x5D9FCA)
5D9FC6:  ADD             R0, PC; gaProjectileInfo_ptr
5D9FC8:  LDR             R0, [R0]; gaProjectileInfo
5D9FCA:  STR             R0, [SP,#0x170+var_140]
5D9FCC:  LDR.W           R0, =(gaProjectileInfo_ptr - 0x5D9FD4)
5D9FD0:  ADD             R0, PC; gaProjectileInfo_ptr
5D9FD2:  LDR             R0, [R0]; gaProjectileInfo
5D9FD4:  STR             R0, [SP,#0x170+var_12C]
5D9FD6:  LDR.W           R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x5D9FDE)
5D9FDA:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
5D9FDC:  LDR             R0, [R0]; CWorld::pIgnoreEntity ...
5D9FDE:  STR             R0, [SP,#0x170+var_144]
5D9FE0:  LDR.W           R0, =(gaProjectileInfo_ptr - 0x5D9FE8)
5D9FE4:  ADD             R0, PC; gaProjectileInfo_ptr
5D9FE6:  LDR             R0, [R0]; gaProjectileInfo
5D9FE8:  STR             R0, [SP,#0x170+var_148]
5D9FEA:  LDR.W           R0, =(AudioEngine_ptr - 0x5D9FF2)
5D9FEE:  ADD             R0, PC; AudioEngine_ptr
5D9FF0:  LDR             R0, [R0]; AudioEngine
5D9FF2:  STR             R0, [SP,#0x170+var_158]
5D9FF4:  LDR.W           R0, =(_ZN15CProjectileInfo15ms_apProjectileE_ptr - 0x5D9FFC)
5D9FF8:  ADD             R0, PC; _ZN15CProjectileInfo15ms_apProjectileE_ptr
5D9FFA:  LDR             R0, [R0]; CProjectileInfo::ms_apProjectile ...
5D9FFC:  STR             R0, [SP,#0x170+var_118]
5D9FFE:  LDR             R0, [R1]; gaProjectileInfo
5DA000:  STR             R0, [SP,#0x170+var_114]
5DA002:  LDR.W           R0, =(gaProjectileInfo_ptr - 0x5DA00E)
5DA006:  LDR.W           R1, =(gaProjectileInfo_ptr - 0x5DA010)
5DA00A:  ADD             R0, PC; gaProjectileInfo_ptr
5DA00C:  ADD             R1, PC; gaProjectileInfo_ptr
5DA00E:  LDR             R0, [R0]; gaProjectileInfo
5DA010:  STR             R0, [SP,#0x170+var_100]
5DA012:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5DA01A)
5DA016:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5DA018:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5DA01A:  STR             R0, [SP,#0x170+var_150]
5DA01C:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5DA024)
5DA020:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5DA022:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5DA024:  STR             R0, [SP,#0x170+var_154]
5DA026:  LDR.W           R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x5DA02E)
5DA02A:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
5DA02C:  LDR             R0, [R0]; CWorld::pIgnoreEntity ...
5DA02E:  STR             R0, [SP,#0x170+var_130]
5DA030:  LDR             R0, [R1]; gaProjectileInfo
5DA032:  STR             R0, [SP,#0x170+var_134]
5DA034:  LDR.W           R0, =(gaProjectileInfo_ptr - 0x5DA03C)
5DA038:  ADD             R0, PC; gaProjectileInfo_ptr
5DA03A:  LDR             R0, [R0]; gaProjectileInfo
5DA03C:  STR             R0, [SP,#0x170+var_14C]
5DA03E:  LDR.W           R0, =(gaProjectileInfo_ptr - 0x5DA046)
5DA042:  ADD             R0, PC; gaProjectileInfo_ptr
5DA044:  LDR             R0, [R0]; gaProjectileInfo
5DA046:  STR             R0, [SP,#0x170+var_F0]
5DA048:  LDR.W           R0, =(gaProjectileInfo_ptr - 0x5DA050)
5DA04C:  ADD             R0, PC; gaProjectileInfo_ptr
5DA04E:  LDR             R0, [R0]; gaProjectileInfo
5DA050:  STR             R0, [SP,#0x170+var_110]
5DA052:  B               loc_5DA080
5DA054:  STRD.W          R2, R1, [R9,#4]
5DA058:  ADD.W           R1, R9, #0xC
5DA05C:  STR             R0, [R1]
5DA05E:  B.W             def_5DA45C; jumptable 005DA45C default case, cases 22-38,40-57
5DA062:  ALIGN 4
5DA064:  DCFS 0.000015259
5DA068:  DCFS 4.6566e-10
5DA06C:  DCFS 0.04
5DA070:  DCFS 0.08
5DA074:  DCFS 0.1
5DA078:  DCFS 0.05
5DA07C:  DCFS 100.0
5DA080:  ADD.W           R10, R8, R8,LSL#3
5DA084:  ADD.W           R11, R6, R10,LSL#2
5DA088:  LDRB.W          R0, [R11,#0x10]
5DA08C:  CMP             R0, #0
5DA08E:  BEQ.W           loc_5DAC44
5DA092:  LDR             R0, [SP,#0x170+var_DC]
5DA094:  LDR.W           R9, [R0,R8,LSL#2]
5DA098:  LDRB.W          R0, [R9,#0x45]
5DA09C:  LSLS            R0, R0, #0x1F
5DA09E:  BEQ             loc_5DA0B2
5DA0A0:  LDR             R0, [SP,#0x170+var_110]
5DA0A2:  ADD.W           R4, R0, R10,LSL#2
5DA0A6:  LDR.W           R0, [R4,#0x20]!; this
5DA0AA:  CBZ             R0, loc_5DA0B2
5DA0AC:  BLX.W           j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
5DA0B0:  STR             R5, [R4]
5DA0B2:  LDR             R0, [SP,#0x170+var_E4]
5DA0B4:  ADD.W           R1, R0, R10,LSL#2
5DA0B8:  LDR.W           R0, [R1,#4]!; this
5DA0BC:  STR             R1, [SP,#0x170+var_D4]
5DA0BE:  CBZ             R0, loc_5DA0D8
5DA0C0:  LDRB.W          R1, [R0,#0x3A]
5DA0C4:  AND.W           R1, R1, #7
5DA0C8:  CMP             R1, #3
5DA0CA:  BNE             loc_5DA0D8
5DA0CC:  BLX.W           j__ZN4CPed14IsPointerValidEv; CPed::IsPointerValid(void)
5DA0D0:  CMP             R0, #0
5DA0D2:  ITT EQ
5DA0D4:  LDREQ           R0, [SP,#0x170+var_D4]
5DA0D6:  STREQ           R5, [R0]
5DA0D8:  LDR.W           R0, [R11]
5DA0DC:  SUB.W           R1, R0, #0x10
5DA0E0:  CMP             R1, #0x17
5DA0E2:  BHI             loc_5DA148
5DA0E4:  MOVS            R2, #1
5DA0E6:  LSL.W           R1, R2, R1
5DA0EA:  MOVS            R2, #0x800003
5DA0F0:  TST             R1, R2
5DA0F2:  BEQ             loc_5DA148
5DA0F4:  VLDR            S0, [R9,#0xA0]
5DA0F8:  VCMPE.F32       S0, S31
5DA0FC:  VMRS            APSR_nzcv, FPSCR
5DA100:  BLE             loc_5DA148
5DA102:  VLDR            S0, [R9,#0x48]
5DA106:  VABS.F32        S0, S0
5DA10A:  VCMPE.F32       S0, S29
5DA10E:  VMRS            APSR_nzcv, FPSCR
5DA112:  BGE             loc_5DA148
5DA114:  VLDR            S0, [R9,#0x4C]
5DA118:  VABS.F32        S0, S0
5DA11C:  VCMPE.F32       S0, S29
5DA120:  VMRS            APSR_nzcv, FPSCR
5DA124:  BGE             loc_5DA148
5DA126:  VLDR            S0, [R9,#0x50]
5DA12A:  VABS.F32        S0, S0
5DA12E:  VCMPE.F32       S0, S29
5DA132:  VMRS            APSR_nzcv, FPSCR
5DA136:  ITTTT LT
5DA138:  MOVWLT          R0, #0xC28F
5DA13C:  MOVTLT          R0, #0x3CF5
5DA140:  STRLT.W         R0, [R9,#0xA0]
5DA144:  LDRLT.W         R0, [R11]
5DA148:  ADD.W           R5, R9, #4
5DA14C:  CMP             R0, #0x11
5DA14E:  ADD.W           R1, R9, #0x48 ; 'H'
5DA152:  STR             R1, [SP,#0x170+var_D8]
5DA154:  BNE             loc_5DA1B2
5DA156:  LDR             R0, [SP,#0x170+var_104]
5DA158:  MOVW            R2, #0x445C
5DA15C:  LDR             R1, [SP,#0x170+var_108]
5DA15E:  ADD.W           R0, R0, R10,LSL#2
5DA162:  LDR             R0, [R0,#0xC]
5DA164:  LDR             R1, [R1]
5DA166:  SUBS            R0, R0, R2
5DA168:  CMP             R1, R0
5DA16A:  BLS             loc_5DA1B2
5DA16C:  BLX.W           rand
5DA170:  UXTH            R0, R0
5DA172:  VLDR            S2, =100.0
5DA176:  VMOV            S0, R0
5DA17A:  VCVT.F32.S32    S0, S0
5DA17E:  VMUL.F32        S0, S0, S19
5DA182:  VMUL.F32        S0, S0, S2
5DA186:  VCVT.S32.F32    S0, S0
5DA18A:  VMOV            R0, S0
5DA18E:  CMP             R0, #9
5DA190:  BGT             loc_5DA1B2
5DA192:  LDR.W           R0, [R9,#0x14]
5DA196:  MOV             R2, R5
5DA198:  LDR             R1, [SP,#0x170+var_D4]
5DA19A:  CMP             R0, #0
5DA19C:  LDR             R3, [R1]
5DA19E:  IT NE
5DA1A0:  ADDNE.W         R2, R0, #0x30 ; '0'
5DA1A4:  LDM             R2, {R0-R2}; float
5DA1A6:  STR             R3, [SP,#0x170+var_170]; float
5DA1A8:  MOVS            R3, #0x40C00000; float
5DA1AE:  BLX.W           j__ZN6CWorld14SetPedsChokingEffffP7CEntity; CWorld::SetPedsChoking(float,float,float,float,CEntity *)
5DA1B2:  LDR.W           R0, [R11]
5DA1B6:  SUB.W           R1, R0, #0x13
5DA1BA:  CMP             R1, #1
5DA1BC:  BHI.W           loc_5DA3E0
5DA1C0:  MOVW            R1, #0x999A
5DA1C4:  MOV.W           R0, #0x3F000000
5DA1C8:  MOVT            R1, #0x3E99; float
5DA1CC:  STRD.W          R11, R10, [SP,#0x170+var_FC]
5DA1D0:  STR             R1, [SP,#0x170+var_170]; float
5DA1D2:  MOV             R2, R1; float
5DA1D4:  STR             R0, [SP,#0x170+var_16C]; float
5DA1D6:  MOV.W           R0, #0x3F800000
5DA1DA:  STR.W           R8, [SP,#0x170+var_F4]
5DA1DE:  ADD.W           R8, SP, #0x170+var_80
5DA1E2:  STR             R0, [SP,#0x170+var_168]; float
5DA1E4:  MOV             R0, #0x3DA3D70A
5DA1EC:  MOV             R3, R1; float
5DA1EE:  STR             R0, [SP,#0x170+var_164]; float
5DA1F0:  MOV             R0, R8; this
5DA1F2:  STR             R5, [SP,#0x170+var_CC]
5DA1F4:  MOV             R5, R9
5DA1F6:  ADD             R6, SP, #0x170+var_A8
5DA1F8:  ADD.W           R9, SP, #0x170+var_9C
5DA1FC:  BLX.W           j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
5DA200:  LDR             R0, [SP,#0x170+var_10C]
5DA202:  ADD.W           R8, SP, #0x170+var_B8
5DA206:  VLDR            S0, [R5,#0x48]
5DA20A:  VLDR            S2, [R5,#0x4C]
5DA20E:  VLDR            S6, [R0]
5DA212:  MOVS            R0, #1
5DA214:  VLDR            S4, [R5,#0x50]
5DA218:  VMUL.F32        S27, S6, S2
5DA21C:  VMUL.F32        S23, S6, S0
5DA220:  VMUL.F32        S21, S6, S4
5DA224:  VMUL.F32        S0, S27, S27
5DA228:  VMUL.F32        S2, S23, S23
5DA22C:  VMUL.F32        S4, S21, S21
5DA230:  VADD.F32        S0, S2, S0
5DA234:  VADD.F32        S0, S0, S4
5DA238:  VSQRT.F32       S0, S0
5DA23C:  VCVT.S32.F32    S0, S0
5DA240:  VMOV            R10, S0
5DA244:  CMP.W           R10, #1
5DA248:  IT LE
5DA24A:  MOVLE           R10, R0
5DA24C:  LDR.W           R11, [SP,#0x170+var_D8]
5DA250:  CMP.W           R10, #1
5DA254:  BLT.W           loc_5DA3D0
5DA258:  VMOV            S0, R10
5DA25C:  MOVS            R4, #0
5DA25E:  VCVT.F32.S32    S25, S0
5DA262:  BLX.W           rand
5DA266:  VMOV            S0, R0
5DA26A:  VMOV            S2, R4
5DA26E:  VCVT.F32.S32    S0, S0
5DA272:  VCVT.F32.S32    S18, S2
5DA276:  VMUL.F32        S0, S0, S20
5DA27A:  VMUL.F32        S0, S0, S22
5DA27E:  VADD.F32        S0, S0, S22
5DA282:  VSTR            S0, [SP,#0x170+var_78]
5DA286:  VSTR            S0, [SP,#0x170+var_80+4]
5DA28A:  VSTR            S0, [SP,#0x170+var_80]
5DA28E:  BLX.W           rand
5DA292:  VMOV            S0, R0
5DA296:  VDIV.F32        S2, S18, S25
5DA29A:  VCVT.F32.S32    S0, S0
5DA29E:  LDR             R1, [SP,#0x170+var_CC]
5DA2A0:  VSUB.F32        S2, S26, S2
5DA2A4:  VMUL.F32        S0, S0, S20
5DA2A8:  VMUL.F32        S4, S27, S2
5DA2AC:  VMUL.F32        S0, S0, S24
5DA2B0:  VADD.F32        S0, S0, S28
5DA2B4:  VSTR            S0, [SP,#0x170+var_68]
5DA2B8:  VMUL.F32        S0, S21, S2
5DA2BC:  VMUL.F32        S2, S23, S2
5DA2C0:  LDR             R0, [R5,#0x14]
5DA2C2:  CMP             R0, #0
5DA2C4:  IT NE
5DA2C6:  ADDNE.W         R1, R0, #0x30 ; '0'
5DA2CA:  VLDR            S6, [R1]
5DA2CE:  VLDR            S8, [R1,#4]
5DA2D2:  VLDR            S10, [R1,#8]
5DA2D6:  VSUB.F32        S4, S8, S4
5DA2DA:  VSUB.F32        S2, S6, S2
5DA2DE:  VSUB.F32        S0, S10, S0
5DA2E2:  VSTR            S4, [SP,#0x170+var_90+4]
5DA2E6:  VSTR            S2, [SP,#0x170+var_90]
5DA2EA:  VSTR            S0, [SP,#0x170+var_88]
5DA2EE:  BLX.W           rand
5DA2F2:  VMOV            S0, R0
5DA2F6:  VCVT.F32.S32    S0, S0
5DA2FA:  VMUL.F32        S0, S0, S20
5DA2FE:  VADD.F32        S0, S0, S0
5DA302:  VADD.F32        S0, S0, S30
5DA306:  VSTR            S0, [SP,#0x170+var_9C]
5DA30A:  BLX.W           rand
5DA30E:  VMOV            S0, R0
5DA312:  VCVT.F32.S32    S0, S0
5DA316:  VMUL.F32        S0, S0, S20
5DA31A:  VADD.F32        S0, S0, S0
5DA31E:  VADD.F32        S0, S0, S30
5DA322:  VSTR            S0, [SP,#0x170+var_98]
5DA326:  BLX.W           rand
5DA32A:  VMOV            S0, R0
5DA32E:  MOV             R0, R9; this
5DA330:  VCVT.F32.S32    S0, S0
5DA334:  VMUL.F32        S0, S0, S20
5DA338:  VADD.F32        S0, S0, S0
5DA33C:  VADD.F32        S0, S0, S30
5DA340:  VSTR            S0, [SP,#0x170+var_94]
5DA344:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5DA348:  VLDR            D16, [R11]
5DA34C:  LDR.W           R0, [R11,#8]
5DA350:  STR             R0, [SP,#0x170+var_A0]
5DA352:  MOV             R0, R6; this
5DA354:  VSTR            D16, [SP,#0x170+var_A8]
5DA358:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5DA35C:  ADD             R0, SP, #0x170+var_C8; CVector *
5DA35E:  MOV             R1, R6; CVector *
5DA360:  MOV             R2, R9
5DA362:  BLX.W           j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5DA366:  VLDR            D16, [SP,#0x170+var_C8]
5DA36A:  ADD             R1, SP, #0x170+var_80
5DA36C:  LDR             R0, [SP,#0x170+var_C0]
5DA36E:  MOV             R2, R8; int
5DA370:  STR             R0, [SP,#0x170+var_B0]
5DA372:  MOVS            R3, #0; int
5DA374:  VSTR            D16, [SP,#0x170+var_B8]
5DA378:  VLDR            S0, [SP,#0x170+var_B8]
5DA37C:  VLDR            S2, [SP,#0x170+var_B8+4]
5DA380:  VLDR            S4, [SP,#0x170+var_B0]
5DA384:  VMUL.F32        S0, S0, S16
5DA388:  STR             R1, [SP,#0x170+var_170]; int
5DA38A:  MOVS            R1, #0xBF800000
5DA390:  VMUL.F32        S2, S2, S16
5DA394:  STR             R1, [SP,#0x170+var_16C]; bool
5DA396:  MOVW            R1, #0x999A
5DA39A:  VMUL.F32        S4, S4, S16
5DA39E:  LDR             R0, [SP,#0x170+var_D0]
5DA3A0:  MOVT            R1, #0x3F99
5DA3A4:  STR             R1, [SP,#0x170+var_168]; CEntity *
5DA3A6:  MOV             R1, #0x3F19999A
5DA3AE:  LDR             R0, [R0,#0x20]; int
5DA3B0:  STR             R1, [SP,#0x170+var_164]; CColLine *
5DA3B2:  MOVS            R1, #0
5DA3B4:  STR             R1, [SP,#0x170+var_160]; int
5DA3B6:  ADD             R1, SP, #0x170+var_90; int
5DA3B8:  VSTR            S0, [SP,#0x170+var_B8]
5DA3BC:  VSTR            S2, [SP,#0x170+var_B8+4]
5DA3C0:  VSTR            S4, [SP,#0x170+var_B0]
5DA3C4:  BLX.W           j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
5DA3C8:  ADDS            R4, #1
5DA3CA:  CMP             R4, R10
5DA3CC:  BLT.W           loc_5DA262
5DA3D0:  LDR.W           R11, [SP,#0x170+var_FC]
5DA3D4:  MOV             R9, R5
5DA3D6:  LDR.W           R0, [R11]
5DA3DA:  LDRD.W          R10, R8, [SP,#0x170+var_F8]
5DA3DE:  LDR             R5, [SP,#0x170+var_CC]
5DA3E0:  LDR             R1, [SP,#0x170+var_E8]
5DA3E2:  LDR             R2, [R1]
5DA3E4:  LDR             R1, [SP,#0x170+var_EC]
5DA3E6:  ADD.W           R4, R1, R10,LSL#2
5DA3EA:  LDR.W           R1, [R4,#0xC]!
5DA3EE:  CMP             R2, R1
5DA3F0:  BLS             loc_5DA454
5DA3F2:  CBZ             R1, loc_5DA454
5DA3F4:  CMP             R0, #0x27 ; '''
5DA3F6:  BNE.W           loc_5DAC1A
5DA3FA:  LDR             R0, [SP,#0x170+var_D4]
5DA3FC:  LDR             R0, [R0]; this
5DA3FE:  LDRB.W          R1, [R0,#0x3A]
5DA402:  AND.W           R1, R1, #7
5DA406:  CMP             R1, #3
5DA408:  BNE.W           def_5DA45C; jumptable 005DA45C default case, cases 22-38,40-57
5DA40C:  BLX.W           j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5DA410:  CMP             R0, #1
5DA412:  BNE.W           def_5DA45C; jumptable 005DA45C default case, cases 22-38,40-57
5DA416:  LDR             R0, [SP,#0x170+var_D4]
5DA418:  MOVS            R1, #0x28 ; '('
5DA41A:  LDR             R6, [R0]
5DA41C:  MOV             R0, R6
5DA41E:  BLX.W           j__ZN4CPed13GetWeaponSlotE11eWeaponType; CPed::GetWeaponSlot(eWeaponType)
5DA422:  RSB.W           R0, R0, R0,LSL#3
5DA426:  ADD.W           R0, R6, R0,LSL#2
5DA42A:  LDR.W           R0, [R0,#0x5A4]
5DA42E:  CMP             R0, #0x28 ; '('
5DA430:  BNE             loc_5DA44C
5DA432:  MOV             R0, R6
5DA434:  MOVS            R1, #0x28 ; '('
5DA436:  BLX.W           j__ZN4CPed13GetWeaponSlotE11eWeaponType; CPed::GetWeaponSlot(eWeaponType)
5DA43A:  RSB.W           R0, R0, R0,LSL#3
5DA43E:  ADD.W           R0, R6, R0,LSL#2
5DA442:  LDR.W           R0, [R0,#0x5B0]
5DA446:  CMP             R0, #0
5DA448:  BNE.W           def_5DA45C; jumptable 005DA45C default case, cases 22-38,40-57
5DA44C:  MOVS            R0, #0
5DA44E:  STR             R0, [R4]
5DA450:  B.W             def_5DA45C; jumptable 005DA45C default case, cases 22-38,40-57
5DA454:  SUBS            R0, #0x12; switch 41 cases
5DA456:  CMP             R0, #0x28 ; '('
5DA458:  BHI.W           def_5DA45C; jumptable 005DA45C default case, cases 22-38,40-57
5DA45C:  TBH.W           [PC,R0,LSL#1]; switch jump
5DA460:  DCW 0x29; jump table for switch statement
5DA462:  DCW 0x89
5DA464:  DCW 0xF1
5DA466:  DCW 0x29
5DA468:  DCW 0x3E1
5DA46A:  DCW 0x3E1
5DA46C:  DCW 0x3E1
5DA46E:  DCW 0x3E1
5DA470:  DCW 0x3E1
5DA472:  DCW 0x3E1
5DA474:  DCW 0x3E1
5DA476:  DCW 0x3E1
5DA478:  DCW 0x3E1
5DA47A:  DCW 0x3E1
5DA47C:  DCW 0x3E1
5DA47E:  DCW 0x3E1
5DA480:  DCW 0x3E1
5DA482:  DCW 0x3E1
5DA484:  DCW 0x3E1
5DA486:  DCW 0x3E1
5DA488:  DCW 0x3E1
5DA48A:  DCW 0x1D7
5DA48C:  DCW 0x3E1
5DA48E:  DCW 0x3E1
5DA490:  DCW 0x3E1
5DA492:  DCW 0x3E1
5DA494:  DCW 0x3E1
5DA496:  DCW 0x3E1
5DA498:  DCW 0x3E1
5DA49A:  DCW 0x3E1
5DA49C:  DCW 0x3E1
5DA49E:  DCW 0x3E1
5DA4A0:  DCW 0x3E1
5DA4A2:  DCW 0x3E1
5DA4A4:  DCW 0x3E1
5DA4A6:  DCW 0x3E1
5DA4A8:  DCW 0x3E1
5DA4AA:  DCW 0x3E1
5DA4AC:  DCW 0x3E1
5DA4AE:  DCW 0x3E1
5DA4B0:  DCW 0x1F5
5DA4B2:  LDR.W           R0, [R9,#0x14]; jumptable 005DA45C cases 18,21
5DA4B6:  MOV             R1, R5
5DA4B8:  MOV             R4, R9
5DA4BA:  MOV             R6, R11
5DA4BC:  CMP             R0, #0
5DA4BE:  MOV             R11, R5
5DA4C0:  IT NE
5DA4C2:  ADDNE.W         R1, R0, #0x30 ; '0'
5DA4C6:  LDR             R2, [SP,#0x170+var_D4]
5DA4C8:  VLDR            D16, [R1]
5DA4CC:  MOVS            R5, #0
5DA4CE:  LDR             R0, [R1,#8]
5DA4D0:  LDR             R1, [SP,#0x170+var_11C]
5DA4D2:  STR             R0, [SP,#0x170+var_78]
5DA4D4:  LDR             R0, [R2]
5DA4D6:  VSTR            D16, [SP,#0x170+var_80]
5DA4DA:  STR             R0, [R1]
5DA4DC:  LDR.W           R0, [R4,#0x1C]!
5DA4E0:  BIC.W           R0, R0, #1
5DA4E4:  STR             R0, [R4]
5DA4E6:  LDR             R0, [R2]
5DA4E8:  CBZ             R0, loc_5DA532
5DA4EA:  LDR             R1, [R0,#0x14]
5DA4EC:  ADD.W           R2, R1, #0x30 ; '0'
5DA4F0:  CMP             R1, #0
5DA4F2:  IT EQ
5DA4F4:  ADDEQ           R2, R0, #4
5DA4F6:  LDR             R0, [SP,#0x170+var_124]
5DA4F8:  VLDR            S0, [R2]
5DA4FC:  ADD.W           R0, R0, R10,LSL#2
5DA500:  VLDR            D16, [R2,#4]
5DA504:  VLDR            S2, [R0,#0x14]
5DA508:  VLDR            D17, [R0,#0x18]
5DA50C:  VSUB.F32        S0, S2, S0
5DA510:  VSUB.F32        D16, D17, D16
5DA514:  VMUL.F32        D1, D16, D16
5DA518:  VMUL.F32        S0, S0, S0
5DA51C:  VADD.F32        S0, S0, S2
5DA520:  VADD.F32        S0, S0, S3
5DA524:  VMOV.F32        S2, #2.0
5DA528:  VCMPE.F32       S0, S2
5DA52C:  VMRS            APSR_nzcv, FPSCR
5DA530:  BLT             loc_5DA562
5DA532:  LDRB.W          R0, [R9,#0x45]
5DA536:  LSLS            R0, R0, #0x1E
5DA538:  BMI             loc_5DA55A
5DA53A:  MOVS            R0, #1
5DA53C:  ADD             R1, SP, #0x170+var_80; CVector *
5DA53E:  STRD.W          R0, R0, [SP,#0x170+var_170]; bool
5DA542:  MOVS            R2, #(stderr+1); CVector *
5DA544:  STRD.W          R5, R5, [SP,#0x170+var_168]; bool
5DA548:  MOVS            R3, #1; bool
5DA54A:  LDR             R0, [SP,#0x170+var_138]
5DA54C:  STR             R5, [SP,#0x170+var_160]; bool
5DA54E:  ADD.W           R0, R0, R10,LSL#2
5DA552:  ADDS            R0, #0x14; this
5DA554:  BLX.W           j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
5DA558:  CBNZ            R0, loc_5DA562
5DA55A:  MOV             R0, R6; this
5DA55C:  MOV             R1, R9; CProjectileInfo *
5DA55E:  BLX.W           j__ZN15CProjectileInfo16RemoveProjectileEPS_P11CProjectile; CProjectileInfo::RemoveProjectile(CProjectileInfo*,CProjectile *)
5DA562:  LDR             R0, [SP,#0x170+var_120]
5DA564:  STR             R5, [R0]
5DA566:  MOV             R5, R11
5DA568:  LDR             R0, [R4]
5DA56A:  ORR.W           R0, R0, #1
5DA56E:  STR             R0, [R4]
5DA570:  B               def_5DA45C; jumptable 005DA45C default case, cases 22-38,40-57
5DA572:  LDR             R0, [SP,#0x170+var_128]; jumptable 005DA45C case 19
5DA574:  VLDR            S2, =0.008
5DA578:  VLDR            S8, [R9,#0x48]
5DA57C:  VLDR            S0, [R0]
5DA580:  LDR.W           R0, [R9,#0x14]
5DA584:  VMUL.F32        S0, S0, S2
5DA588:  VLDR            S10, [R9,#0x4C]
5DA58C:  VLDR            S12, [R9,#0x50]
5DA590:  VLDR            S2, [R0,#0x10]
5DA594:  VLDR            S4, [R0,#0x14]
5DA598:  VLDR            S6, [R0,#0x18]
5DA59C:  VMUL.F32        S4, S0, S4
5DA5A0:  VMUL.F32        S2, S0, S2
5DA5A4:  VMUL.F32        S6, S0, S6
5DA5A8:  VADD.F32        S4, S4, S10
5DA5AC:  VADD.F32        S0, S2, S8
5DA5B0:  VADD.F32        S2, S6, S12
5DA5B4:  VMUL.F32        S8, S4, S4
5DA5B8:  VMUL.F32        S6, S0, S0
5DA5BC:  VSTR            S0, [R9,#0x48]
5DA5C0:  VMUL.F32        S10, S2, S2
5DA5C4:  VSTR            S4, [R9,#0x4C]
5DA5C8:  VSTR            S2, [R9,#0x50]
5DA5CC:  VADD.F32        S6, S8, S6
5DA5D0:  VLDR            S8, =9.9
5DA5D4:  VADD.F32        S6, S10, S6
5DA5D8:  VSQRT.F32       S6, S6
5DA5DC:  VCMPE.F32       S6, S8
5DA5E0:  VMRS            APSR_nzcv, FPSCR
5DA5E4:  BLE             loc_5DA606
5DA5E6:  VLDR            S8, =9.9
5DA5EA:  VDIV.F32        S6, S8, S6
5DA5EE:  VMUL.F32        S0, S0, S6
5DA5F2:  VMUL.F32        S4, S6, S4
5DA5F6:  VMUL.F32        S2, S6, S2
5DA5FA:  VSTR            S0, [R9,#0x48]
5DA5FE:  VSTR            S4, [R9,#0x4C]
5DA602:  VSTR            S2, [R9,#0x50]
5DA606:  LDRB.W          R1, [R9,#0x45]
5DA60A:  LSLS            R1, R1, #0x1E
5DA60C:  BMI.W           loc_5DABF8
5DA610:  LDR             R1, [SP,#0x170+var_D4]
5DA612:  MOVS            R4, #0
5DA614:  LDR             R6, [SP,#0x170+var_13C]
5DA616:  CMP             R0, #0
5DA618:  LDR             R1, [R1]
5DA61A:  STR             R1, [R6]
5DA61C:  LDR.W           R1, [R9,#0x1C]
5DA620:  BIC.W           R1, R1, #1
5DA624:  STR.W           R1, [R9,#0x1C]
5DA628:  MOV.W           R1, #1
5DA62C:  STRD.W          R1, R1, [SP,#0x170+var_170]
5DA630:  MOV             R1, R5
5DA632:  STRD.W          R4, R4, [SP,#0x170+var_168]
5DA636:  STR             R4, [SP,#0x170+var_160]
5DA638:  IT NE
5DA63A:  ADDNE.W         R1, R0, #0x30 ; '0'
5DA63E:  LDR             R0, [SP,#0x170+var_140]
5DA640:  B               loc_5DABD0
5DA642:  LDR             R0, [SP,#0x170+var_12C]; jumptable 005DA45C case 20
5DA644:  ADD.W           R0, R0, R10,LSL#2
5DA648:  LDR.W           R4, [R0,#8]!
5DA64C:  STR             R0, [SP,#0x170+var_F4]
5DA64E:  CMP             R4, #0
5DA650:  BEQ.W           loc_5DAB96
5DA654:  MOV.W           R0, #0xFFFFFFFF; int
5DA658:  MOVS            R1, #0; bool
5DA65A:  VMOV.F32        S23, S19
5DA65E:  BLX.W           j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5DA662:  CMP             R4, R0
5DA664:  BNE             loc_5DA674
5DA666:  LDR             R0, [SP,#0x170+var_158]; this
5DA668:  MOVS            R1, #0x65 ; 'e'; int
5DA66A:  MOVS            R2, #0; float
5DA66C:  MOV.W           R3, #0x3F800000; float
5DA670:  BLX.W           j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
5DA674:  LDR.W           R0, [R9,#0x14]
5DA678:  MOVS            R4, #0
5DA67A:  MOVW            R3, #0x999A
5DA67E:  ADD             R2, SP, #0x170+var_80; CVector *
5DA680:  CMP             R0, #0
5DA682:  MOVT            R3, #0x3F99; CVector *
5DA686:  VLDR            D16, [R0,#0x10]
5DA68A:  LDR             R1, [R0,#0x18]
5DA68C:  STR             R1, [SP,#0x170+var_78]
5DA68E:  MOV             R1, R5
5DA690:  VSTR            D16, [SP,#0x170+var_80]
5DA694:  STR             R5, [SP,#0x170+var_CC]
5DA696:  IT NE
5DA698:  ADDNE.W         R1, R0, #0x30 ; '0'
5DA69C:  LDR             R0, [R1,#8]
5DA69E:  VLDR            D16, [R1]
5DA6A2:  MOVS            R1, #1
5DA6A4:  STR             R0, [SP,#0x170+var_88]
5DA6A6:  VLDR            S0, [SP,#0x170+var_88]
5DA6AA:  VSTR            D16, [SP,#0x170+var_90]
5DA6AE:  VLDR            S2, [SP,#0x170+var_78]
5DA6B2:  VLDR            S4, [SP,#0x170+var_90]
5DA6B6:  VLDR            S8, [SP,#0x170+var_80]
5DA6BA:  VADD.F32        S0, S2, S0
5DA6BE:  VLDR            S6, [SP,#0x170+var_90+4]
5DA6C2:  VLDR            S10, [SP,#0x170+var_80+4]
5DA6C6:  VADD.F32        S4, S8, S4
5DA6CA:  LDR             R0, [SP,#0x170+var_F4]
5DA6CC:  VADD.F32        S2, S10, S6
5DA6D0:  LDR             R0, [R0]; this
5DA6D2:  VSTR            S0, [SP,#0x170+var_88]
5DA6D6:  VSTR            S2, [SP,#0x170+var_90+4]
5DA6DA:  VSTR            S4, [SP,#0x170+var_90]
5DA6DE:  STRD.W          R1, R4, [SP,#0x170+var_170]; float
5DA6E2:  ADD             R1, SP, #0x170+var_90; CEntity *
5DA6E4:  BLX.W           j__ZN7CWeapon35EvaluateTargetForHeatSeekingMissileEP7CEntityR7CVectorS3_fbS1_; CWeapon::EvaluateTargetForHeatSeekingMissile(CEntity *,CVector &,CVector &,float,bool,CEntity *)
5DA6E8:  VLDR            S0, =0.0
5DA6EC:  VMOV            S21, R0
5DA6F0:  LDR             R2, [SP,#0x170+var_114]
5DA6F2:  MOVS            R5, #0
5DA6F4:  VMOV            D9, D0
5DA6F8:  ADD.W           R0, R4, R4,LSL#3
5DA6FC:  LDR             R1, [R2,R0]
5DA6FE:  CMP             R1, #0x3A ; ':'
5DA700:  BNE             loc_5DA742
5DA702:  LDR             R1, [SP,#0x170+var_100]
5DA704:  ADD             R0, R1
5DA706:  LDRB            R0, [R0,#0x10]
5DA708:  CBZ             R0, loc_5DA742
5DA70A:  LDR             R0, [SP,#0x170+var_118]
5DA70C:  MOVW            R3, #0x999A
5DA710:  ADD             R1, SP, #0x170+var_90; CEntity *
5DA712:  ADD             R2, SP, #0x170+var_80; CVector *
5DA714:  MOVT            R3, #0x3F99; CVector *
5DA718:  LDR             R6, [R0,R4]
5DA71A:  MOVS            R0, #1
5DA71C:  STR             R0, [SP,#0x170+var_170]; float
5DA71E:  MOVS            R0, #0
5DA720:  STR             R0, [SP,#0x170+var_16C]; bool
5DA722:  MOV             R0, R6; this
5DA724:  BLX.W           j__ZN7CWeapon35EvaluateTargetForHeatSeekingMissileEP7CEntityR7CVectorS3_fbS1_; CWeapon::EvaluateTargetForHeatSeekingMissile(CEntity *,CVector &,CVector &,float,bool,CEntity *)
5DA728:  VMOV            S0, R0
5DA72C:  VMAX.F32        D1, D0, D9
5DA730:  VCMPE.F32       S0, S18
5DA734:  VMRS            APSR_nzcv, FPSCR
5DA738:  VMOV            D9, D1
5DA73C:  IT GE
5DA73E:  MOVGE           R5, R6
5DA740:  LDR             R2, [SP,#0x170+var_114]
5DA742:  ADDS            R4, #4
5DA744:  CMP             R4, #0x80
5DA746:  BNE             loc_5DA6F8
5DA748:  CBZ             R5, loc_5DA754
5DA74A:  VCMPE.F32       S18, S21
5DA74E:  VMRS            APSR_nzcv, FPSCR
5DA752:  BGT             loc_5DA758
5DA754:  LDR             R0, [SP,#0x170+var_F4]
5DA756:  LDR             R5, [R0]
5DA758:  LDRB.W          R0, [R5,#0x3A]
5DA75C:  LDR             R3, [SP,#0x170+var_D8]
5DA75E:  AND.W           R0, R0, #7
5DA762:  STR             R5, [SP,#0x170+var_F4]
5DA764:  CMP             R0, #2
5DA766:  BNE.W           loc_5DA8F4
5DA76A:  MOV.W           R0, #0xFFFFFFFF; int
5DA76E:  MOVS            R1, #0; bool
5DA770:  BLX.W           j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5DA774:  LDR             R3, [SP,#0x170+var_F4]
5DA776:  CMP             R0, R3
5DA778:  BNE             loc_5DA7D4
5DA77A:  LDR             R0, [R3,#0x14]
5DA77C:  LDR.W           R1, [R9,#0x14]
5DA780:  ADD.W           R2, R0, #0x30 ; '0'
5DA784:  CMP             R0, #0
5DA786:  IT EQ
5DA788:  ADDEQ           R2, R3, #4
5DA78A:  LDR             R0, [SP,#0x170+var_CC]
5DA78C:  CMP             R1, #0
5DA78E:  VLDR            S0, [R2]
5DA792:  IT NE
5DA794:  ADDNE.W         R0, R1, #0x30 ; '0'
5DA798:  VLDR            D16, [R2,#4]
5DA79C:  VLDR            S2, [R0]
5DA7A0:  VLDR            D17, [R0,#4]
5DA7A4:  VSUB.F32        S0, S2, S0
5DA7A8:  VSUB.F32        D16, D17, D16
5DA7AC:  VMUL.F32        D1, D16, D16
5DA7B0:  VMUL.F32        S0, S0, S0
5DA7B4:  VADD.F32        S0, S0, S2
5DA7B8:  VADD.F32        S0, S0, S3
5DA7BC:  VLDR            S2, =42.0
5DA7C0:  VSQRT.F32       S0, S0
5DA7C4:  VCMPE.F32       S0, S2
5DA7C8:  VMRS            APSR_nzcv, FPSCR
5DA7CC:  ITT LT
5DA7CE:  MOVLT           R0, #1
5DA7D0:  STRBLT.W        R0, [R3,#0x4D8]
5DA7D4:  LDR             R0, [SP,#0x170+var_D4]
5DA7D6:  LDR             R4, [R0]
5DA7D8:  MOV.W           R0, #0xFFFFFFFF; int
5DA7DC:  BLX.W           j__Z13FindPlayerPedi; FindPlayerPed(int)
5DA7E0:  LDR             R5, [SP,#0x170+var_F4]
5DA7E2:  CMP             R4, R0
5DA7E4:  LDR             R3, [SP,#0x170+var_D8]
5DA7E6:  BEQ             loc_5DA800
5DA7E8:  LDR             R0, [SP,#0x170+var_D4]
5DA7EA:  MOVS            R1, #0; bool
5DA7EC:  MOVS            R6, #0
5DA7EE:  LDR             R4, [R0]
5DA7F0:  MOV.W           R0, #0xFFFFFFFF; int
5DA7F4:  BLX.W           j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5DA7F8:  LDR             R5, [SP,#0x170+var_F4]
5DA7FA:  CMP             R4, R0
5DA7FC:  LDR             R3, [SP,#0x170+var_D8]
5DA7FE:  BNE             loc_5DA8F6
5DA800:  LDR.W           R0, [R5,#0x5A4]
5DA804:  MOVS            R6, #0
5DA806:  CMP             R0, #4
5DA808:  IT EQ
5DA80A:  MOVEQ           R6, #1
5DA80C:  B               loc_5DA8F6
5DA80E:  VLDR            S0, [R9,#0xDC]; jumptable 005DA45C case 39
5DA812:  VCMPE.F32       S0, #0.0
5DA816:  VMRS            APSR_nzcv, FPSCR
5DA81A:  BLE.W           def_5DA45C; jumptable 005DA45C default case, cases 22-38,40-57
5DA81E:  LDR.W           R1, [R9,#0xE0]; this
5DA822:  CMP             R1, #0
5DA824:  BEQ.W           def_5DA45C; jumptable 005DA45C default case, cases 22-38,40-57
5DA828:  LDR.W           R0, [R9,#0x100]
5DA82C:  CMP             R0, #0
5DA82E:  BNE.W           def_5DA45C; jumptable 005DA45C default case, cases 22-38,40-57
5DA832:  MOV             R0, R9; int
5DA834:  MOVS            R2, #0
5DA836:  MOVS            R3, #0
5DA838:  BLX.W           j__ZN9CPhysical20AttachEntityToEntityEP7CEntityP7CVectorP6RtQuat; CPhysical::AttachEntityToEntity(CEntity *,CVector *,RtQuat *)
5DA83C:  LDR.W           R0, [R9,#0x1C]
5DA840:  BIC.W           R0, R0, #1
5DA844:  STR.W           R0, [R9,#0x1C]
5DA848:  B               def_5DA45C; jumptable 005DA45C default case, cases 22-38,40-57
5DA84A:  LDR.W           R0, [R9,#0x1C]; jumptable 005DA45C case 58
5DA84E:  MOV             R6, R5
5DA850:  MOV             R5, R9
5DA852:  MOVS            R1, #1
5DA854:  BIC.W           R0, R0, #1
5DA858:  STR.W           R0, [R9,#0x1C]
5DA85C:  LDR             R0, [SP,#0x170+var_D4]
5DA85E:  MOV             R9, R10
5DA860:  LDR.W           R10, [SP,#0x170+var_130]
5DA864:  MOVS            R4, #0
5DA866:  MOVS            R2, #(stderr+1); CVector *
5DA868:  MOVS            R3, #1; bool
5DA86A:  LDR             R0, [R0]
5DA86C:  STR.W           R0, [R10]
5DA870:  LDR             R0, [R5,#0x14]
5DA872:  STRD.W          R1, R1, [SP,#0x170+var_170]; bool
5DA876:  MOV             R1, R6
5DA878:  CMP             R0, #0
5DA87A:  STRD.W          R4, R4, [SP,#0x170+var_168]; bool
5DA87E:  STR             R4, [SP,#0x170+var_160]; bool
5DA880:  IT NE
5DA882:  ADDNE.W         R1, R0, #0x30 ; '0'; CVector *
5DA886:  LDR             R0, [SP,#0x170+var_134]
5DA888:  ADD.W           R0, R0, R9,LSL#2
5DA88C:  ADD.W           R11, R0, #0x14
5DA890:  MOV             R0, R11; this
5DA892:  BLX.W           j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
5DA896:  LDR             R1, [R5,#0x1C]
5DA898:  CMP             R0, #0
5DA89A:  ORR.W           R1, R1, #1
5DA89E:  STR             R1, [R5,#0x1C]
5DA8A0:  STR.W           R4, [R10]
5DA8A4:  MOV             R10, R9
5DA8A6:  MOV             R9, R5
5DA8A8:  MOV             R5, R6
5DA8AA:  BNE.W           def_5DA45C; jumptable 005DA45C default case, cases 22-38,40-57
5DA8AE:  MOVS            R0, #0
5DA8B0:  STRD.W          R0, R0, [R9,#0x48]
5DA8B4:  STR.W           R0, [R9,#0x50]
5DA8B8:  LDR             R0, [SP,#0x170+var_14C]
5DA8BA:  LDR.W           R3, [R9,#0x14]
5DA8BE:  ADD.W           R0, R0, R10,LSL#2
5DA8C2:  LDR.W           R2, [R11]
5DA8C6:  LDRD.W          R1, R0, [R0,#0x18]
5DA8CA:  CMP             R3, #0
5DA8CC:  BEQ.W           loc_5DA054
5DA8D0:  STR             R2, [R3,#0x30]
5DA8D2:  LDR.W           R2, [R9,#0x14]
5DA8D6:  STR             R1, [R2,#0x34]
5DA8D8:  LDR.W           R1, [R9,#0x14]
5DA8DC:  ADDS            R1, #0x38 ; '8'
5DA8DE:  STR             R0, [R1]
5DA8E0:  B               def_5DA45C; jumptable 005DA45C default case, cases 22-38,40-57
5DA8E2:  ALIGN 4
5DA8E4:  DCFS 0.008
5DA8E8:  DCFS 9.9
5DA8EC:  DCFS 0.0
5DA8F0:  DCFS 42.0
5DA8F4:  MOVS            R6, #0
5DA8F6:  LDR             R0, [R5,#0x14]
5DA8F8:  LDR.W           R1, [R9,#0x14]
5DA8FC:  ADD.W           R2, R0, #0x30 ; '0'
5DA900:  CMP             R0, #0
5DA902:  IT EQ
5DA904:  ADDEQ           R2, R5, #4
5DA906:  LDR             R0, [SP,#0x170+var_CC]
5DA908:  CMP             R1, #0
5DA90A:  VLDR            S11, [R2]
5DA90E:  VLDR            S2, [R2,#4]
5DA912:  VLDR            S4, [R2,#8]
5DA916:  IT NE
5DA918:  ADDNE.W         R0, R1, #0x30 ; '0'
5DA91C:  VLDR            S6, [R0]
5DA920:  CMP             R6, #0
5DA922:  VLDR            S8, [R0,#4]
5DA926:  VSUB.F32        S14, S6, S11
5DA92A:  VLDR            S10, [R0,#8]
5DA92E:  VSUB.F32        S12, S8, S2
5DA932:  VLDR            S5, =100.0
5DA936:  VSUB.F32        S1, S10, S4
5DA93A:  VLDR            S3, [R9,#0x50]
5DA93E:  VMUL.F32        S3, S3, S5
5DA942:  VMUL.F32        S14, S14, S14
5DA946:  VMUL.F32        S12, S12, S12
5DA94A:  VMUL.F32        S1, S1, S1
5DA94E:  VADD.F32        S3, S3, S10
5DA952:  VADD.F32        S12, S14, S12
5DA956:  VLDR            S14, [R9,#0x48]
5DA95A:  VMUL.F32        S14, S14, S5
5DA95E:  VADD.F32        S12, S12, S1
5DA962:  VLDR            S1, [R9,#0x4C]
5DA966:  VMUL.F32        S15, S1, S5
5DA96A:  VLDR            S0, =50.0
5DA96E:  VADD.F32        S14, S14, S6
5DA972:  VSQRT.F32       S12, S12
5DA976:  VMIN.F32        D9, D6, D8
5DA97A:  VMIN.F32        D6, D6, D0
5DA97E:  IT NE
5DA980:  VMOVNE.F32      S12, S18
5DA984:  VLDR            S5, [R5,#0x48]
5DA988:  VLDR            S7, [R5,#0x4C]
5DA98C:  VADD.F32        S1, S15, S8
5DA990:  VLDR            S9, [R5,#0x50]
5DA994:  VMUL.F32        S5, S5, S12
5DA998:  VMUL.F32        S7, S7, S12
5DA99C:  CMP             R6, #0
5DA99E:  VMUL.F32        S12, S9, S12
5DA9A2:  IT NE
5DA9A4:  VMOVNE.F32      S1, S8
5DA9A8:  IT NE
5DA9AA:  VMOVNE.F32      S14, S6
5DA9AE:  IT NE
5DA9B0:  VMOVNE.F32      S3, S10
5DA9B4:  VADD.F32        S0, S11, S5
5DA9B8:  VADD.F32        S2, S2, S7
5DA9BC:  VADD.F32        S4, S4, S12
5DA9C0:  VSUB.F32        S0, S0, S14
5DA9C4:  VSUB.F32        S2, S2, S1
5DA9C8:  VSUB.F32        S4, S4, S3
5DA9CC:  VSTR            S2, [SP,#0x170+var_98]
5DA9D0:  VSTR            S0, [SP,#0x170+var_9C]
5DA9D4:  VSTR            S4, [SP,#0x170+var_94]
5DA9D8:  LDR             R0, [R3,#8]
5DA9DA:  VLDR            D16, [R3]
5DA9DE:  STR             R0, [SP,#0x170+var_A0]
5DA9E0:  ADD             R0, SP, #0x170+var_A8; this
5DA9E2:  VSTR            D16, [SP,#0x170+var_A8]
5DA9E6:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5DA9EA:  VLDR            S0, [SP,#0x170+var_9C]
5DA9EE:  VLDR            S6, [SP,#0x170+var_A8]
5DA9F2:  VLDR            S4, [SP,#0x170+var_98]
5DA9F6:  VLDR            S10, [SP,#0x170+var_A8+4]
5DA9FA:  VMUL.F32        S14, S6, S0
5DA9FE:  VLDR            S2, [SP,#0x170+var_94]
5DAA02:  VMUL.F32        S12, S10, S4
5DAA06:  VLDR            S8, [SP,#0x170+var_A0]
5DAA0A:  VMUL.F32        S1, S8, S2
5DAA0E:  VADD.F32        S12, S14, S12
5DAA12:  VADD.F32        S12, S12, S1
5DAA16:  VCMPE.F32       S12, #0.0
5DAA1A:  VMRS            APSR_nzcv, FPSCR
5DAA1E:  BGE             loc_5DAA44
5DAA20:  VMUL.F32        S10, S10, S12
5DAA24:  VMUL.F32        S6, S6, S12
5DAA28:  VMUL.F32        S8, S8, S12
5DAA2C:  VSUB.F32        S4, S4, S10
5DAA30:  VSUB.F32        S0, S0, S6
5DAA34:  VSUB.F32        S2, S2, S8
5DAA38:  VSTR            S4, [SP,#0x170+var_98]
5DAA3C:  VSTR            S0, [SP,#0x170+var_9C]
5DAA40:  VSTR            S2, [SP,#0x170+var_94]
5DAA44:  ADD             R0, SP, #0x170+var_9C; this
5DAA46:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5DAA4A:  LDR             R0, [SP,#0x170+var_D4]
5DAA4C:  LDR             R4, [R0]
5DAA4E:  MOV.W           R0, #0xFFFFFFFF; int
5DAA52:  BLX.W           j__Z13FindPlayerPedi; FindPlayerPed(int)
5DAA56:  VMOV.F32        S19, S23
5DAA5A:  CMP             R4, R0
5DAA5C:  BEQ             loc_5DAA7A
5DAA5E:  LDR             R0, [SP,#0x170+var_D4]
5DAA60:  MOVS            R1, #0; bool
5DAA62:  LDR             R4, [R0]
5DAA64:  MOV.W           R0, #0xFFFFFFFF; int
5DAA68:  BLX.W           j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
5DAA6C:  VLDR            S0, =0.009
5DAA70:  CMP             R4, R0
5DAA72:  IT EQ
5DAA74:  VLDREQ          S0, =0.0117
5DAA78:  B               loc_5DAA7E
5DAA7A:  VLDR            S0, =0.0117
5DAA7E:  LDR             R5, [SP,#0x170+var_CC]
5DAA80:  CBZ             R6, loc_5DAAA2
5DAA82:  LDR             R0, [SP,#0x170+var_150]
5DAA84:  VLDR            S18, [R0]
5DAA88:  MOV             R0, #0x3F733333; x
5DAA90:  VMOV            R1, S18; y
5DAA94:  BLX.W           powf
5DAA98:  VMOV            S2, R0
5DAA9C:  VLDR            S0, =0.15
5DAAA0:  B               loc_5DAAEC
5DAAA2:  LDR             R0, [SP,#0x170+var_F4]
5DAAA4:  VLDR            S2, [R0,#0x48]
5DAAA8:  VLDR            S4, [R0,#0x4C]
5DAAAC:  VMUL.F32        S2, S2, S2
5DAAB0:  VLDR            S6, [R0,#0x50]
5DAAB4:  VMUL.F32        S4, S4, S4
5DAAB8:  VMUL.F32        S6, S6, S6
5DAABC:  VADD.F32        S2, S2, S4
5DAAC0:  VLDR            S4, =1.2
5DAAC4:  VMUL.F32        S4, S0, S4
5DAAC8:  VADD.F32        S2, S2, S6
5DAACC:  VLDR            S6, =0.8
5DAAD0:  VSQRT.F32       S2, S2
5DAAD4:  VCMPE.F32       S2, S6
5DAAD8:  VMRS            APSR_nzcv, FPSCR
5DAADC:  VMOV.F32        S2, S26
5DAAE0:  IT GT
5DAAE2:  VMOVGT.F32      S0, S4
5DAAE6:  LDR             R0, [SP,#0x170+var_154]
5DAAE8:  VLDR            S18, [R0]
5DAAEC:  VMUL.F32        S0, S0, S18
5DAAF0:  VLDR            S4, [R9,#0x48]
5DAAF4:  VLDR            S6, [R9,#0x4C]
5DAAF8:  VLDR            S10, [SP,#0x170+var_9C]
5DAAFC:  VMUL.F32        S4, S2, S4
5DAB00:  VLDR            S12, [SP,#0x170+var_98]
5DAB04:  VMUL.F32        S6, S2, S6
5DAB08:  VLDR            S8, [R9,#0x50]
5DAB0C:  VLDR            S14, [SP,#0x170+var_94]
5DAB10:  VMUL.F32        S2, S2, S8
5DAB14:  VMUL.F32        S10, S10, S0
5DAB18:  VMUL.F32        S12, S0, S12
5DAB1C:  VMUL.F32        S8, S0, S14
5DAB20:  VADD.F32        S0, S10, S4
5DAB24:  VADD.F32        S4, S12, S6
5DAB28:  VADD.F32        S2, S8, S2
5DAB2C:  VMUL.F32        S6, S0, S0
5DAB30:  VSTR            S0, [R9,#0x48]
5DAB34:  VMUL.F32        S8, S4, S4
5DAB38:  VSTR            S4, [R9,#0x4C]
5DAB3C:  VMUL.F32        S10, S2, S2
5DAB40:  VSTR            S2, [R9,#0x50]
5DAB44:  VADD.F32        S6, S8, S6
5DAB48:  VLDR            S8, =9.9
5DAB4C:  VADD.F32        S6, S10, S6
5DAB50:  VSQRT.F32       S6, S6
5DAB54:  VCMPE.F32       S6, S8
5DAB58:  VMRS            APSR_nzcv, FPSCR
5DAB5C:  BLE             loc_5DAB7E
5DAB5E:  VLDR            S8, =9.9
5DAB62:  VDIV.F32        S6, S8, S6
5DAB66:  VMUL.F32        S0, S0, S6
5DAB6A:  VMUL.F32        S4, S6, S4
5DAB6E:  VMUL.F32        S2, S6, S2
5DAB72:  VSTR            S0, [R9,#0x48]
5DAB76:  VSTR            S4, [R9,#0x4C]
5DAB7A:  VSTR            S2, [R9,#0x50]
5DAB7E:  LDR.W           R0, [R9,#0x14]
5DAB82:  LDR             R1, [SP,#0x170+var_A8]
5DAB84:  STR             R1, [R0,#0x10]
5DAB86:  LDR.W           R0, [R9,#0x14]
5DAB8A:  LDR             R1, [SP,#0x170+var_A8+4]
5DAB8C:  STR             R1, [R0,#0x14]
5DAB8E:  LDR.W           R0, [R9,#0x14]
5DAB92:  LDR             R1, [SP,#0x170+var_A0]
5DAB94:  STR             R1, [R0,#0x18]
5DAB96:  LDRB.W          R0, [R9,#0x45]
5DAB9A:  LSLS            R0, R0, #0x1E
5DAB9C:  BMI             loc_5DABF8
5DAB9E:  LDR             R0, [SP,#0x170+var_D4]
5DABA0:  MOVS            R4, #0
5DABA2:  LDR             R6, [SP,#0x170+var_144]
5DABA4:  LDR             R0, [R0]
5DABA6:  STR             R0, [R6]
5DABA8:  LDR.W           R1, [R9,#0x1C]
5DABAC:  LDR.W           R0, [R9,#0x14]
5DABB0:  BIC.W           R1, R1, #1
5DABB4:  STR.W           R1, [R9,#0x1C]
5DABB8:  MOVS            R1, #1
5DABBA:  CMP             R0, #0
5DABBC:  STRD.W          R1, R1, [SP,#0x170+var_170]; bool
5DABC0:  MOV             R1, R5
5DABC2:  STRD.W          R4, R4, [SP,#0x170+var_168]; bool
5DABC6:  STR             R4, [SP,#0x170+var_160]; bool
5DABC8:  IT NE
5DABCA:  ADDNE.W         R1, R0, #0x30 ; '0'; CVector *
5DABCE:  LDR             R0, [SP,#0x170+var_148]
5DABD0:  ADD.W           R0, R0, R10,LSL#2
5DABD4:  MOVS            R2, #(stderr+1); CVector *
5DABD6:  ADDS            R0, #0x14; this
5DABD8:  MOVS            R3, #1; bool
5DABDA:  BLX.W           j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
5DABDE:  STR             R4, [R6]
5DABE0:  CMP             R0, #0
5DABE2:  LDR.W           R1, [R9,#0x1C]
5DABE6:  ORR.W           R1, R1, #1
5DABEA:  STR.W           R1, [R9,#0x1C]
5DABEE:  LDR             R1, [SP,#0x170+var_D4]
5DABF0:  LDR             R1, [R1]
5DABF2:  STR.W           R1, [R9,#0x12C]
5DABF6:  BNE             def_5DA45C; jumptable 005DA45C default case, cases 22-38,40-57
5DABF8:  LDRB.W          R0, [R9,#0xBD]
5DABFC:  CMP             R0, #0
5DABFE:  ITT NE
5DAC00:  LDRNE.W         R0, [R9,#0xC0]
5DAC04:  CMPNE           R0, #0
5DAC06:  BEQ             loc_5DAC1A
5DAC08:  LDR             R1, [SP,#0x170+var_D4]
5DAC0A:  LDR             R1, [R1]
5DAC0C:  CMP             R0, R1
5DAC0E:  ITTT NE
5DAC10:  LDRHNE          R0, [R0,#0x26]
5DAC12:  MOVWNE          R1, #0x159
5DAC16:  CMPNE           R0, R1
5DAC18:  BEQ             def_5DA45C; jumptable 005DA45C default case, cases 22-38,40-57
5DAC1A:  MOV             R0, R11; this
5DAC1C:  MOV             R1, R9; CProjectileInfo *
5DAC1E:  BLX.W           j__ZN15CProjectileInfo16RemoveProjectileEPS_P11CProjectile; CProjectileInfo::RemoveProjectile(CProjectileInfo*,CProjectile *)
5DAC22:  LDR.W           R0, [R9,#0x14]; jumptable 005DA45C default case, cases 22-38,40-57
5DAC26:  CMP             R0, #0
5DAC28:  IT NE
5DAC2A:  ADDNE.W         R5, R0, #0x30 ; '0'
5DAC2E:  LDR             R1, [SP,#0x170+var_F0]
5DAC30:  LDR             R6, [SP,#0x170+var_E0]
5DAC32:  VLDR            D16, [R5]
5DAC36:  ADD.W           R1, R1, R10,LSL#2
5DAC3A:  LDR             R0, [R5,#8]
5DAC3C:  MOVS            R5, #0
5DAC3E:  STR             R0, [R1,#0x1C]
5DAC40:  VSTR            D16, [R1,#0x14]
5DAC44:  ADD.W           R8, R8, #1
5DAC48:  CMP.W           R8, #0x20 ; ' '
5DAC4C:  BNE.W           loc_5DA080
5DAC50:  ADD             SP, SP, #0x110
5DAC52:  VPOP            {D8-D15}
5DAC56:  ADD             SP, SP, #4
5DAC58:  POP.W           {R8-R11}
5DAC5C:  POP             {R4-R7,PC}
