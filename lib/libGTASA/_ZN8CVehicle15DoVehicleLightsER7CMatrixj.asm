; =========================================================
; Game Engine Function: _ZN8CVehicle15DoVehicleLightsER7CMatrixj
; Address            : 0x591070 - 0x591702
; =========================================================

591070:  PUSH            {R4-R7,LR}
591072:  ADD             R7, SP, #0xC
591074:  PUSH.W          {R8-R11}
591078:  SUB             SP, SP, #0x44
59107A:  MOV             R4, R0
59107C:  LDR.W           R0, =(_ZN8CVehicle24ms_forceVehicleLightsOffE_ptr - 0x591088)
591080:  MOV             R6, R2
591082:  STR             R1, [SP,#0x60+var_20]
591084:  ADD             R0, PC; _ZN8CVehicle24ms_forceVehicleLightsOffE_ptr
591086:  LDR             R0, [R0]; CVehicle::ms_forceVehicleLightsOff ...
591088:  LDRB            R0, [R0]; CVehicle::ms_forceVehicleLightsOff
59108A:  CMP             R0, #0
59108C:  BNE.W           loc_5916FA
591090:  MOV             R0, R4; this
591092:  BLX.W           j__ZN8CVehicle22GetVehicleLightsStatusEv; CVehicle::GetVehicleLightsStatus(void)
591096:  LDR.W           R1, [R4,#0x42C]
59109A:  ADDW            LR, R4, #0x42C
59109E:  LDR.W           R2, [R4,#0x430]
5910A2:  UBFX.W          R3, R1, #6, #1
5910A6:  CMP             R3, R0
5910A8:  BEQ             loc_5910CE
5910AA:  LDRB.W          R3, [R4,#0x3A]
5910AE:  MOVS            R5, #5
5910B0:  CMP.W           R5, R3,LSR#3
5910B4:  BEQ             loc_5910CE
5910B6:  LSRS            R3, R3, #3
5910B8:  CMP             R3, #4
5910BA:  BNE             loc_5910C6
5910BC:  LDR.W           R3, [R4,#0x5A4]
5910C0:  CMP             R3, #6
5910C2:  BNE.W           loc_5912B4
5910C6:  BFI.W           R1, R0, #6, #1
5910CA:  STRD.W          R1, R2, [LR]
5910CE:  LDRB.W          R0, [R4,#0x4B2]
5910D2:  UBFX.W          R3, R0, #3, #2
5910D6:  CMP             R3, #0
5910D8:  BEQ             loc_5910F8
5910DA:  CMP             R3, #1
5910DC:  AND.W           R0, R0, #0x18
5910E0:  ITT EQ
5910E2:  BICEQ.W         R1, R1, #0x40 ; '@'
5910E6:  STRDEQ.W        R1, R2, [LR]
5910EA:  MOV.W           R10, #0
5910EE:  CMP             R0, #0x10
5910F0:  IT EQ
5910F2:  MOVEQ.W         R10, #1
5910F6:  B               loc_5910FC
5910F8:  MOV.W           R10, #0
5910FC:  LDRH.W          R0, [R4,#0x460]
591100:  MOV.W           R9, #0
591104:  CMP             R0, #0
591106:  ITT NE
591108:  MOVWNE          R2, #0xFFFF
59110C:  CMPNE           R0, R2
59110E:  BEQ             loc_591138
591110:  LDRB.W          R2, [R4,#0x3A]
591114:  MOV.W           R9, #0
591118:  AND.W           R2, R2, #0xF8
59111C:  CMP             R2, #0x28 ; '('
59111E:  BEQ             loc_591138
591120:  LDR.W           R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x591128)
591124:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
591126:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
591128:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
59112A:  TST.W           R2, #0x100
59112E:  IT EQ
591130:  MOVEQ.W         R9, #1
591134:  UBFX.W          R10, R2, #8, #1
591138:  LDRH            R2, [R4,#0x26]
59113A:  MOVW            R3, #0x1DD
59113E:  CMP             R2, R3
591140:  BNE             loc_5911DA
591142:  LDRB.W          R2, [R4,#0x3A]
591146:  AND.W           R2, R2, #0xF8
59114A:  CMP             R2, #0x28 ; '('
59114C:  IT NE
59114E:  ANDSNE.W        R2, R1, #0x10
591152:  BEQ             loc_5911DA
591154:  AND.W           R1, R1, #0x40 ; '@'
591158:  ORR.W           R1, R10, R1,LSR#6
59115C:  CBNZ            R1, loc_5911A2
59115E:  CMP             R0, #0
591160:  ITT NE
591162:  MOVWNE          R1, #0xFFFF
591166:  CMPNE           R0, R1
591168:  BNE             loc_5911A2
59116A:  ADDW            R0, R4, #0x96C
59116E:  VLDR            S0, [R0]
591172:  VCMPE.F32       S0, #0.0
591176:  VMRS            APSR_nzcv, FPSCR
59117A:  BLE             loc_5911DA
59117C:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x591188)
591180:  VLDR            S2, =-0.01
591184:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
591186:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
591188:  VLDR            S4, [R1]
59118C:  VMUL.F32        S2, S4, S2
591190:  VLDR            S4, =0.0
591194:  VADD.F32        S0, S0, S2
591198:  VMAX.F32        D0, D0, D2
59119C:  VSTR            S0, [R0]
5911A0:  B               loc_5911DA
5911A2:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5911AE)
5911A6:  VLDR            S0, =0.01
5911AA:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5911AC:  VLDR            S4, =0.69813
5911B0:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5911B2:  VLDR            S2, [R0]
5911B6:  ADDW            R0, R4, #0x96C
5911BA:  VMUL.F32        S0, S2, S0
5911BE:  VLDR            S2, [R0]
5911C2:  VADD.F32        S0, S2, S0
5911C6:  VMIN.F32        D0, D0, D2
5911CA:  VCMPE.F32       S0, S4
5911CE:  VSTR            S0, [R0]
5911D2:  VMRS            APSR_nzcv, FPSCR
5911D6:  BLT.W           loc_5916FA
5911DA:  LDRB.W          R0, [R4,#0x594]
5911DE:  MOV             R5, R4
5911E0:  LDR.W           R1, [R4,#0x5A0]
5911E4:  AND.W           R0, R0, #0xF0
5911E8:  STRB.W          R0, [R4,#0x594]
5911EC:  CMP             R1, #0
5911EE:  IT NE
5911F0:  MOVNE           R5, #0
5911F2:  LSLS            R0, R6, #0x1D
5911F4:  BMI             loc_591244
5911F6:  MOV.W           R12, #0
5911FA:  CMP             R5, #0
5911FC:  STR.W           LR, [SP,#0x60+var_24]
591200:  BEQ             loc_591218
591202:  ADDW            R0, R5, #0x5B4
591206:  MOVS            R1, #1
591208:  BLX             j__ZNK14CDamageManager14GetLightStatusE7eLights; CDamageManager::GetLightStatus(eLights)
59120C:  MOV.W           R12, #0
591210:  CMP             R0, #0
591212:  IT EQ
591214:  MOVEQ.W         R12, #1
591218:  MOV.W           R8, #0
59121C:  LSLS            R0, R6, #0x1F
59121E:  BNE             loc_591256
591220:  CMP             R5, #0
591222:  BEQ             loc_591312
591224:  ADDW            R0, R5, #0x5B4
591228:  MOVS            R1, #3
59122A:  MOV             R5, R12
59122C:  BLX             j__ZNK14CDamageManager14GetLightStatusE7eLights; CDamageManager::GetLightStatus(eLights)
591230:  CMP             R0, #0
591232:  MOV.W           R8, #0
591236:  MOV             R12, R5
591238:  IT EQ
59123A:  MOVEQ.W         R8, #1
59123E:  MOV.W           R11, #0
591242:  B               loc_59131C
591244:  AND.W           R11, R6, #1
591248:  MOV.W           R8, #1
59124C:  MOV.W           R12, #1
591250:  MOV             R5, R11
591252:  MOV             R0, R11
591254:  B               loc_591324
591256:  CMP             R5, #0
591258:  BEQ             loc_591318
59125A:  ADDW            R11, R5, #0x5B4
59125E:  MOVS            R1, #0
591260:  STR.W           R12, [SP,#0x60+var_28]
591264:  MOV             R0, R11
591266:  BLX             j__ZNK14CDamageManager14GetLightStatusE7eLights; CDamageManager::GetLightStatus(eLights)
59126A:  STR.W           R9, [SP,#0x60+var_2C]
59126E:  MOV             R9, R0
591270:  MOV             R0, R11
591272:  MOVS            R1, #3
591274:  BLX             j__ZNK14CDamageManager14GetLightStatusE7eLights; CDamageManager::GetLightStatus(eLights)
591278:  CMP.W           R9, #0
59127C:  MOV.W           R5, #0
591280:  IT EQ
591282:  MOVEQ           R5, #1
591284:  CMP             R0, #0
591286:  MOV.W           R9, #0
59128A:  MOV             R0, R11
59128C:  MOV.W           R1, #3
591290:  IT EQ
591292:  MOVEQ.W         R9, #1
591296:  BLX             j__ZNK14CDamageManager14GetLightStatusE7eLights; CDamageManager::GetLightStatus(eLights)
59129A:  CMP             R0, #0
59129C:  LDR.W           R12, [SP,#0x60+var_28]
5912A0:  IT EQ
5912A2:  MOVEQ.W         R8, #1
5912A6:  MOV.W           R11, #1
5912AA:  MOV             R0, R8
5912AC:  MOV             R8, R9
5912AE:  LDR.W           R9, [SP,#0x60+var_2C]
5912B2:  B               loc_591320
5912B4:  LSLS            R0, R1, #0x19
5912B6:  BPL.W           loc_5910CE
5912BA:  LDR.W           R0, =(TheCamera_ptr - 0x5912C4)
5912BE:  LDR             R3, [R4,#0x14]
5912C0:  ADD             R0, PC; TheCamera_ptr
5912C2:  VLDR            S2, =100.0
5912C6:  ADD.W           R5, R3, #0x30 ; '0'
5912CA:  CMP             R3, #0
5912CC:  LDR.W           R12, [R0]; TheCamera
5912D0:  LDR.W           R0, [R12,#(dword_951FBC - 0x951FA8)]
5912D4:  IT EQ
5912D6:  ADDEQ           R5, R4, #4
5912D8:  VLDR            D16, [R5]
5912DC:  ADD.W           R3, R0, #0x30 ; '0'
5912E0:  CMP             R0, #0
5912E2:  IT EQ
5912E4:  ADDEQ.W         R3, R12, #4
5912E8:  VLDR            D17, [R3]
5912EC:  VSUB.F32        D16, D17, D16
5912F0:  VCLT.F32        D0, D16, #0.0
5912F4:  VNEG.F32        D17, D16
5912F8:  VBSL            D0, D17, D16
5912FC:  VADD.F32        S0, S0, S1
591300:  VCMPE.F32       S0, S2
591304:  VMRS            APSR_nzcv, FPSCR
591308:  BLE.W           loc_5910CE
59130C:  BIC.W           R1, R1, #0x40 ; '@'
591310:  B               loc_5910CA
591312:  MOV.W           R11, #0
591316:  B               loc_59131C
591318:  MOV.W           R11, #1
59131C:  MOVS            R5, #0
59131E:  MOVS            R0, #0
591320:  LDR.W           LR, [SP,#0x60+var_24]
591324:  TST.W           R6, #0x20
591328:  MOV.W           R2, #0
59132C:  IT EQ
59132E:  MOVEQ           R2, #1
591330:  LDR.W           R3, [LR]
591334:  MOVS            R1, #0
591336:  TST.W           R6, #0x10
59133A:  IT EQ
59133C:  MOVEQ           R1, #1
59133E:  TST.W           R3, #0x10
591342:  BEQ.W           loc_5916FA
591346:  AND.W           R6, R2, R8
59134A:  AND.W           R8, R2, R0
59134E:  AND.W           R0, R3, #0x40 ; '@'
591352:  ORR.W           R0, R10, R0,LSR#6
591356:  ORRS.W          R0, R0, R9
59135A:  BEQ.W           loc_5914AC
59135E:  STRD.W          R8, R6, [SP,#0x60+var_30]
591362:  AND.W           R0, R1, R12
591366:  STRD.W          R12, LR, [SP,#0x60+var_28]
59136A:  ANDS            R5, R1
59136C:  LDR.W           R10, [SP,#0x60+var_20]
591370:  MOVS            R1, #0; int
591372:  STR             R0, [SP,#0x60+var_38]
591374:  EOR.W           R0, R0, #1
591378:  ORR.W           R6, R9, R0
59137C:  MOV             R0, R4; this
59137E:  MOV             R2, R10; CMatrix *
591380:  MOVS            R3, #1; unsigned __int8
591382:  STR             R6, [SP,#0x60+var_60]; unsigned __int8
591384:  BLX.W           j__ZN8CVehicle17DoHeadLightEffectEiR7CMatrixhh; CVehicle::DoHeadLightEffect(int,CMatrix &,uchar,uchar)
591388:  LDRB.W          R1, [R4,#0x594]
59138C:  AND.W           R0, R0, #1
591390:  MOV             R2, R10; CMatrix *
591392:  MOVS            R3, #0; unsigned __int8
591394:  AND.W           R1, R1, #0xFE
591398:  MOV             R8, R9
59139A:  ORRS            R0, R1
59139C:  STRB.W          R0, [R4,#0x594]
5913A0:  EOR.W           R0, R5, #1
5913A4:  STR             R5, [SP,#0x60+var_34]
5913A6:  ORR.W           R5, R9, R0
5913AA:  MOV             R0, R4; this
5913AC:  MOVS            R1, #0; int
5913AE:  STR             R5, [SP,#0x60+var_60]; unsigned __int8
5913B0:  BLX.W           j__ZN8CVehicle17DoHeadLightEffectEiR7CMatrixhh; CVehicle::DoHeadLightEffect(int,CMatrix &,uchar,uchar)
5913B4:  LDRB.W          R1, [R4,#0x594]
5913B8:  TST.W           R1, #1
5913BC:  BFI.W           R1, R0, #1, #1
5913C0:  STRB.W          R1, [R4,#0x594]
5913C4:  BEQ             loc_5913D8
5913C6:  LDR             R2, [SP,#0x60+var_20]; CMatrix *
5913C8:  MOV             R0, R4; this
5913CA:  MOVS            R1, #1; int
5913CC:  MOVS            R3, #1; unsigned __int8
5913CE:  STR             R6, [SP,#0x60+var_60]; unsigned __int8
5913D0:  BLX.W           j__ZN8CVehicle17DoHeadLightEffectEiR7CMatrixhh; CVehicle::DoHeadLightEffect(int,CMatrix &,uchar,uchar)
5913D4:  LDRB.W          R1, [R4,#0x594]
5913D8:  LSLS            R0, R1, #0x1E
5913DA:  BPL             loc_5913EA
5913DC:  LDR             R2, [SP,#0x60+var_20]; CMatrix *
5913DE:  MOV             R0, R4; this
5913E0:  MOVS            R1, #1; int
5913E2:  MOVS            R3, #0; unsigned __int8
5913E4:  STR             R5, [SP,#0x60+var_60]; unsigned __int8
5913E6:  BLX.W           j__ZN8CVehicle17DoHeadLightEffectEiR7CMatrixhh; CVehicle::DoHeadLightEffect(int,CMatrix &,uchar,uchar)
5913EA:  LDR             R0, [SP,#0x60+var_2C]
5913EC:  MOVS            R5, #1
5913EE:  LDR             R2, [SP,#0x60+var_20]; CMatrix *
5913F0:  MOVS            R1, #0; int
5913F2:  EOR.W           R0, R0, #1
5913F6:  MOVS            R3, #1; unsigned __int8
5913F8:  ORR.W           R6, R8, R0
5913FC:  MOV             R0, R4; this
5913FE:  STR             R5, [SP,#0x60+var_58]; unsigned __int8
591400:  STR             R6, [SP,#0x60+var_60]; unsigned __int8
591402:  BLX             j__ZN8CVehicle17DoTailLightEffectEiR7CMatrixhhjh; CVehicle::DoTailLightEffect(int,CMatrix &,uchar,uchar,uint,uchar)
591406:  LDRB.W          R1, [R4,#0x594]
59140A:  MOVS            R2, #4
59140C:  AND.W           R0, R2, R0,LSL#2
591410:  AND.W           R1, R1, #0xFB
591414:  CMP             R0, #0
591416:  ORR.W           R1, R1, R0
59141A:  STRB.W          R1, [R4,#0x594]
59141E:  BEQ             loc_591430
591420:  LDR             R2, [SP,#0x60+var_20]; CMatrix *
591422:  MOV             R0, R4; this
591424:  MOVS            R1, #1; int
591426:  MOVS            R3, #1; unsigned __int8
591428:  STR             R5, [SP,#0x60+var_58]; unsigned __int8
59142A:  STR             R6, [SP,#0x60+var_60]; unsigned __int8
59142C:  BLX             j__ZN8CVehicle17DoTailLightEffectEiR7CMatrixhhjh; CVehicle::DoTailLightEffect(int,CMatrix &,uchar,uchar,uint,uchar)
591430:  CMP.W           R11, #1
591434:  BNE             loc_59147C
591436:  LDR             R0, [SP,#0x60+var_30]
591438:  MOVS            R5, #1
59143A:  LDR             R2, [SP,#0x60+var_20]; CMatrix *
59143C:  MOVS            R1, #0; int
59143E:  EOR.W           R0, R0, #1
591442:  MOVS            R3, #0; unsigned __int8
591444:  ORR.W           R6, R8, R0
591448:  MOV             R0, R4; this
59144A:  STR             R5, [SP,#0x60+var_58]; unsigned __int8
59144C:  STR             R6, [SP,#0x60+var_60]; unsigned __int8
59144E:  BLX             j__ZN8CVehicle17DoTailLightEffectEiR7CMatrixhhjh; CVehicle::DoTailLightEffect(int,CMatrix &,uchar,uchar,uint,uchar)
591452:  LDRB.W          R1, [R4,#0x594]
591456:  MOVS            R2, #8
591458:  AND.W           R0, R2, R0,LSL#3
59145C:  AND.W           R1, R1, #0xF7
591460:  CMP             R0, #0
591462:  ORR.W           R1, R1, R0
591466:  STRB.W          R1, [R4,#0x594]
59146A:  BEQ             loc_59147C
59146C:  LDR             R2, [SP,#0x60+var_20]; CMatrix *
59146E:  MOV             R0, R4; this
591470:  MOVS            R1, #1; int
591472:  MOVS            R3, #0; unsigned __int8
591474:  STR             R5, [SP,#0x60+var_58]; unsigned __int8
591476:  STR             R6, [SP,#0x60+var_60]; unsigned __int8
591478:  BLX             j__ZN8CVehicle17DoTailLightEffectEiR7CMatrixhhjh; CVehicle::DoTailLightEffect(int,CMatrix &,uchar,uchar,uint,uchar)
59147C:  LDR.W           R0, [R4,#0x5A4]
591480:  MOVS            R1, #0
591482:  CMP             R0, #6
591484:  IT EQ
591486:  MOVEQ           R1, #1
591488:  LDR             R5, [SP,#0x60+var_34]
59148A:  ORRS.W          R0, R8, R1
59148E:  LDR             R1, [SP,#0x60+var_24]
591490:  BNE             loc_591570
591492:  CMP.W           R11, #0
591496:  BEQ             loc_59154C
591498:  LDR             R0, [SP,#0x60+var_28]
59149A:  ANDS            R0, R5
59149C:  CMP             R0, #1
59149E:  BEQ             loc_591554
5914A0:  CMP             R5, #1
5914A2:  BNE             loc_59155E
5914A4:  MOV             R0, R4
5914A6:  LDR             R1, [SP,#0x60+var_20]
5914A8:  MOVS            R2, #0
5914AA:  B               loc_59156A
5914AC:  LDR             R2, [SP,#0x60+var_20]; CMatrix *
5914AE:  MOVS            R5, #0
5914B0:  MOV             R0, R4; this
5914B2:  MOVS            R1, #0; int
5914B4:  MOVS            R3, #1; unsigned __int8
5914B6:  STR             R5, [SP,#0x60+var_58]; unsigned __int8
5914B8:  EOR.W           R6, R6, #1
5914BC:  STR             R6, [SP,#0x60+var_60]; unsigned __int8
5914BE:  BLX             j__ZN8CVehicle17DoTailLightEffectEiR7CMatrixhhjh; CVehicle::DoTailLightEffect(int,CMatrix &,uchar,uchar,uint,uchar)
5914C2:  LDRB.W          R1, [R4,#0x594]
5914C6:  MOVS            R2, #4
5914C8:  AND.W           R0, R2, R0,LSL#2
5914CC:  AND.W           R1, R1, #0xFB
5914D0:  CMP             R0, #0
5914D2:  ORR.W           R1, R1, R0
5914D6:  STRB.W          R1, [R4,#0x594]
5914DA:  BEQ             loc_5914EC
5914DC:  LDR             R2, [SP,#0x60+var_20]; CMatrix *
5914DE:  MOV             R0, R4; this
5914E0:  MOVS            R1, #1; int
5914E2:  MOVS            R3, #1; unsigned __int8
5914E4:  STR             R5, [SP,#0x60+var_58]; unsigned __int8
5914E6:  STR             R6, [SP,#0x60+var_60]; unsigned __int8
5914E8:  BLX             j__ZN8CVehicle17DoTailLightEffectEiR7CMatrixhhjh; CVehicle::DoTailLightEffect(int,CMatrix &,uchar,uchar,uint,uchar)
5914EC:  CMP.W           R11, #1
5914F0:  BNE.W           loc_5916FA
5914F4:  LDR             R2, [SP,#0x60+var_20]; CMatrix *
5914F6:  MOVS            R5, #0
5914F8:  MOV             R0, R4; this
5914FA:  MOVS            R1, #0; int
5914FC:  MOVS            R3, #0; unsigned __int8
5914FE:  STR             R5, [SP,#0x60+var_58]; unsigned __int8
591500:  EOR.W           R6, R8, #1
591504:  STR             R6, [SP,#0x60+var_60]; unsigned __int8
591506:  BLX             j__ZN8CVehicle17DoTailLightEffectEiR7CMatrixhhjh; CVehicle::DoTailLightEffect(int,CMatrix &,uchar,uchar,uint,uchar)
59150A:  LDRB.W          R1, [R4,#0x594]
59150E:  MOVS            R2, #8
591510:  AND.W           R0, R2, R0,LSL#3
591514:  AND.W           R1, R1, #0xF7
591518:  CMP             R0, #0
59151A:  ORR.W           R1, R1, R0
59151E:  STRB.W          R1, [R4,#0x594]
591522:  BEQ.W           loc_5916FA
591526:  LDR             R2, [SP,#0x60+var_20]; CMatrix *
591528:  MOV             R0, R4; this
59152A:  MOVS            R1, #1; int
59152C:  MOVS            R3, #0; unsigned __int8
59152E:  STR             R5, [SP,#0x60+var_58]; unsigned __int8
591530:  STR             R6, [SP,#0x60+var_60]; unsigned __int8
591532:  BLX             j__ZN8CVehicle17DoTailLightEffectEiR7CMatrixhhjh; CVehicle::DoTailLightEffect(int,CMatrix &,uchar,uchar,uint,uchar)
591536:  B               loc_5916FA
591538:  DCFS -0.01
59153C:  DCFS 0.0
591540:  DCFS 0.01
591544:  DCFS 0.69813
591548:  DCFS 100.0
59154C:  LDRH            R0, [R4,#0x26]
59154E:  CMP.W           R0, #0x214
591552:  BNE             loc_591564
591554:  LDR             R1, [SP,#0x60+var_20]; CMatrix *
591556:  MOV             R0, R4; this
591558:  BLX             j__ZN8CVehicle25DoHeadLightReflectionTwinER7CMatrix; CVehicle::DoHeadLightReflectionTwin(CMatrix &)
59155C:  B               loc_59156E
59155E:  LDR             R0, [SP,#0x60+var_38]
591560:  CMP             R0, #1
591562:  BNE             loc_591570
591564:  LDR             R1, [SP,#0x60+var_20]; CMatrix *
591566:  MOV             R0, R4; this
591568:  MOVS            R2, #1; unsigned __int8
59156A:  BLX             j__ZN8CVehicle27DoHeadLightReflectionSingleER7CMatrixh; CVehicle::DoHeadLightReflectionSingle(CMatrix &,uchar)
59156E:  LDR             R1, [SP,#0x60+var_24]
591570:  CMP.W           R8, #0
591574:  LDR.W           R8, [SP,#0x60+var_30]
591578:  BNE.W           loc_5916FA
59157C:  LDR             R0, [SP,#0x60+var_38]
59157E:  ORRS            R0, R5
591580:  BEQ             loc_5915F6
591582:  MOV             R6, R4
591584:  LDR             R5, [SP,#0x60+var_20]
591586:  LDR.W           R0, [R6,#0x14]!
59158A:  MOV.W           R11, #0
59158E:  SUB.W           R10, R6, #0x10
591592:  LDR.W           R12, [R5,#0x10]!
591596:  CMP             R0, #0
591598:  MOV             R3, R10
59159A:  IT NE
59159C:  ADDNE.W         R3, R0, #0x30 ; '0'
5915A0:  MOV             R9, R5
5915A2:  LDM             R3, {R1-R3}
5915A4:  LDR.W           LR, [R9,#8]!
5915A8:  STR             R5, [SP,#0x60+var_20]
5915AA:  VLDR            S0, [R6,#0x34]
5915AE:  VLDR            S2, [R6,#0x38]
5915B2:  VMUL.F32        S0, S0, S0
5915B6:  LDR.W           R0, [R5,#4]!
5915BA:  VMUL.F32        S2, S2, S2
5915BE:  VADD.F32        S0, S0, S2
5915C2:  VLDR            S2, =0.2025
5915C6:  VCMPE.F32       S0, S2
5915CA:  VMRS            APSR_nzcv, FPSCR
5915CE:  BGE             loc_59160E
5915D0:  STRD.W          R11, R11, [SP,#0x60+var_40]
5915D4:  MOV.W           R11, #0x3F800000
5915D8:  STRD.W          R12, R0, [SP,#0x60+var_60]
5915DC:  MOVS            R0, #0x41A00000
5915E2:  STR.W           LR, [SP,#0x60+var_58]
5915E6:  STRD.W          R0, R11, [SP,#0x60+var_54]
5915EA:  MOVS            R0, #1
5915EC:  STRD.W          R11, R11, [SP,#0x60+var_4C]
5915F0:  STR             R0, [SP,#0x60+var_44]
5915F2:  MOVS            R0, #1
5915F4:  B               loc_59163A
5915F6:  LDR             R0, [SP,#0x60+var_20]
5915F8:  ADD.W           R10, R4, #4
5915FC:  ADD.W           R6, R4, #0x14
591600:  ADD.W           R9, R0, #0x18
591604:  ADD.W           R5, R0, #0x14
591608:  ADDS            R0, #0x10
59160A:  STR             R0, [SP,#0x60+var_20]
59160C:  B               loc_591640
59160E:  STRD.W          R11, R11, [SP,#0x60+var_40]
591612:  STR             R3, [SP,#0x60+var_28]
591614:  MOV             R3, R9
591616:  STRD.W          R12, R0, [SP,#0x60+var_60]
59161A:  MOVS            R0, #0
59161C:  MOV.W           R9, #0x3F800000
591620:  MOVT            R0, #0x41A0
591624:  STR.W           LR, [SP,#0x60+var_58]
591628:  STRD.W          R0, R9, [SP,#0x60+var_54]
59162C:  MOVS            R0, #1
59162E:  STRD.W          R9, R9, [SP,#0x60+var_4C]
591632:  MOV             R9, R3
591634:  LDR             R3, [SP,#0x60+var_28]
591636:  STR.W           R11, [SP,#0x60+var_44]
59163A:  BLX             j__ZN12CPointLights8AddLightEh7CVectorS0_ffffhbP7CEntity; CPointLights::AddLight(uchar,CVector,CVector,float,float,float,float,uchar,bool,CEntity *)
59163E:  LDR             R1, [SP,#0x60+var_24]
591640:  LDR             R0, [R6]
591642:  CMP             R0, #0
591644:  IT NE
591646:  ADDNE.W         R10, R0, #0x30 ; '0'
59164A:  LDR             R0, [SP,#0x60+var_2C]
59164C:  ORR.W           R0, R0, R8
591650:  CMP             R0, #1
591652:  BNE             loc_5916FA
591654:  ADDW            R0, R4, #0x4A4
591658:  VLDR            S0, [R0]
59165C:  VCMPE.F32       S0, #0.0
591660:  VMRS            APSR_nzcv, FPSCR
591664:  BLE             loc_5916FA
591666:  LDRB            R0, [R1]
591668:  LSLS            R0, R0, #0x1A
59166A:  BMI             loc_5916FA
59166C:  LDR.W           R0, [R4,#0x464]
591670:  CMP             R0, #0
591672:  BEQ             loc_5916FA
591674:  VMOV.F32        S0, #4.0
591678:  LDR             R0, [SP,#0x60+var_20]
59167A:  VLDR            S2, [R5]
59167E:  MOVW            R6, #0xD70A
591682:  VLDR            S4, [R9]
591686:  MOVW            R12, #0xCCCD
59168A:  VLDR            S6, [R0]
59168E:  MOVS            R5, #0
591690:  VLDR            S12, [R10]
591694:  MOVS            R0, #0
591696:  VLDR            S14, [R10,#4]
59169A:  MOVT            R6, #0x3CA3
59169E:  VLDR            S1, [R10,#8]
5916A2:  MOVT            R12, #0x3DCC
5916A6:  VMUL.F32        S8, S4, S0
5916AA:  MOVT            R5, #0x4120
5916AE:  VMUL.F32        S10, S2, S0
5916B2:  STRD.W          R5, R12, [SP,#0x60+var_54]
5916B6:  VMUL.F32        S0, S6, S0
5916BA:  STRD.W          R6, R6, [SP,#0x60+var_4C]
5916BE:  VNEG.F32        S2, S2
5916C2:  STRD.W          R0, R0, [SP,#0x60+var_44]
5916C6:  VNEG.F32        S4, S4
5916CA:  MOVS            R0, #1
5916CC:  STR             R4, [SP,#0x60+var_3C]
5916CE:  VSUB.F32        S8, S1, S8
5916D2:  VSUB.F32        S10, S14, S10
5916D6:  VSUB.F32        S0, S12, S0
5916DA:  VMOV            R3, S8
5916DE:  VMOV            R2, S10
5916E2:  VMOV            R1, S0
5916E6:  VNEG.F32        S0, S6
5916EA:  VSTR            S0, [SP,#0x60+var_60]
5916EE:  VSTR            S2, [SP,#0x60+var_5C]
5916F2:  VSTR            S4, [SP,#0x60+var_58]
5916F6:  BLX             j__ZN12CPointLights8AddLightEh7CVectorS0_ffffhbP7CEntity; CPointLights::AddLight(uchar,CVector,CVector,float,float,float,float,uchar,bool,CEntity *)
5916FA:  ADD             SP, SP, #0x44 ; 'D'
5916FC:  POP.W           {R8-R11}
591700:  POP             {R4-R7,PC}
