; =========================================================
; Game Engine Function: _ZN8CVehicle19FireUnguidedMissileE13eOrdnanceTypeb
; Address            : 0x58F064 - 0x58F468
; =========================================================

58F064:  PUSH            {R4-R7,LR}
58F066:  ADD             R7, SP, #0xC
58F068:  PUSH.W          {R8-R10}
58F06C:  VPUSH           {D8}
58F070:  SUB             SP, SP, #0x40
58F072:  MOV             R10, R1
58F074:  MOV             R4, R0
58F076:  ADD.W           R8, R4, #0x510
58F07A:  CMP.W           R10, #1
58F07E:  IT EQ
58F080:  ADDWEQ          R8, R4, #0x50C
58F084:  CBZ             R2, loc_58F0A6
58F086:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x58F092)
58F08A:  LDR.W           R2, [R4,#0x5A4]
58F08E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
58F090:  CMP             R2, #3
58F092:  LDR             R1, [R0]; CTimer::m_snTimeInMilliseconds ...
58F094:  LDR.W           R0, [R8]
58F098:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
58F09A:  BEQ             loc_58F0AE
58F09C:  CMP             R2, #4
58F09E:  BNE             loc_58F0C6
58F0A0:  ADDW            R2, R4, #0x9EC
58F0A4:  B               loc_58F0B2
58F0A6:  MOV             R6, R4
58F0A8:  LDRH.W          R2, [R6,#0x26]!
58F0AC:  B               loc_58F128
58F0AE:  ADDW            R2, R4, #0xA24
58F0B2:  LDRB            R2, [R2]
58F0B4:  VLDR            S2, =0.0625
58F0B8:  VMOV            S0, R2
58F0BC:  VCVT.F32.U32    S0, S0
58F0C0:  VMUL.F32        S0, S0, S2
58F0C4:  B               loc_58F0CA
58F0C6:  VMOV.F32        S0, #1.0
58F0CA:  MOV             R6, R4
58F0CC:  LDRSH.W         R3, [R6,#0x26]!
58F0D0:  CMP.W           R3, #0x1DC
58F0D4:  UXTH            R2, R3
58F0D6:  BGE             loc_58F0EE
58F0D8:  MOVW            R5, #0x1A9
58F0DC:  CMP             R3, R5
58F0DE:  BEQ             loc_58F100
58F0E0:  MOVW            R5, #0x1BF
58F0E4:  CMP             R3, R5
58F0E6:  BEQ             loc_58F0FA
58F0E8:  VLDR            S2, =350.0
58F0EC:  B               loc_58F114
58F0EE:  CMP.W           R3, #0x208
58F0F2:  BEQ             loc_58F106
58F0F4:  CMP.W           R3, #0x1DC
58F0F8:  BNE             loc_58F0E8
58F0FA:  VLDR            S2, =1000.0
58F0FE:  B               loc_58F114
58F100:  VLDR            S2, =500.0
58F104:  B               loc_58F114
58F106:  ADR             R3, dword_58F474
58F108:  CMP.W           R10, #1
58F10C:  IT EQ
58F10E:  ADDEQ           R3, #4
58F110:  VLDR            S2, [R3]
58F114:  VDIV.F32        S0, S2, S0
58F118:  VCVT.S32.F32    S0, S0
58F11C:  VMOV            R3, S0
58F120:  ADD             R0, R3
58F122:  CMP             R1, R0
58F124:  BLS.W           loc_58F45C
58F128:  MOVW            R0, #0x1A9
58F12C:  CMP             R2, R0
58F12E:  ITT NE
58F130:  SXTHNE          R0, R2
58F132:  CMPNE.W         R0, #0x240
58F136:  BEQ             loc_58F140
58F138:  CMP.W           R0, #0x208
58F13C:  BNE.W           loc_58F45C
58F140:  ADD             R0, SP, #0x60+var_3C
58F142:  MOVS            R1, #0x23 ; '#'
58F144:  MOVW            R2, #0x1388
58F148:  BLX.W           j__ZN7CWeaponC2E11eWeaponTypei; CWeapon::CWeapon(eWeaponType,int)
58F14C:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58F15C)
58F14E:  MOVS            R2, #0
58F150:  LDRSH.W         R0, [R6]
58F154:  MOV.W           R9, #0
58F158:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58F15A:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
58F15C:  LDR.W           R1, [R1,R0,LSL#2]
58F160:  LDR             R1, [R1,#0x74]
58F162:  VLDR            D16, [R1,#0x9C]
58F166:  LDR.W           R1, [R1,#0xA4]
58F16A:  VSTR            D16, [SP,#0x60+var_48]
58F16E:  VLDR            S2, [SP,#0x60+var_48+4]
58F172:  VLDR            S0, [SP,#0x60+var_48]
58F176:  VCMP.F32        S2, #0.0
58F17A:  STR             R1, [SP,#0x60+var_40]
58F17C:  VMRS            APSR_nzcv, FPSCR
58F180:  MOV.W           R1, #0
58F184:  VCMP.F32        S0, #0.0
58F188:  IT EQ
58F18A:  MOVEQ           R1, #1
58F18C:  VMRS            APSR_nzcv, FPSCR
58F190:  IT EQ
58F192:  MOVEQ           R2, #1
58F194:  TST             R2, R1
58F196:  BEQ             loc_58F21A
58F198:  VLDR            S0, [SP,#0x60+var_40]
58F19C:  VCMP.F32        S0, #0.0
58F1A0:  VMRS            APSR_nzcv, FPSCR
58F1A4:  BNE             loc_58F21A
58F1A6:  CMP.W           R0, #0x1DC
58F1AA:  BGE             loc_58F1C8
58F1AC:  MOVW            R1, #0x1A9
58F1B0:  CMP             R0, R1
58F1B2:  BEQ             loc_58F1DC
58F1B4:  MOVW            R1, #0x1BF
58F1B8:  CMP             R0, R1
58F1BA:  BEQ             loc_58F1F2
58F1BC:  CMP.W           R0, #0x1D0
58F1C0:  BNE             loc_58F1E8
58F1C2:  LDR             R0, =(dword_A131E8 - 0x58F1C8)
58F1C4:  ADD             R0, PC; dword_A131E8
58F1C6:  B               loc_58F20E
58F1C8:  BEQ             loc_58F1E2
58F1CA:  CMP.W           R0, #0x208
58F1CE:  BEQ             loc_58F1F8
58F1D0:  CMP.W           R0, #0x240
58F1D4:  BNE             loc_58F1E8
58F1D6:  LDR             R0, =(dword_A131D8 - 0x58F1DC)
58F1D8:  ADD             R0, PC; dword_A131D8
58F1DA:  B               loc_58F20E
58F1DC:  LDR             R0, =(dword_A13188 - 0x58F1E2)
58F1DE:  ADD             R0, PC; dword_A13188
58F1E0:  B               loc_58F20E
58F1E2:  LDR             R0, =(dword_A131A8 - 0x58F1E8)
58F1E4:  ADD             R0, PC; dword_A131A8
58F1E6:  B               loc_58F20E
58F1E8:  MOVS            R0, #0
58F1EA:  STRD.W          R0, R0, [SP,#0x60+var_48]
58F1EE:  STR             R0, [SP,#0x60+var_40]
58F1F0:  B               loc_58F21A
58F1F2:  LDR             R0, =(dword_A13198 - 0x58F1F8)
58F1F4:  ADD             R0, PC; dword_A13198
58F1F6:  B               loc_58F20E
58F1F8:  CMP.W           R10, #2
58F1FC:  BEQ             loc_58F20A
58F1FE:  CMP.W           R10, #1
58F202:  BNE             loc_58F21A
58F204:  LDR             R0, =(dword_A131B8 - 0x58F20A)
58F206:  ADD             R0, PC; dword_A131B8
58F208:  B               loc_58F20E
58F20A:  LDR             R0, =(unk_A131C8 - 0x58F210)
58F20C:  ADD             R0, PC; unk_A131C8
58F20E:  VLDR            D16, [R0]
58F212:  LDR             R0, [R0,#8]
58F214:  STR             R0, [SP,#0x60+var_40]
58F216:  VSTR            D16, [SP,#0x60+var_48]
58F21A:  ADD             R6, SP, #0x60+var_48
58F21C:  LDR             R1, [R4,#0x14]
58F21E:  ADD             R0, SP, #0x60+var_54
58F220:  MOV             R2, R6
58F222:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
58F226:  LDR             R0, [R4,#0x14]
58F228:  MOV             R1, R4; CEntity *
58F22A:  VLDR            S0, [R4,#0x48]
58F22E:  MOV             R2, R6; CVector *
58F230:  VLDR            S2, [R4,#0x4C]
58F234:  MOVS            R3, #0; CEntity *
58F236:  VLDR            S6, [R0,#0x10]
58F23A:  VLDR            S8, [R0,#0x14]
58F23E:  VMUL.F32        S0, S0, S6
58F242:  VLDR            S10, [R0,#0x18]
58F246:  VMUL.F32        S2, S2, S8
58F24A:  VLDR            S4, [R4,#0x50]
58F24E:  VLDR            S16, =0.0
58F252:  VMUL.F32        S4, S4, S10
58F256:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x58F25C)
58F258:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
58F25A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
58F25C:  VADD.F32        S0, S0, S2
58F260:  VADD.F32        S0, S0, S4
58F264:  VMAX.F32        D0, D0, D8
58F268:  VMUL.F32        S2, S6, S0
58F26C:  VLDR            S6, [R0]
58F270:  VMUL.F32        S4, S8, S0
58F274:  VLDR            S8, [SP,#0x60+var_50]
58F278:  VMUL.F32        S0, S10, S0
58F27C:  VLDR            S10, [SP,#0x60+var_4C]
58F280:  ADD             R0, SP, #0x60+var_3C; this
58F282:  VMUL.F32        S2, S2, S6
58F286:  VMUL.F32        S4, S4, S6
58F28A:  VMUL.F32        S0, S0, S6
58F28E:  VLDR            S6, [SP,#0x60+var_54]
58F292:  VADD.F32        S2, S6, S2
58F296:  VADD.F32        S4, S4, S8
58F29A:  VADD.F32        S0, S0, S10
58F29E:  VSTR            S2, [SP,#0x60+var_48]
58F2A2:  VSTR            S4, [SP,#0x60+var_48+4]
58F2A6:  VSTR            S0, [SP,#0x60+var_40]
58F2AA:  STRD.W          R9, R9, [SP,#0x60+var_60]; CVector *
58F2AE:  BLX             j__ZN7CWeapon14FireProjectileEP7CEntityP7CVectorS1_S3_f; CWeapon::FireProjectile(CEntity *,CVector *,CEntity *,CVector *,float)
58F2B2:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58F2B8)
58F2B4:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58F2B6:  LDR             R1, [R0]; CModelInfo::ms_modelInfoPtrs ...
58F2B8:  LDRSH.W         R0, [R4,#0x26]
58F2BC:  LDR.W           R1, [R1,R0,LSL#2]
58F2C0:  LDR             R1, [R1,#0x74]
58F2C2:  VLDR            S0, [R1,#0x9C]
58F2C6:  VLDR            S2, [R1,#0xA0]
58F2CA:  VCMP.F32        S0, #0.0
58F2CE:  VLDR            S4, [R1,#0xA4]
58F2D2:  VMRS            APSR_nzcv, FPSCR
58F2D6:  BNE             loc_58F378
58F2D8:  VCMP.F32        S2, #0.0
58F2DC:  VMRS            APSR_nzcv, FPSCR
58F2E0:  ITT EQ
58F2E2:  VCMPEQ.F32      S4, #0.0
58F2E6:  VMRSEQ          APSR_nzcv, FPSCR
58F2EA:  BNE             loc_58F378
58F2EC:  CMP.W           R0, #0x1DC
58F2F0:  BGE             loc_58F31A
58F2F2:  MOVW            R1, #0x1A9
58F2F6:  CMP             R0, R1
58F2F8:  BEQ             loc_58F33A
58F2FA:  MOVW            R1, #0x1BF
58F2FE:  CMP             R0, R1
58F300:  BEQ             loc_58F340
58F302:  VMOV.F32        S0, S16
58F306:  CMP.W           R0, #0x1D0
58F30A:  VMOV.F32        S2, S16
58F30E:  VMOV.F32        S4, S16
58F312:  BNE             loc_58F378
58F314:  LDR             R0, =(dword_A131E8 - 0x58F31A)
58F316:  ADD             R0, PC; dword_A131E8
58F318:  B               loc_58F36C
58F31A:  BEQ             loc_58F346
58F31C:  CMP.W           R0, #0x208
58F320:  BEQ             loc_58F34C
58F322:  VMOV.F32        S0, S16
58F326:  CMP.W           R0, #0x240
58F32A:  VMOV.F32        S2, S16
58F32E:  VMOV.F32        S4, S16
58F332:  BNE             loc_58F378
58F334:  LDR             R0, =(dword_A131D8 - 0x58F33A)
58F336:  ADD             R0, PC; dword_A131D8
58F338:  B               loc_58F36C
58F33A:  LDR             R0, =(dword_A13188 - 0x58F340)
58F33C:  ADD             R0, PC; dword_A13188
58F33E:  B               loc_58F36C
58F340:  LDR             R0, =(dword_A13198 - 0x58F346)
58F342:  ADD             R0, PC; dword_A13198
58F344:  B               loc_58F36C
58F346:  LDR             R0, =(dword_A131A8 - 0x58F34C)
58F348:  ADD             R0, PC; dword_A131A8
58F34A:  B               loc_58F36C
58F34C:  CMP.W           R10, #2
58F350:  BEQ             loc_58F368
58F352:  CMP.W           R10, #1
58F356:  BNE             loc_58F378
58F358:  LDR             R0, =(dword_A131B8 - 0x58F35E)
58F35A:  ADD             R0, PC; dword_A131B8
58F35C:  B               loc_58F36C
58F35E:  ALIGN 0x10
58F360:  DCFS 0.0625
58F364:  DCFS 350.0
58F368:  LDR             R0, =(unk_A131C8 - 0x58F36E)
58F36A:  ADD             R0, PC; unk_A131C8
58F36C:  VLDR            S0, [R0]
58F370:  VLDR            S2, [R0,#4]
58F374:  VLDR            S4, [R0,#8]
58F378:  VNEG.F32        S0, S0
58F37C:  VSTR            S4, [SP,#0x60+var_40]
58F380:  VSTR            S2, [SP,#0x60+var_48+4]
58F384:  ADD             R5, SP, #0x60+var_48
58F386:  ADD             R0, SP, #0x60+var_54
58F388:  MOV             R2, R5
58F38A:  VSTR            S0, [SP,#0x60+var_48]
58F38E:  LDR             R1, [R4,#0x14]
58F390:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
58F394:  LDR             R0, [R4,#0x14]
58F396:  MOV             R1, R4; CEntity *
58F398:  VLDR            S0, [R4,#0x48]
58F39C:  MOV             R2, R5; CVector *
58F39E:  VLDR            S2, [R4,#0x4C]
58F3A2:  MOVS            R3, #0; CEntity *
58F3A4:  VLDR            S6, [R0,#0x10]
58F3A8:  VLDR            S8, [R0,#0x14]
58F3AC:  VMUL.F32        S0, S0, S6
58F3B0:  VLDR            S10, [R0,#0x18]
58F3B4:  VMUL.F32        S2, S2, S8
58F3B8:  VLDR            S4, [R4,#0x50]
58F3BC:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x58F3C6)
58F3BE:  VMUL.F32        S4, S4, S10
58F3C2:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
58F3C4:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
58F3C6:  VADD.F32        S0, S0, S2
58F3CA:  VADD.F32        S0, S0, S4
58F3CE:  VMAX.F32        D0, D0, D8
58F3D2:  VMUL.F32        S2, S6, S0
58F3D6:  VLDR            S6, [R0]
58F3DA:  VMUL.F32        S4, S8, S0
58F3DE:  VLDR            S8, [SP,#0x60+var_50]
58F3E2:  VMUL.F32        S0, S10, S0
58F3E6:  VLDR            S10, [SP,#0x60+var_4C]
58F3EA:  MOVS            R0, #0
58F3EC:  VMUL.F32        S2, S2, S6
58F3F0:  VMUL.F32        S4, S4, S6
58F3F4:  VMUL.F32        S0, S0, S6
58F3F8:  VLDR            S6, [SP,#0x60+var_54]
58F3FC:  VADD.F32        S2, S6, S2
58F400:  VADD.F32        S4, S4, S8
58F404:  VADD.F32        S0, S0, S10
58F408:  VSTR            S2, [SP,#0x60+var_48]
58F40C:  VSTR            S4, [SP,#0x60+var_48+4]
58F410:  VSTR            S0, [SP,#0x60+var_40]
58F414:  STRD.W          R0, R0, [SP,#0x60+var_60]; CVector *
58F418:  ADD             R0, SP, #0x60+var_3C; this
58F41A:  BLX             j__ZN7CWeapon14FireProjectileEP7CEntityP7CVectorS1_S3_f; CWeapon::FireProjectile(CEntity *,CVector *,CEntity *,CVector *,float)
58F41E:  LDR.W           R0, [R4,#0x464]; this
58F422:  CMP             R0, #0
58F424:  BEQ             loc_58F450
58F426:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
58F42A:  CMP             R0, #1
58F42C:  BNE             loc_58F450
58F42E:  LDR.W           R0, [R4,#0x464]
58F432:  LDR.W           R0, [R0,#0x59C]
58F436:  CMP             R0, #1
58F438:  BEQ             loc_58F440
58F43A:  CBNZ            R0, loc_58F450
58F43C:  MOVS            R0, #0
58F43E:  B               loc_58F442
58F440:  MOVS            R0, #(stderr+1); this
58F442:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
58F446:  MOVS            R1, #0xF0; __int16
58F448:  MOVS            R2, #0xA0; unsigned __int8
58F44A:  MOVS            R3, #0; unsigned int
58F44C:  BLX.W           j__ZN4CPad10StartShakeEshj; CPad::StartShake(short,uchar,uint)
58F450:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x58F456)
58F452:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
58F454:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
58F456:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
58F458:  STR.W           R0, [R8]
58F45C:  ADD             SP, SP, #0x40 ; '@'
58F45E:  VPOP            {D8}
58F462:  POP.W           {R8-R10}
58F466:  POP             {R4-R7,PC}
