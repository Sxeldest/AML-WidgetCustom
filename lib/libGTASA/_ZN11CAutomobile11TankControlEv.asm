; =========================================================
; Game Engine Function: _ZN11CAutomobile11TankControlEv
; Address            : 0x555DE8 - 0x556590
; =========================================================

555DE8:  PUSH            {R4-R7,LR}
555DEA:  ADD             R7, SP, #0xC
555DEC:  PUSH.W          {R8,R9,R11}
555DF0:  VPUSH           {D8-D10}
555DF4:  SUB             SP, SP, #0xA0; CVector *
555DF6:  MOV             R4, R0
555DF8:  LDRH            R0, [R4,#0x26]
555DFA:  LDRB.W          R1, [R4,#0x3A]; int
555DFE:  CMP.W           R0, #0x234
555E02:  ITT EQ
555E04:  ANDEQ.W         R2, R1, #0xF8
555E08:  CMPEQ           R2, #0x40 ; '@'
555E0A:  BNE.W           loc_555F14
555E0E:  MOVS            R0, #0; this
555E10:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
555E14:  BLX             j__ZN4CPad14CarGunJustDownEv; CPad::CarGunJustDown(void)
555E18:  CMP             R0, #0
555E1A:  BEQ.W           loc_556584
555E1E:  LDR.W           R0, =(TIGER_GUNFIRE_RATE_ptr - 0x555E2A)
555E22:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x555E30)
555E26:  ADD             R0, PC; TIGER_GUNFIRE_RATE_ptr
555E28:  LDR.W           R2, [R4,#0x4E4]
555E2C:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
555E2E:  LDR             R0, [R0]; TIGER_GUNFIRE_RATE
555E30:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
555E32:  LDR             R0, [R0]
555E34:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
555E36:  ADD             R0, R2
555E38:  CMP             R1, R0
555E3A:  BLS.W           loc_556584
555E3E:  ADD.W           R8, SP, #0xD0+var_A0
555E42:  MOVS            R1, #0x26 ; '&'
555E44:  MOVW            R2, #0x1388
555E48:  MOV             R0, R8
555E4A:  BLX             j__ZN7CWeaponC2E11eWeaponTypei; CWeapon::CWeapon(eWeaponType,int)
555E4E:  LDR.W           R0, =(TIGER_GUN_POS_ptr - 0x555E58)
555E52:  ADD             R6, SP, #0xD0+var_40
555E54:  ADD             R0, PC; TIGER_GUN_POS_ptr
555E56:  MOV             R2, R6
555E58:  LDR             R0, [R0]; TIGER_GUN_POS
555E5A:  VLDR            D16, [R0]
555E5E:  LDR             R0, [R0,#(dword_A01F84 - 0xA01F7C)]
555E60:  STR             R0, [SP,#0xD0+var_38]
555E62:  ADD             R0, SP, #0xD0+var_50
555E64:  VSTR            D16, [SP,#0xD0+var_40]
555E68:  LDR             R1, [R4,#0x14]
555E6A:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
555E6E:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x555E7E)
555E72:  MOVS            R5, #0
555E74:  VLDR            S0, [R4,#0x48]
555E78:  MOV             R1, R4; CEntity *
555E7A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
555E7C:  VLDR            S2, [R4,#0x4C]
555E80:  VLDR            S4, [R4,#0x50]
555E84:  MOV             R2, R6; CVector *
555E86:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
555E88:  MOV             R3, R6; CVector *
555E8A:  VLDR            S8, [SP,#0xD0+var_50+4]
555E8E:  VLDR            S10, [SP,#0xD0+var_48]
555E92:  VLDR            S6, [R0]
555E96:  MOVS            R0, #1
555E98:  VMUL.F32        S2, S6, S2
555E9C:  VMUL.F32        S4, S6, S4
555EA0:  VMUL.F32        S0, S6, S0
555EA4:  VLDR            S6, [SP,#0xD0+var_50]
555EA8:  VADD.F32        S2, S2, S8
555EAC:  VADD.F32        S4, S4, S10
555EB0:  VADD.F32        S0, S0, S6
555EB4:  VSTR            S0, [SP,#0xD0+var_40]
555EB8:  VSTR            S2, [SP,#0xD0+var_40+4]
555EBC:  VSTR            S4, [SP,#0xD0+var_38]
555EC0:  STRD.W          R5, R5, [SP,#0xD0+var_D0]; CEntity *
555EC4:  STRD.W          R5, R5, [SP,#0xD0+var_C8]; CVector *
555EC8:  STR             R0, [SP,#0xD0+var_C0]; bool
555ECA:  MOV             R0, R8; this
555ECC:  BLX             j__ZN7CWeapon14FireInstantHitEP7CEntityP7CVectorS3_S1_S3_S3_bb; CWeapon::FireInstantHit(CEntity *,CVector *,CVector *,CEntity *,CVector *,CVector *,bool,bool)
555ED0:  MOVW            R0, #0xCCCD
555ED4:  ADD             R3, SP, #0xD0+var_50; int
555ED6:  MOVT            R0, #0x3DCC
555EDA:  MOV             R1, R4; this
555EDC:  STRD.W          R5, R0, [SP,#0xD0+var_50]
555EE0:  MOV             R0, #0x3CCCCCCD
555EE8:  MOV             R2, R6; int
555EEA:  STR             R0, [SP,#0xD0+var_D0]; float
555EEC:  MOV             R0, R8; int
555EEE:  BLX             j__ZN7CWeapon11AddGunshellEP7CEntityRK7CVectorRK9CVector2Df; CWeapon::AddGunshell(CEntity *,CVector const&,CVector2D const&,float)
555EF2:  LDR.W           R0, =(AudioEngine_ptr - 0x555F00)
555EF6:  MOVS            R1, #0x91
555EF8:  MOVS            R2, #0x26 ; '&'
555EFA:  MOV             R3, R4
555EFC:  ADD             R0, PC; AudioEngine_ptr
555EFE:  LDR             R0, [R0]; AudioEngine
555F00:  BLX             j__ZN12CAudioEngine17ReportWeaponEventEi11eWeaponTypeP9CPhysical; CAudioEngine::ReportWeaponEvent(int,eWeaponType,CPhysical *)
555F04:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x555F0C)
555F08:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
555F0A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
555F0C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
555F0E:  STR.W           R0, [R4,#0x4E4]
555F12:  B               loc_556584
555F14:  CMP             R1, #7
555F16:  BHI.W           loc_556584
555F1A:  CMP.W           R0, #0x1B0
555F1E:  BNE.W           loc_556584
555F22:  LDR.W           R0, =(_ZN10CGameLogic9GameStateE_ptr - 0x555F2A)
555F26:  ADD             R0, PC; _ZN10CGameLogic9GameStateE_ptr
555F28:  LDR             R0, [R0]; CGameLogic::GameState ...
555F2A:  LDRB            R0, [R0]; CGameLogic::GameState
555F2C:  CMP             R0, #0
555F2E:  BNE.W           loc_556584
555F32:  LDR.W           R0, [R4,#0x464]; this
555F36:  CMP             R0, #0
555F38:  BEQ.W           loc_556584
555F3C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
555F40:  CMP             R0, #1
555F42:  BNE.W           loc_556584
555F46:  LDR.W           R0, [R4,#0x464]; this
555F4A:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
555F4E:  MOV             R5, R0
555F50:  CMP             R5, #0
555F52:  BEQ.W           loc_556584
555F56:  LDR.W           R0, =(TheCamera_ptr - 0x555F62)
555F5A:  ADD.W           R8, R4, #0x960
555F5E:  ADD             R0, PC; TheCamera_ptr
555F60:  LDR             R1, [R0]; TheCamera
555F62:  LDRB.W          R0, [R1,#(byte_951FFF - 0x951FA8)]
555F66:  ADD.W           R0, R0, R0,LSL#5
555F6A:  ADD.W           R1, R1, R0,LSL#4
555F6E:  LDRH.W          R1, [R1,#0x17E]
555F72:  CMP             R1, #0x12
555F74:  BNE             loc_556002
555F76:  LDR.W           R1, =(TheCamera_ptr - 0x555F7E)
555F7A:  ADD             R1, PC; TheCamera_ptr
555F7C:  LDR             R1, [R1]; TheCamera
555F7E:  ADD.W           R0, R1, R0,LSL#4
555F82:  ADD             R1, SP, #0xD0+var_A0; CMatrix *
555F84:  VLDR            D16, [R0,#0x2D8]
555F88:  LDR.W           R0, [R0,#0x2E0]
555F8C:  STR             R0, [SP,#0xD0+y]
555F8E:  ADD             R0, SP, #0xD0+var_40; CVector *
555F90:  VSTR            D16, [SP,#0xD0+var_A0]
555F94:  LDR             R2, [R4,#0x14]
555F96:  BLX             j__Z11Multiply3x3RK7CVectorRK7CMatrix; Multiply3x3(CVector const&,CMatrix const&)
555F9A:  VLDR            D16, [SP,#0xD0+var_40]
555F9E:  LDR             R0, [SP,#0xD0+var_38]
555FA0:  STR             R0, [SP,#0xD0+y]
555FA2:  VSTR            D16, [SP,#0xD0+var_A0]
555FA6:  VLDR            S16, [SP,#0xD0+var_A0]
555FAA:  VLDR            S18, [SP,#0xD0+var_A0+4]
555FAE:  VMOV            R0, S16
555FB2:  VMOV            R1, S18; x
555FB6:  EOR.W           R0, R0, #0x80000000; y
555FBA:  BLX             atan2f
555FBE:  VMUL.F32        S0, S18, S18
555FC2:  MOV             R6, R0
555FC4:  VMUL.F32        S2, S16, S16
555FC8:  LDR             R0, [SP,#0xD0+y]; y
555FCA:  VADD.F32        S0, S2, S0
555FCE:  VSQRT.F32       S0, S0
555FD2:  VMOV            R1, S0; x
555FD6:  BLX             atan2f
555FDA:  VLDR            S0, =3.1416
555FDE:  VMOV            S4, R0
555FE2:  VLDR            S2, [R8]
555FE6:  VLDR            S6, =0.2618
555FEA:  VADD.F32        S8, S2, S0
555FEE:  VMOV            S0, R6
555FF2:  VCMPE.F32       S0, S8
555FF6:  VMRS            APSR_nzcv, FPSCR
555FFA:  BLE             loc_55608C
555FFC:  VLDR            S8, =-6.2832
556000:  B               loc_5560A2
556002:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x556012)
556006:  MOVS            R1, #0; bool
556008:  VLDR            S0, =-0.015
55600C:  MOVS            R2, #0; bool
55600E:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
556010:  MOV.W           R9, #0
556014:  LDR             R6, [R0]; CTimer::ms_fTimeStep ...
556016:  MOV             R0, R5; this
556018:  VLDR            S2, [R6]
55601C:  VMUL.F32        S16, S2, S0
556020:  BLX             j__ZN4CPad18GetCarGunLeftRightEbb; CPad::GetCarGunLeftRight(bool,bool)
556024:  VMOV            S0, R0
556028:  MOV             R3, #0x451C4000; float
556030:  MOV             R0, R5; this
556032:  VCVT.F32.S32    S0, S0
556036:  VLDR            S2, [R8]
55603A:  MOVS            R1, #0; bool
55603C:  MOVS            R2, #0; CAutomobile *
55603E:  VMUL.F32        S0, S16, S0
556042:  VLDR            S16, =0.0078125
556046:  VMUL.F32        S0, S0, S16
55604A:  VADD.F32        S0, S2, S0
55604E:  VSTR            S0, [R8]
556052:  VLDR            S18, [R6]
556056:  STR.W           R9, [SP,#0xD0+var_D0]; CHID *
55605A:  BLX             j__ZN4CPad15GetCarGunUpDownEbP11CAutomobilefb; CPad::GetCarGunUpDown(bool,CAutomobile *,float,bool)
55605E:  VMOV            S2, R0
556062:  VLDR            S0, =0.005
556066:  ADDW            R0, R4, #0x964
55606A:  VMUL.F32        S0, S18, S0
55606E:  VCVT.F32.S32    S2, S2
556072:  VMUL.F32        S0, S0, S2
556076:  VLDR            S2, [R0]
55607A:  VMUL.F32        S0, S0, S16
55607E:  VADD.F32        S16, S2, S0
556082:  VSTR            S16, [R0]
556086:  VLDR            S0, [R8]
55608A:  B               loc_55612A
55608C:  VLDR            S8, =-3.1416
556090:  VADD.F32        S8, S2, S8
556094:  VCMPE.F32       S0, S8
556098:  VMRS            APSR_nzcv, FPSCR
55609C:  BGE             loc_5560A6
55609E:  VLDR            S8, =6.2832
5560A2:  VADD.F32        S0, S0, S8
5560A6:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5560BA)
5560AA:  VADD.F32        S16, S4, S6
5560AE:  VLDR            S6, =0.015
5560B2:  VSUB.F32        S8, S0, S2
5560B6:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5560B8:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5560BA:  VLDR            S4, [R0]
5560BE:  VMUL.F32        S6, S4, S6
5560C2:  VCMPE.F32       S8, S6
5560C6:  VMRS            APSR_nzcv, FPSCR
5560CA:  BLE             loc_5560D2
5560CC:  VADD.F32        S0, S2, S6
5560D0:  B               loc_5560E8
5560D2:  VLDR            S10, =-0.015
5560D6:  VMUL.F32        S10, S4, S10
5560DA:  VCMPE.F32       S8, S10
5560DE:  VMRS            APSR_nzcv, FPSCR
5560E2:  IT LT
5560E4:  VSUBLT.F32      S0, S2, S6
5560E8:  ADDW            R0, R4, #0x964
5560EC:  VSTR            S0, [R8]
5560F0:  VLDR            S6, =0.005
5560F4:  VLDR            S2, [R0]
5560F8:  VMUL.F32        S6, S4, S6
5560FC:  VSUB.F32        S8, S16, S2
556100:  VCMPE.F32       S8, S6
556104:  VMRS            APSR_nzcv, FPSCR
556108:  BLE             loc_556110
55610A:  VADD.F32        S16, S2, S6
55610E:  B               loc_556126
556110:  VLDR            S10, =-0.005
556114:  VMUL.F32        S4, S4, S10
556118:  VCMPE.F32       S8, S4
55611C:  VMRS            APSR_nzcv, FPSCR
556120:  IT LT
556122:  VSUBLT.F32      S16, S2, S6
556126:  VSTR            S16, [R0]
55612A:  VLDR            S2, =-3.1416
55612E:  VCMPE.F32       S0, S2
556132:  VMRS            APSR_nzcv, FPSCR
556136:  BGE             loc_55613E
556138:  VLDR            S2, =6.2832
55613C:  B               loc_556150
55613E:  VLDR            S2, =3.1416
556142:  VCMPE.F32       S0, S2
556146:  VMRS            APSR_nzcv, FPSCR
55614A:  BLE             loc_556158
55614C:  VLDR            S2, =-6.2832
556150:  VADD.F32        S0, S0, S2
556154:  VSTR            S0, [R8]
556158:  VLDR            S2, =0.61087
55615C:  ADDW            R6, R4, #0x964
556160:  VCMPE.F32       S16, S2
556164:  VMRS            APSR_nzcv, FPSCR
556168:  BLE             loc_556174
55616A:  MOV             R0, #0x3F1C61AB
556172:  B               loc_5561A6
556174:  VLDR            S2, =1.5708
556178:  VCMPE.F32       S0, S2
55617C:  VMRS            APSR_nzcv, FPSCR
556180:  BGT             loc_5561AA
556182:  VLDR            S2, =-1.5708
556186:  VCMPE.F32       S0, S2
55618A:  VMRS            APSR_nzcv, FPSCR
55618E:  BLT             loc_5561AA
556190:  VLDR            S0, =-0.12217
556194:  VCMPE.F32       S16, S0
556198:  VMRS            APSR_nzcv, FPSCR
55619C:  BGE             loc_5561E4
55619E:  MOV             R0, #0xBDFA35DE
5561A6:  STR             R0, [R6]
5561A8:  B               loc_5561E4
5561AA:  VMOV            R0, S0; x
5561AE:  BLX             cosf
5561B2:  VLDR            S0, =1.3
5561B6:  VMOV            S2, R0
5561BA:  VMOV.F32        S4, #-1.0
5561BE:  VLDR            S6, =-0.069813
5561C2:  VMUL.F32        S0, S2, S0
5561C6:  VLDR            S2, =-0.12217
5561CA:  VMAX.F32        D0, D0, D2
5561CE:  VMUL.F32        S0, S0, S6
5561D2:  VADD.F32        S0, S0, S2
5561D6:  VCMPE.F32       S16, S0
5561DA:  VMRS            APSR_nzcv, FPSCR
5561DE:  IT LT
5561E0:  VSTRLT          S0, [R6]
5561E4:  MOV             R0, R5; this
5561E6:  BLX             j__ZN4CPad14CarGunJustDownEv; CPad::CarGunJustDown(void)
5561EA:  CMP             R0, #0
5561EC:  BEQ.W           loc_556584
5561F0:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x5561FC)
5561F2:  MOV.W           R3, #0x194
5561F6:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x556200)
5561F8:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
5561FA:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x556204)
5561FC:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
5561FE:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
556200:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
556202:  LDR             R1, [R1]; CWorld::Players ...
556204:  LDR             R0, [R0]; CWorld::PlayerInFocus
556206:  SMLABB.W        R0, R0, R3, R1
55620A:  LDR             R1, [R2]; CTimer::m_snTimeInMilliseconds ...
55620C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
55620E:  LDR.W           R2, [R0,#0xEC]!
556212:  ADD.W           R2, R2, #0x320
556216:  CMP             R1, R2
556218:  BLS.W           loc_556584
55621C:  STR             R1, [R0]
55621E:  LDR.W           R5, [R8]
556222:  MOV             R0, R5; x
556224:  BLX             cosf
556228:  LDR             R1, [R6]
55622A:  STR             R0, [SP,#0xD0+var_40+4]
55622C:  MOV             R0, R1; x
55622E:  BLX             sinf
556232:  STR             R0, [SP,#0xD0+var_38]
556234:  EOR.W           R0, R5, #0x80000000; x
556238:  BLX             sinf
55623C:  STR             R0, [SP,#0xD0+var_40]
55623E:  ADD             R0, SP, #0xD0+var_A0; CMatrix *
556240:  LDR             R1, [R4,#0x14]; CVector *
556242:  ADD             R2, SP, #0xD0+var_40
556244:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
556248:  VLDR            D16, [SP,#0xD0+var_A0]
55624C:  LDR             R0, [SP,#0xD0+y]
55624E:  STR             R0, [SP,#0xD0+var_38]
556250:  VSTR            D16, [SP,#0xD0+var_40]
556254:  LDR.W           R0, [R4,#0x6B4]
556258:  CMP             R0, #0
55625A:  BEQ             loc_556354
55625C:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
556260:  VLDR            D16, [R0,#0x30]
556264:  ADDS            R5, R4, #4
556266:  LDR             R0, [R0,#0x38]
556268:  STR             R0, [SP,#0xD0+var_48]
55626A:  MOV             R1, R5
55626C:  VSTR            D16, [SP,#0xD0+var_50]
556270:  LDR             R0, [R4,#0x14]
556272:  VLDR            S0, [SP,#0xD0+var_50]
556276:  CMP             R0, #0
556278:  VLDR            S2, [SP,#0xD0+var_50+4]
55627C:  IT NE
55627E:  ADDNE.W         R1, R0, #0x30 ; '0'
556282:  ADD             R0, SP, #0xD0+var_A0
556284:  VLDR            S4, [R1]
556288:  VLDR            S6, [R1,#4]
55628C:  VSUB.F32        S0, S0, S4
556290:  VLDR            S8, [R1,#8]
556294:  VSUB.F32        S2, S2, S6
556298:  VLDR            S4, [SP,#0xD0+var_48]
55629C:  MOV             R1, R4
55629E:  VSUB.F32        S4, S4, S8
5562A2:  VMOV            R2, S0
5562A6:  VMOV            R3, S2
5562AA:  VSTR            S4, [SP,#0xD0+var_58]
5562AE:  VSTR            S0, [SP,#0xD0+var_60]
5562B2:  VSTR            S2, [SP,#0xD0+var_60+4]
5562B6:  VSTR            S4, [SP,#0xD0+var_D0]
5562BA:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
5562BE:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5562C8)
5562C0:  VLDR            D16, [SP,#0xD0+var_A0]
5562C4:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5562C6:  LDR             R1, [SP,#0xD0+y]
5562C8:  STR             R1, [SP,#0xD0+var_58]
5562CA:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5562CC:  VSTR            D16, [SP,#0xD0+var_60]
5562D0:  VLDR            S0, [SP,#0xD0+var_60]
5562D4:  VLDR            S6, [R0]
5562D8:  VLDR            S2, [SP,#0xD0+var_60+4]
5562DC:  VLDR            S4, [SP,#0xD0+var_58]
5562E0:  VMUL.F32        S0, S6, S0
5562E4:  VMUL.F32        S2, S6, S2
5562E8:  VLDR            S8, [SP,#0xD0+var_50+4]
5562EC:  VMUL.F32        S4, S6, S4
5562F0:  VLDR            S6, [SP,#0xD0+var_50]
5562F4:  VLDR            S10, [SP,#0xD0+var_48]
5562F8:  VADD.F32        S16, S0, S6
5562FC:  VADD.F32        S18, S2, S8
556300:  VADD.F32        S20, S4, S10
556304:  VSTR            S16, [SP,#0xD0+var_50]
556308:  VSTR            S18, [SP,#0xD0+var_50+4]
55630C:  VSTR            S20, [SP,#0xD0+var_48]
556310:  B               loc_5563DC
556312:  ALIGN 4
556314:  DCFS 3.1416
556318:  DCFS 0.2618
55631C:  DCFS -6.2832
556320:  DCFS -0.015
556324:  DCFS 0.0078125
556328:  DCFS 0.005
55632C:  DCFS -3.1416
556330:  DCFS 6.2832
556334:  DCFS 0.015
556338:  DCFS -0.005
55633C:  DCFS 0.61087
556340:  DCFS 1.5708
556344:  DCFS -1.5708
556348:  DCFS -0.12217
55634C:  DCFS 1.3
556350:  DCFS -0.069813
556354:  LDR.W           R5, [R8]
556358:  MOV             R0, R5; x
55635A:  BLX             sinf
55635E:  VMOV            S16, R0
556362:  MOV             R0, R5; x
556364:  BLX             cosf
556368:  LDR             R1, =(dword_A01F70 - 0x556378)
55636A:  VMOV            S6, R0
55636E:  VMOV.F32        S8, #-1.0
556372:  LDR             R0, =(dword_A01F58 - 0x55637C)
556374:  ADD             R1, PC; dword_A01F70
556376:  ADD             R2, SP, #0xD0+var_60
556378:  ADD             R0, PC; dword_A01F58
55637A:  VLDR            S0, [R1]
55637E:  VLDR            S2, [R1,#4]
556382:  VMUL.F32        S12, S6, S0
556386:  VLDR            S4, [R1,#8]
55638A:  VMUL.F32        S10, S16, S2
55638E:  VMUL.F32        S2, S6, S2
556392:  VMUL.F32        S0, S16, S0
556396:  VADD.F32        S4, S4, S8
55639A:  VLDR            S8, [R0,#4]
55639E:  VSUB.F32        S6, S12, S10
5563A2:  VLDR            S10, [R0,#8]
5563A6:  VADD.F32        S0, S0, S2
5563AA:  VLDR            S2, [R0]
5563AE:  VADD.F32        S4, S10, S4
5563B2:  ADD             R0, SP, #0xD0+var_A0
5563B4:  VADD.F32        S2, S2, S6
5563B8:  VADD.F32        S0, S8, S0
5563BC:  VSTR            S4, [SP,#0xD0+var_58]
5563C0:  VSTR            S2, [SP,#0xD0+var_60]
5563C4:  VSTR            S0, [SP,#0xD0+var_60+4]
5563C8:  LDR             R1, [R4,#0x14]
5563CA:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5563CE:  VLDR            S16, [SP,#0xD0+var_50]
5563D2:  ADDS            R5, R4, #4
5563D4:  VLDR            S18, [SP,#0xD0+var_50+4]
5563D8:  VLDR            S20, [SP,#0xD0+var_48]
5563DC:  LDR             R0, [R4,#0x14]
5563DE:  VLDR            S6, =-0.1
5563E2:  CMP             R0, #0
5563E4:  IT NE
5563E6:  ADDNE.W         R5, R0, #0x30 ; '0'
5563EA:  VLDR            S10, [SP,#0xD0+var_40+4]
5563EE:  VLDR            S0, [R5]
5563F2:  MOV             R0, R4
5563F4:  VLDR            S2, [R5,#4]
5563F8:  VLDR            S4, [R5,#8]
5563FC:  VSUB.F32        S0, S16, S0
556400:  VSUB.F32        S2, S18, S2
556404:  VLDR            S12, [SP,#0xD0+var_38]
556408:  VSUB.F32        S4, S20, S4
55640C:  MOVS            R5, #1
55640E:  VSTR            S4, [SP,#0xD0+var_58]
556412:  VSTR            S2, [SP,#0xD0+var_60+4]
556416:  VSTR            S0, [SP,#0xD0+var_60]
55641A:  VLDR            S8, [R4,#0x90]
55641E:  STR             R5, [SP,#0xD0+var_C4]; int
556420:  VMUL.F32        S6, S8, S6
556424:  VLDR            S8, [SP,#0xD0+var_40]
556428:  VSTR            S0, [SP,#0xD0+var_D0]
55642C:  VSTR            S2, [SP,#0xD0+var_CC]
556430:  VSTR            S4, [SP,#0xD0+var_C8]
556434:  VMUL.F32        S8, S8, S6
556438:  VMUL.F32        S10, S6, S10
55643C:  VMUL.F32        S6, S6, S12
556440:  VMOV            R1, S8
556444:  VMOV            R2, S10
556448:  VMOV            R3, S6
55644C:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
556450:  VLDR            S0, =60.0
556454:  ADD.W           R8, SP, #0xD0+var_50
556458:  VLDR            S2, [SP,#0xD0+var_40]
55645C:  ADD.W           R9, SP, #0xD0+var_70
556460:  VLDR            S4, [SP,#0xD0+var_40+4]
556464:  MOV             R0, R4; this
556466:  VLDR            S6, [SP,#0xD0+var_38]
55646A:  VMUL.F32        S2, S2, S0
55646E:  VMUL.F32        S4, S4, S0
556472:  MOV             R2, R8; CEntity *
556474:  VMUL.F32        S0, S6, S0
556478:  MOV             R3, R9; CVector *
55647A:  VADD.F32        S2, S2, S16
55647E:  VADD.F32        S4, S4, S18
556482:  VADD.F32        S0, S0, S20
556486:  VSTR            S2, [SP,#0xD0+var_70]
55648A:  VSTR            S4, [SP,#0xD0+var_70+4]
55648E:  VSTR            S0, [SP,#0xD0+var_68]
556492:  LDR.W           R1, [R4,#0x464]; CEntity *
556496:  BLX             j__ZN7CWeapon16DoTankDoomAimingEP7CEntityS1_P7CVectorS3_; CWeapon::DoTankDoomAiming(CEntity *,CEntity *,CVector *,CVector *)
55649A:  LDR             R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x5564A6)
55649C:  ADD             R2, SP, #0xD0+var_A0
55649E:  ADD             R3, SP, #0xD0+var_A4
5564A0:  MOV             R1, R9
5564A2:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
5564A4:  LDR             R6, [R0]; CWorld::pIgnoreEntity ...
5564A6:  MOV             R0, R8
5564A8:  STR             R4, [R6]; CWorld::pIgnoreEntity
5564AA:  MOVS            R4, #0
5564AC:  STR             R4, [SP,#0xD0+var_A4]
5564AE:  STRD.W          R5, R5, [SP,#0xD0+var_D0]; int
5564B2:  STRD.W          R5, R5, [SP,#0xD0+var_C8]; int
5564B6:  STRD.W          R5, R5, [SP,#0xD0+var_C0]; float
5564BA:  STRD.W          R4, R4, [SP,#0xD0+var_B8]
5564BE:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
5564C2:  LDR             R0, [SP,#0xD0+var_A4]
5564C4:  STR             R4, [R6]; CWorld::pIgnoreEntity
5564C6:  CMP             R0, #0
5564C8:  BEQ             loc_556522
5564CA:  LDR             R0, [SP,#0xD0+y]
5564CC:  VLDR            D16, [SP,#0xD0+var_A0]
5564D0:  STR             R0, [SP,#0xD0+var_68]
5564D2:  VLDR            S2, [SP,#0xD0+var_68]
5564D6:  VSTR            D16, [SP,#0xD0+var_70]
5564DA:  VLDR            S0, [SP,#0xD0+var_48]
5564DE:  VLDR            S4, [SP,#0xD0+var_50]
5564E2:  VLDR            S8, [SP,#0xD0+var_70]
5564E6:  VSUB.F32        S0, S2, S0
5564EA:  VLDR            S6, [SP,#0xD0+var_50+4]
5564EE:  VLDR            S10, [SP,#0xD0+var_70+4]
5564F2:  VSUB.F32        S4, S8, S4
5564F6:  VLDR            S12, =0.04
5564FA:  VSUB.F32        S6, S10, S6
5564FE:  VMUL.F32        S0, S0, S12
556502:  VMUL.F32        S4, S4, S12
556506:  VMUL.F32        S6, S6, S12
55650A:  VSUB.F32        S0, S2, S0
55650E:  VSUB.F32        S2, S8, S4
556512:  VSUB.F32        S4, S10, S6
556516:  VSTR            S0, [SP,#0xD0+var_68]
55651A:  VSTR            S2, [SP,#0xD0+var_70]
55651E:  VSTR            S4, [SP,#0xD0+var_70+4]
556522:  MOV.W           R0, #0xFFFFFFFF; int
556526:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
55652A:  MOVS            R6, #0
55652C:  MOV             R1, R0; int
55652E:  LDR             R3, [SP,#0xD0+var_70]; int
556530:  MOVT            R6, #0xBF80
556534:  LDR             R0, [SP,#0xD0+var_70+4]
556536:  LDR             R2, [SP,#0xD0+var_68]
556538:  STMEA.W         SP, {R0,R2,R4-R6}
55653C:  MOVS            R0, #0; int
55653E:  MOVS            R2, #0xA; int
556540:  STR             R4, [SP,#0xD0+var_BC]; int
556542:  BLX             j__ZN10CExplosion12AddExplosionEP7CEntityS1_14eExplosionType7CVectorjhfh; CExplosion::AddExplosion(CEntity *,CEntity *,eExplosionType,CVector,uint,uchar,float,uchar)
556546:  VLDR            S0, [SP,#0xD0+var_50]
55654A:  ADD             R1, SP, #0xD0+var_50; CVector *
55654C:  VLDR            S6, [SP,#0xD0+var_70]
556550:  ADD             R2, SP, #0xD0+var_B0; CVector *
556552:  VLDR            S2, [SP,#0xD0+var_50+4]
556556:  VLDR            S8, [SP,#0xD0+var_70+4]
55655A:  VSUB.F32        S0, S6, S0
55655E:  VLDR            S4, [SP,#0xD0+var_48]
556562:  VLDR            S10, [SP,#0xD0+var_68]
556566:  VSUB.F32        S2, S8, S2
55656A:  LDR             R0, =(g_fx_ptr - 0x556574)
55656C:  VSUB.F32        S4, S10, S4
556570:  ADD             R0, PC; g_fx_ptr
556572:  LDR             R0, [R0]; g_fx ; this
556574:  VSTR            S0, [SP,#0xD0+var_B0]
556578:  VSTR            S2, [SP,#0xD0+var_AC]
55657C:  VSTR            S4, [SP,#0xD0+var_A8]
556580:  BLX             j__ZN4Fx_c15TriggerTankFireER7CVectorS1_; Fx_c::TriggerTankFire(CVector &,CVector &)
556584:  ADD             SP, SP, #0xA0
556586:  VPOP            {D8-D10}
55658A:  POP.W           {R8,R9,R11}
55658E:  POP             {R4-R7,PC}
