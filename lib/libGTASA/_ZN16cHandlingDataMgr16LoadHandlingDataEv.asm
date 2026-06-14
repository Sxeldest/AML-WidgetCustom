; =========================================================
; Game Engine Function: _ZN16cHandlingDataMgr16LoadHandlingDataEv
; Address            : 0x4731D8 - 0x473F00
; =========================================================

4731D8:  PUSH            {R4-R7,LR}
4731DA:  ADD             R7, SP, #0xC
4731DC:  PUSH.W          {R8-R11}
4731E0:  SUB             SP, SP, #0x7C
4731E2:  STR             R0, [SP,#0x98+var_38]
4731E4:  LDR.W           R0, =(aData_3 - 0x4731EC); "DATA"
4731E8:  ADD             R0, PC; "DATA"
4731EA:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
4731EE:  ADR.W           R0, aHandlingCfg; "HANDLING.CFG"
4731F2:  ADR.W           R1, aRb_16; "rb"
4731F6:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
4731FA:  MOV             R8, R0
4731FC:  LDR.W           R0, =(byte_61CD7E - 0x473204)
473200:  ADD             R0, PC; byte_61CD7E ; this
473202:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
473206:  LDR.W           R0, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x473218)
47320A:  ADR.W           R4, aTheEnd; ";the end"
47320E:  ADD             R6, SP, #0x98+var_20
473210:  MOV.W           R11, #0
473214:  ADD             R0, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
473216:  MOV.W           R9, #0
47321A:  LDR             R0, [R0]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
47321C:  STR             R0, [SP,#0x98+var_8C]
47321E:  LDR.W           R0, =(VehicleNames_ptr - 0x473226)
473222:  ADD             R0, PC; VehicleNames_ptr
473224:  LDR             R0, [R0]; "LANDSTAL" ...
473226:  STR             R0, [SP,#0x98+var_48]
473228:  LDR.W           R0, =(VehicleNames_ptr - 0x473230)
47322C:  ADD             R0, PC; VehicleNames_ptr
47322E:  LDR             R5, [R0]; "LANDSTAL" ...
473230:  LDR.W           R0, =(VehicleNames_ptr - 0x473238)
473234:  ADD             R0, PC; VehicleNames_ptr
473236:  LDR.W           R10, [R0]; "LANDSTAL" ...
47323A:  STR             R0, [SP,#0x98+var_4C]
47323C:  STR             R0, [SP,#0x98+var_50]
47323E:  STR             R0, [SP,#0x98+var_54]
473240:  STR             R0, [SP,#0x98+var_58]
473242:  STR             R0, [SP,#0x98+var_5C]
473244:  STR             R0, [SP,#0x98+var_60]
473246:  STR             R0, [SP,#0x98+var_64]
473248:  STR             R0, [SP,#0x98+var_68]
47324A:  STR             R0, [SP,#0x98+var_6C]
47324C:  STR             R0, [SP,#0x98+var_70]
47324E:  STR             R0, [SP,#0x98+var_74]
473250:  STR             R0, [SP,#0x98+var_78]
473252:  STR             R0, [SP,#0x98+var_7C]
473254:  MOVS            R0, #0
473256:  STR             R0, [SP,#0x98+var_34]
473258:  MOVS            R0, #0
47325A:  STR             R0, [SP,#0x98+var_44]
47325C:  STR             R0, [SP,#0x98+var_80]
47325E:  STR             R0, [SP,#0x98+var_84]
473260:  STR             R0, [SP,#0x98+var_88]
473262:  B               loc_4735DC
473264:  LDR             R2, [SP,#0x98+var_80]
473266:  MOVS            R1, #0x94
473268:  LDR             R3, [SP,#0x98+var_8C]
47326A:  ADR.W           R4, aTheEnd; ";the end"
47326E:  MUL.W           R0, R2, R1
473272:  MLA.W           R1, R2, R1, R3
473276:  LDR             R2, [SP,#0x98+var_84]
473278:  ADDS            R2, #0x58 ; 'X'
47327A:  STRB            R2, [R3,R0]
47327C:  LDR             R0, [SP,#0x98+var_88]
47327E:  ADDS            R0, #0x58 ; 'X'
473280:  STRB            R0, [R1,#1]
473282:  STRD.W          R9, R11, [R1,#4]
473286:  LDR             R0, [SP,#0x98+var_6C]
473288:  STR             R0, [R1,#0xC]
47328A:  LDR             R0, [SP,#0x98+var_70]
47328C:  STR             R0, [R1,#0x10]
47328E:  LDR             R0, [SP,#0x98+var_74]
473290:  STR             R0, [R1,#0x14]
473292:  LDR             R0, [SP,#0x98+var_78]
473294:  STR             R0, [R1,#0x18]
473296:  LDR             R0, [SP,#0x98+var_7C]
473298:  STR             R0, [R1,#0x1C]
47329A:  LDR             R0, [SP,#0x98+var_5C]
47329C:  STR             R0, [R1,#0x20]
47329E:  LDR             R0, [SP,#0x98+var_60]
4732A0:  STR             R0, [R1,#0x24]
4732A2:  LDR             R0, [SP,#0x98+var_64]
4732A4:  STR             R0, [R1,#0x28]
4732A6:  LDR             R0, [SP,#0x98+var_68]
4732A8:  STR             R0, [R1,#0x2C]
4732AA:  LDR             R0, [SP,#0x98+var_4C]
4732AC:  STR             R0, [R1,#0x30]
4732AE:  LDR             R0, [SP,#0x98+var_50]
4732B0:  STR             R0, [R1,#0x34]
4732B2:  LDR             R0, [SP,#0x98+var_54]
4732B4:  STR             R0, [R1,#0x38]
4732B6:  LDR             R0, [SP,#0x98+var_58]
4732B8:  STR             R0, [R1,#0x3C]
4732BA:  LDR.W           R11, [SP,#0x98+var_40]
4732BE:  LDR.W           R9, [SP,#0x98+var_3C]
4732C2:  B               loc_4735DC
4732C4:  UXTB            R0, R4
4732C6:  CMP             R0, #0x23 ; '#'; switch 36 cases
4732C8:  BHI.W           def_4732CC; jumptable 004732CC default case
4732CC:  TBH.W           [PC,R0,LSL#1]; switch jump
4732D0:  DCW 0x24; jump table for switch statement
4732D2:  DCW 0x37
4732D4:  DCW 0x41
4732D6:  DCW 0x4B
4732D8:  DCW 0x55
4732DA:  DCW 0x5F
4732DC:  DCW 0x69
4732DE:  DCW 0x73
4732E0:  DCW 0x79
4732E2:  DCW 0x83
4732E4:  DCW 0x8D
4732E6:  DCW 0x97
4732E8:  DCW 0x9D
4732EA:  DCW 0xA7
4732EC:  DCW 0xB5
4732EE:  DCW 0xBF
4732F0:  DCW 0xC3
4732F2:  DCW 0xC7
4732F4:  DCW 0xD1
4732F6:  DCW 0xDB
4732F8:  DCW 0xE4
4732FA:  DCW 0xEE
4732FC:  DCW 0xF8
4732FE:  DCW 0x102
473300:  DCW 0x10C
473302:  DCW 0x116
473304:  DCW 0x120
473306:  DCW 0x12A
473308:  DCW 0x134
47330A:  DCW 0x13E
47330C:  DCW 0x148
47330E:  DCW 0x14E
473310:  DCW 0x156
473312:  DCW 0x162
473314:  DCW 0x168
473316:  DCW 0x16E
473318:  LDR.W           R0, =(VehicleNames_ptr - 0x473326); jumptable 004732CC case 0
47331C:  MOVS            R1, #0xD2
47331E:  STR             R1, [SP,#0x98+var_98]; int
473320:  MOV             R1, R3; char *
473322:  ADD             R0, PC; VehicleNames_ptr
473324:  LDR             R5, [SP,#0x98+var_38]
473326:  MOVS            R3, #0xE; int
473328:  LDR             R2, [R0]; "LANDSTAL" ...
47332A:  MOV             R0, R5; this
47332C:  BLX             j__ZN16cHandlingDataMgr13FindExactWordEPcS0_ii; cHandlingDataMgr::FindExactWord(char *,char *,int,int)
473330:  RSB.W           R1, R0, R0,LSL#3
473334:  ADD.W           R11, R5, R1,LSL#5
473338:  STR.W           R0, [R11,#0x14]!
47333C:  B               def_4732CC; jumptable 004732CC default case
47333E:  MOV             R0, R3; jumptable 004732CC case 1
473340:  BLX             atof
473344:  VMOV            D16, R0, R1
473348:  VCVT.F32.F64    S0, D16
47334C:  VSTR            S0, [R11,#4]
473350:  B               def_4732CC; jumptable 004732CC default case
473352:  MOV             R0, R3; jumptable 004732CC case 2
473354:  BLX             atof
473358:  VMOV            D16, R0, R1
47335C:  VCVT.F32.F64    S0, D16
473360:  VSTR            S0, [R11,#0xC]
473364:  B               def_4732CC; jumptable 004732CC default case
473366:  MOV             R0, R3; jumptable 004732CC case 3
473368:  BLX             atof
47336C:  VMOV            D16, R0, R1
473370:  VCVT.F32.F64    S0, D16
473374:  VSTR            S0, [R11,#0x10]
473378:  B               def_4732CC; jumptable 004732CC default case
47337A:  MOV             R0, R3; jumptable 004732CC case 4
47337C:  BLX             atof
473380:  VMOV            D16, R0, R1
473384:  VCVT.F32.F64    S0, D16
473388:  VSTR            S0, [R11,#0x14]
47338C:  B               def_4732CC; jumptable 004732CC default case
47338E:  MOV             R0, R3; jumptable 004732CC case 5
473390:  BLX             atof
473394:  VMOV            D16, R0, R1
473398:  VCVT.F32.F64    S0, D16
47339C:  VSTR            S0, [R11,#0x18]
4733A0:  B               def_4732CC; jumptable 004732CC default case
4733A2:  MOV             R0, R3; jumptable 004732CC case 6
4733A4:  BLX             atof
4733A8:  VMOV            D16, R0, R1
4733AC:  VCVT.F32.F64    S0, D16
4733B0:  VSTR            S0, [R11,#0x1C]
4733B4:  B               def_4732CC; jumptable 004732CC default case
4733B6:  MOV             R0, R3; jumptable 004732CC case 7
4733B8:  BLX             atoi
4733BC:  STRB.W          R0, [R11,#0x20]
4733C0:  B               def_4732CC; jumptable 004732CC default case
4733C2:  MOV             R0, R3; jumptable 004732CC case 8
4733C4:  BLX             atof
4733C8:  VMOV            D16, R0, R1
4733CC:  VCVT.F32.F64    S0, D16
4733D0:  VSTR            S0, [R11,#0x28]
4733D4:  B               def_4732CC; jumptable 004732CC default case
4733D6:  MOV             R0, R3; jumptable 004732CC case 9
4733D8:  BLX             atof
4733DC:  VMOV            D16, R0, R1
4733E0:  VCVT.F32.F64    S0, D16
4733E4:  VSTR            S0, [R11,#0xA4]
4733E8:  B               def_4732CC; jumptable 004732CC default case
4733EA:  MOV             R0, R3; jumptable 004732CC case 10
4733EC:  BLX             atof
4733F0:  VMOV            D16, R0, R1
4733F4:  VCVT.F32.F64    S0, D16
4733F8:  VSTR            S0, [R11,#0xA8]
4733FC:  B               def_4732CC; jumptable 004732CC default case
4733FE:  MOV             R0, R3; jumptable 004732CC case 11
473400:  BLX             atoi
473404:  STRB.W          R0, [R11,#0x76]
473408:  B               def_4732CC; jumptable 004732CC default case
47340A:  MOV             R0, R3; jumptable 004732CC case 12
47340C:  BLX             atof
473410:  VMOV            D16, R0, R1
473414:  VCVT.F32.F64    S0, D16
473418:  VSTR            S0, [R11,#0x84]
47341C:  B               def_4732CC; jumptable 004732CC default case
47341E:  MOV             R0, R3; jumptable 004732CC case 13
473420:  BLX             atof
473424:  VLDR            D16, =0.4
473428:  VMOV            D17, R0, R1
47342C:  VMUL.F64        D16, D17, D16
473430:  VCVT.F32.F64    S0, D16
473434:  VSTR            S0, [R11,#0x7C]
473438:  B               def_4732CC; jumptable 004732CC default case
47343A:  MOV             R0, R3; jumptable 004732CC case 14
47343C:  BLX             atof
473440:  VMOV            D16, R0, R1
473444:  VCVT.F32.F64    S0, D16
473448:  VSTR            S0, [R11,#0x80]
47344C:  B               def_4732CC; jumptable 004732CC default case
47344E:  LDRB            R0, [R3]; jumptable 004732CC case 15
473450:  STRB.W          R0, [R11,#0x74]
473454:  B               def_4732CC; jumptable 004732CC default case
473456:  LDRB            R0, [R3]; jumptable 004732CC case 16
473458:  STRB.W          R0, [R11,#0x75]
47345C:  B               def_4732CC; jumptable 004732CC default case
47345E:  MOV             R0, R3; jumptable 004732CC case 17
473460:  BLX             atof
473464:  VMOV            D16, R0, R1
473468:  VCVT.F32.F64    S0, D16
47346C:  VSTR            S0, [R11,#0x94]
473470:  B               def_4732CC; jumptable 004732CC default case
473472:  MOV             R0, R3; jumptable 004732CC case 18
473474:  BLX             atof
473478:  VMOV            D16, R0, R1
47347C:  VCVT.F32.F64    S0, D16
473480:  VSTR            S0, [R11,#0x98]
473484:  B               def_4732CC; jumptable 004732CC default case
473486:  MOV             R0, R3; jumptable 004732CC case 19
473488:  BLX             atoi
47348C:  CMP             R0, #0
47348E:  IT NE
473490:  MOVNE           R0, #1
473492:  STRB.W          R0, [R11,#0x9C]
473496:  B               def_4732CC; jumptable 004732CC default case
473498:  MOV             R0, R3; jumptable 004732CC case 20
47349A:  BLX             atof
47349E:  VMOV            D16, R0, R1
4734A2:  VCVT.F32.F64    S0, D16
4734A6:  VSTR            S0, [R11,#0xA0]
4734AA:  B               def_4732CC; jumptable 004732CC default case
4734AC:  MOV             R0, R3; jumptable 004732CC case 21
4734AE:  BLX             atof
4734B2:  VMOV            D16, R0, R1
4734B6:  VCVT.F32.F64    S0, D16
4734BA:  VSTR            S0, [R11,#0xAC]
4734BE:  B               def_4732CC; jumptable 004732CC default case
4734C0:  MOV             R0, R3; jumptable 004732CC case 22
4734C2:  BLX             atof
4734C6:  VMOV            D16, R0, R1
4734CA:  VCVT.F32.F64    S0, D16
4734CE:  VSTR            S0, [R11,#0xB0]
4734D2:  B               def_4732CC; jumptable 004732CC default case
4734D4:  MOV             R0, R3; jumptable 004732CC case 23
4734D6:  BLX             atof
4734DA:  VMOV            D16, R0, R1
4734DE:  VCVT.F32.F64    S0, D16
4734E2:  VSTR            S0, [R11,#0xB4]
4734E6:  B               def_4732CC; jumptable 004732CC default case
4734E8:  MOV             R0, R3; jumptable 004732CC case 24
4734EA:  BLX             atof
4734EE:  VMOV            D16, R0, R1
4734F2:  VCVT.F32.F64    S0, D16
4734F6:  VSTR            S0, [R11,#0xB8]
4734FA:  B               def_4732CC; jumptable 004732CC default case
4734FC:  MOV             R0, R3; jumptable 004732CC case 25
4734FE:  BLX             atof
473502:  VMOV            D16, R0, R1
473506:  VCVT.F32.F64    S0, D16
47350A:  VSTR            S0, [R11,#0xBC]
47350E:  B               def_4732CC; jumptable 004732CC default case
473510:  MOV             R0, R3; jumptable 004732CC case 26
473512:  BLX             atof
473516:  VMOV            D16, R0, R1
47351A:  VCVT.F32.F64    S0, D16
47351E:  VSTR            S0, [R11,#0xC0]
473522:  B               def_4732CC; jumptable 004732CC default case
473524:  MOV             R0, R3; jumptable 004732CC case 27
473526:  BLX             atof
47352A:  VMOV            D16, R0, R1
47352E:  VCVT.F32.F64    S0, D16
473532:  VSTR            S0, [R11,#0xC4]
473536:  B               def_4732CC; jumptable 004732CC default case
473538:  MOV             R0, R3; jumptable 004732CC case 28
47353A:  BLX             atof
47353E:  VMOV            D16, R0, R1
473542:  VCVT.F32.F64    S0, D16
473546:  VSTR            S0, [R11,#0xD4]
47354A:  B               def_4732CC; jumptable 004732CC default case
47354C:  MOV             R0, R3; jumptable 004732CC case 29
47354E:  BLX             atof
473552:  VMOV            D16, R0, R1
473556:  VCVT.F32.F64    S0, D16
47355A:  VSTR            S0, [R11,#0xC8]
47355E:  B               def_4732CC; jumptable 004732CC default case
473560:  MOV             R0, R3; jumptable 004732CC case 30
473562:  BLX             atoi
473566:  STR.W           R0, [R11,#0xD8]
47356A:  B               def_4732CC; jumptable 004732CC default case
47356C:  ADD.W           R2, R11, #0xCC; jumptable 004732CC case 31
473570:  ADR.W           R1, dword_473F38; format
473574:  MOV             R0, R3; s
473576:  BLX             sscanf
47357A:  B               def_4732CC; jumptable 004732CC default case
47357C:  ADD.W           R2, R11, #0xD0; jumptable 004732CC case 32
473580:  ADR.W           R1, dword_473F38; format
473584:  MOV             R0, R3; s
473586:  BLX             sscanf
47358A:  LDR.W           R0, [R11,#0xD0]
47358E:  STR.W           R0, [R11,#0x78]
473592:  B               def_4732CC; jumptable 004732CC default case
473594:  MOV             R0, R3; jumptable 004732CC case 33
473596:  BLX             atoi
47359A:  STRB.W          R0, [R11,#0xDC]
47359E:  B               def_4732CC; jumptable 004732CC default case
4735A0:  MOV             R0, R3; jumptable 004732CC case 34
4735A2:  BLX             atoi
4735A6:  STRB.W          R0, [R11,#0xDD]
4735AA:  B               def_4732CC; jumptable 004732CC default case
4735AC:  MOV             R0, R3; jumptable 004732CC case 35
4735AE:  BLX             atoi
4735B2:  STRB.W          R0, [R11,#0xDE]
4735B6:  MOVS            R0, #0; jumptable 004732CC default case
4735B8:  MOV             R1, R6; char *
4735BA:  BLX             strtok
4735BE:  ADDS            R4, #1
4735C0:  MOV             R3, R0
4735C2:  CMP             R3, #0
4735C4:  BNE.W           loc_4732C4
4735C8:  LDR             R0, [SP,#0x98+var_38]
4735CA:  MOV             R1, R11
4735CC:  BLX             j__ZN16cHandlingDataMgr22ConvertDataToGameUnitsEP13tHandlingData; cHandlingDataMgr::ConvertDataToGameUnits(tHandlingData *)
4735D0:  MOV             R5, R10
4735D2:  ADD             R6, SP, #0x98+var_20
4735D4:  ADR.W           R4, aTheEnd; ";the end"
4735D8:  LDR.W           R10, [SP,#0x98+var_90]
4735DC:  STR.W           R11, [SP,#0x98+var_40]
4735E0:  B               loc_4735EE
4735E2:  LDR             R0, [SP,#0x98+var_38]
4735E4:  MOV             R1, R9
4735E6:  NOP
4735E8:  NOP
4735EA:  ADR.W           R4, aTheEnd; ";the end"
4735EE:  STR.W           R9, [SP,#0x98+var_3C]
4735F2:  B               loc_47378A
4735F4:  MOV.W           R0, #0xFFFFFFFF
4735F8:  UXTAB.W         R0, R0, R10
4735FC:  CMP             R0, #0xE; switch 15 cases
4735FE:  BHI.W           def_473602; jumptable 00473602 default case
473602:  TBB.W           [PC,R0]; switch jump
473606:  DCB 8; jump table for switch statement
473607:  DCB 0x1B
473608:  DCB 0x25
473609:  DCB 0x2F
47360A:  DCB 0x39
47360B:  DCB 0x43
47360C:  DCB 0x4D
47360D:  DCB 0x57
47360E:  DCB 0x61
47360F:  DCB 0x6B
473610:  DCB 0x75
473611:  DCB 0x7F
473612:  DCB 0x89
473613:  DCB 0x93
473614:  DCB 0x9D
473615:  ALIGN 2
473616:  MOVS            R0, #0xD2; jumptable 00473602 case 0
473618:  MOVS            R3, #0xE; int
47361A:  STR             R0, [SP,#0x98+var_98]; int
47361C:  LDR             R6, [SP,#0x98+var_38]
47361E:  LDR             R2, [SP,#0x98+var_90]; char *
473620:  MOV             R0, R6; this
473622:  BLX             j__ZN16cHandlingDataMgr13FindExactWordEPcS0_ii; cHandlingDataMgr::FindExactWord(char *,char *,int,int)
473626:  MOV             R9, R4
473628:  MOV             R4, R0
47362A:  UXTB            R1, R4; unsigned __int8
47362C:  MOV             R0, R6; this
47362E:  BLX             j__ZN16cHandlingDataMgr14GetBoatPointerEh; cHandlingDataMgr::GetBoatPointer(uchar)
473632:  MOV             R6, R0
473634:  ADD             R5, SP, #0x98+var_28
473636:  STR             R4, [R6]
473638:  MOV             R4, R9
47363A:  B               def_473602; jumptable 00473602 default case
47363C:  MOV             R0, R1; jumptable 00473602 case 1
47363E:  BLX             atof
473642:  VMOV            D16, R0, R1
473646:  VCVT.F32.F64    S0, D16
47364A:  VSTR            S0, [R6,#4]
47364E:  B               def_473602; jumptable 00473602 default case
473650:  MOV             R0, R1; jumptable 00473602 case 2
473652:  BLX             atof
473656:  VMOV            D16, R0, R1
47365A:  VCVT.F32.F64    S0, D16
47365E:  VSTR            S0, [R6,#8]
473662:  B               def_473602; jumptable 00473602 default case
473664:  MOV             R0, R1; jumptable 00473602 case 3
473666:  BLX             atof
47366A:  VMOV            D16, R0, R1
47366E:  VCVT.F32.F64    S0, D16
473672:  VSTR            S0, [R6,#0xC]
473676:  B               def_473602; jumptable 00473602 default case
473678:  MOV             R0, R1; jumptable 00473602 case 4
47367A:  BLX             atof
47367E:  VMOV            D16, R0, R1
473682:  VCVT.F32.F64    S0, D16
473686:  VSTR            S0, [R6,#0x10]
47368A:  B               def_473602; jumptable 00473602 default case
47368C:  MOV             R0, R1; jumptable 00473602 case 5
47368E:  BLX             atof
473692:  VMOV            D16, R0, R1
473696:  VCVT.F32.F64    S0, D16
47369A:  VSTR            S0, [R6,#0x14]
47369E:  B               def_473602; jumptable 00473602 default case
4736A0:  MOV             R0, R1; jumptable 00473602 case 6
4736A2:  BLX             atof
4736A6:  VMOV            D16, R0, R1
4736AA:  VCVT.F32.F64    S0, D16
4736AE:  VSTR            S0, [R6,#0x18]
4736B2:  B               def_473602; jumptable 00473602 default case
4736B4:  MOV             R0, R1; jumptable 00473602 case 7
4736B6:  BLX             atof
4736BA:  VMOV            D16, R0, R1
4736BE:  VCVT.F32.F64    S0, D16
4736C2:  VSTR            S0, [R6,#0x1C]
4736C6:  B               def_473602; jumptable 00473602 default case
4736C8:  MOV             R0, R1; jumptable 00473602 case 8
4736CA:  BLX             atof
4736CE:  VMOV            D16, R0, R1
4736D2:  VCVT.F32.F64    S0, D16
4736D6:  VSTR            S0, [R6,#0x24]
4736DA:  B               def_473602; jumptable 00473602 default case
4736DC:  MOV             R0, R1; jumptable 00473602 case 9
4736DE:  BLX             atof
4736E2:  VMOV            D16, R0, R1
4736E6:  VCVT.F32.F64    S0, D16
4736EA:  VSTR            S0, [R6,#0x28]
4736EE:  B               def_473602; jumptable 00473602 default case
4736F0:  MOV             R0, R1; jumptable 00473602 case 10
4736F2:  BLX             atof
4736F6:  VMOV            D16, R0, R1
4736FA:  VCVT.F32.F64    S0, D16
4736FE:  VSTR            S0, [R6,#0x2C]
473702:  B               def_473602; jumptable 00473602 default case
473704:  MOV             R0, R1; jumptable 00473602 case 11
473706:  BLX             atof
47370A:  VMOV            D16, R0, R1
47370E:  VCVT.F32.F64    S0, D16
473712:  VSTR            S0, [R6,#0x30]
473716:  B               def_473602; jumptable 00473602 default case
473718:  MOV             R0, R1; jumptable 00473602 case 12
47371A:  BLX             atof
47371E:  VMOV            D16, R0, R1
473722:  VCVT.F32.F64    S0, D16
473726:  VSTR            S0, [R6,#0x34]
47372A:  B               def_473602; jumptable 00473602 default case
47372C:  MOV             R0, R1; jumptable 00473602 case 13
47372E:  BLX             atof
473732:  VMOV            D16, R0, R1
473736:  VCVT.F32.F64    S0, D16
47373A:  VSTR            S0, [R6,#0x38]
47373E:  B               def_473602; jumptable 00473602 default case
473740:  MOV             R0, R1; jumptable 00473602 case 14
473742:  BLX             atof
473746:  VMOV            D16, R0, R1
47374A:  VCVT.F32.F64    S0, D16
47374E:  VSTR            S0, [R6,#0x20]
473752:  MOVS            R0, #0; jumptable 00473602 default case
473754:  MOV             R1, R5; char *
473756:  BLX             strtok
47375A:  ADD.W           R10, R10, #1
47375E:  MOV             R1, R0; char *
473760:  CMP             R1, #0
473762:  BNE.W           loc_4735F4
473766:  STR             R6, [SP,#0x98+var_44]
473768:  ADD             R6, SP, #0x98+var_20
47376A:  LDR.W           R10, [SP,#0x98+var_90]
47376E:  MOV             R5, R11
473770:  B               loc_47378A
473772:  ALIGN 8
473778:  DCFD 0.4
473780:  ADR.W           R4, aTheEnd; ";the end"
473784:  LDRD.W          R5, R10, [SP,#0x98+var_94]
473788:  ADD             R6, SP, #0x98+var_20
47378A:  MOV             R0, R8; this
47378C:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
473790:  MOV             R9, R0
473792:  CMP.W           R9, #0
473796:  BEQ.W           loc_473EF0
47379A:  MOV             R0, R9; char *
47379C:  MOV             R1, R4; char *
47379E:  BLX             strcmp
4737A2:  CMP             R0, #0
4737A4:  BEQ.W           loc_473EF0
4737A8:  LDRB.W          R1, [R9]; unsigned int
4737AC:  SUB.W           R0, R1, #0x21 ; '!'; switch 27 cases
4737B0:  CMP             R0, #0x1A
4737B2:  BHI.W           def_4737B6; jumptable 004737B6 default case
4737B6:  TBH.W           [PC,R0,LSL#1]; switch jump
4737BA:  DCW 0x172; jump table for switch statement
4737BC:  DCW 0x2F
4737BE:  DCW 0x2F
4737C0:  DCW 0x42
4737C2:  DCW 0x1C
4737C4:  DCW 0x2F
4737C6:  DCW 0x2F
4737C8:  DCW 0x2F
4737CA:  DCW 0x2F
4737CC:  DCW 0x2F
4737CE:  DCW 0x2F
4737D0:  DCW 0x2F
4737D2:  DCW 0x2F
4737D4:  DCW 0x2F
4737D6:  DCW 0x2F
4737D8:  DCW 0x2F
4737DA:  DCW 0x2F
4737DC:  DCW 0x2F
4737DE:  DCW 0x2F
4737E0:  DCW 0x2F
4737E2:  DCW 0x2F
4737E4:  DCW 0x2F
4737E6:  DCW 0x2F
4737E8:  DCW 0x2F
4737EA:  DCW 0x2F
4737EC:  DCW 0x2F
4737EE:  DCW 0x1B
4737F0:  B               loc_47378A; jumptable 004737B6 case 59
4737F2:  MOV             R11, R5; jumptable 004737B6 case 37
4737F4:  ADD             R5, SP, #0x98+var_28
4737F6:  STR.W           R10, [SP,#0x98+var_90]
4737FA:  MOV.W           R10, #0
4737FE:  MOV.W           R0, #0x920
473802:  STRB.W          R10, [SP,#0x98+var_26]
473806:  STRH.W          R0, [SP,#0x98+var_28]
47380A:  MOV             R0, R9; char *
47380C:  MOV             R1, R5; char *
47380E:  BLX             strtok
473812:  LDR             R6, [SP,#0x98+var_44]
473814:  MOV             R1, R0
473816:  B               loc_4735F4
473818:  ADD             R6, SP, #0x98+var_30; jumptable 004737B6 cases 34,35,38-58
47381A:  MOVS            R4, #0
47381C:  MOV.W           R0, #0x920
473820:  STR.W           R10, [SP,#0x98+var_90]
473824:  STRB.W          R4, [SP,#0x98+var_2E]
473828:  MOV             R1, R6; char *
47382A:  STRH.W          R0, [SP,#0x98+var_30]
47382E:  MOV             R0, R9; char *
473830:  MOV             R10, R5
473832:  BLX             strtok
473836:  LDRD.W          R11, R9, [SP,#0x98+var_40]
47383A:  MOV             R3, R0
47383C:  B               loc_4732C4
47383E:  B               loc_473780; jumptable 004737B6 case 36
473840:  MOVS            R4, #0
473842:  MOV.W           R0, #0x920
473846:  STRD.W          R5, R10, [SP,#0x98+var_94]
47384A:  STRB.W          R4, [SP,#0x98+var_22]
47384E:  MOV             R1, R6; char *
473850:  STRH.W          R0, [SP,#0x98+var_24]
473854:  MOV             R0, R9; char *
473856:  BLX             strtok
47385A:  MOV             R1, R0; char *
47385C:  MOV.W           R0, #0xFFFFFFFF
473860:  UXTAB.W         R0, R0, R4
473864:  CMP             R0, #0x15; switch 22 cases
473866:  BHI.W           def_47386A; jumptable 0047386A default case
47386A:  TBH.W           [PC,R0,LSL#1]; switch jump
47386E:  DCW 0x16; jump table for switch statement
473870:  DCW 0x28
473872:  DCW 0x33
473874:  DCW 0x3E
473876:  DCW 0x49
473878:  DCW 0x54
47387A:  DCW 0x5F
47387C:  DCW 0x6A
47387E:  DCW 0x75
473880:  DCW 0x80
473882:  DCW 0x8B
473884:  DCW 0x96
473886:  DCW 0xA1
473888:  DCW 0xAC
47388A:  DCW 0xB7
47388C:  DCW 0xC2
47388E:  DCW 0xCD
473890:  DCW 0xD8
473892:  DCW 0xE3
473894:  DCW 0xEE
473896:  DCW 0xF9
473898:  DCW 0x104
47389A:  MOVS            R0, #0xD2; jumptable 0047386A case 0
47389C:  MOVS            R3, #0xE; int
47389E:  STR             R0, [SP,#0x98+var_98]; int
4738A0:  LDR.W           R10, [SP,#0x98+var_38]
4738A4:  LDR             R2, [SP,#0x98+var_94]; char *
4738A6:  MOV             R0, R10; this
4738A8:  BLX             j__ZN16cHandlingDataMgr13FindExactWordEPcS0_ii; cHandlingDataMgr::FindExactWord(char *,char *,int,int)
4738AC:  MOV             R9, R0
4738AE:  B.W             sub_3F6634
4738B2:  BLX             j__ZN16cHandlingDataMgr16GetFlyingPointerEh; cHandlingDataMgr::GetFlyingPointer(uchar)
4738B6:  STR.W           R9, [R0]
4738BA:  STR             R0, [SP,#0x98+var_34]
4738BC:  B               def_47386A; jumptable 0047386A default case
4738BE:  MOV             R0, R1; jumptable 0047386A case 1
4738C0:  BLX             atof
4738C4:  VMOV            D16, R0, R1
4738C8:  LDR             R0, [SP,#0x98+var_34]
4738CA:  VCVT.F32.F64    S0, D16
4738CE:  VSTR            S0, [R0,#4]
4738D2:  B               def_47386A; jumptable 0047386A default case
4738D4:  MOV             R0, R1; jumptable 0047386A case 2
4738D6:  BLX             atof
4738DA:  VMOV            D16, R0, R1
4738DE:  LDR             R0, [SP,#0x98+var_34]
4738E0:  VCVT.F32.F64    S0, D16
4738E4:  VSTR            S0, [R0,#8]
4738E8:  B               def_47386A; jumptable 0047386A default case
4738EA:  MOV             R0, R1; jumptable 0047386A case 3
4738EC:  BLX             atof
4738F0:  VMOV            D16, R0, R1
4738F4:  LDR             R0, [SP,#0x98+var_34]
4738F6:  VCVT.F32.F64    S0, D16
4738FA:  VSTR            S0, [R0,#0xC]
4738FE:  B               def_47386A; jumptable 0047386A default case
473900:  MOV             R0, R1; jumptable 0047386A case 4
473902:  BLX             atof
473906:  VMOV            D16, R0, R1
47390A:  LDR             R0, [SP,#0x98+var_34]
47390C:  VCVT.F32.F64    S0, D16
473910:  VSTR            S0, [R0,#0x10]
473914:  B               def_47386A; jumptable 0047386A default case
473916:  MOV             R0, R1; jumptable 0047386A case 5
473918:  BLX             atof
47391C:  VMOV            D16, R0, R1
473920:  LDR             R0, [SP,#0x98+var_34]
473922:  VCVT.F32.F64    S0, D16
473926:  VSTR            S0, [R0,#0x14]
47392A:  B               def_47386A; jumptable 0047386A default case
47392C:  MOV             R0, R1; jumptable 0047386A case 6
47392E:  BLX             atof
473932:  VMOV            D16, R0, R1
473936:  LDR             R0, [SP,#0x98+var_34]
473938:  VCVT.F32.F64    S0, D16
47393C:  VSTR            S0, [R0,#0x18]
473940:  B               def_47386A; jumptable 0047386A default case
473942:  MOV             R0, R1; jumptable 0047386A case 7
473944:  BLX             atof
473948:  VMOV            D16, R0, R1
47394C:  LDR             R0, [SP,#0x98+var_34]
47394E:  VCVT.F32.F64    S0, D16
473952:  VSTR            S0, [R0,#0x1C]
473956:  B               def_47386A; jumptable 0047386A default case
473958:  MOV             R0, R1; jumptable 0047386A case 8
47395A:  BLX             atof
47395E:  VMOV            D16, R0, R1
473962:  LDR             R0, [SP,#0x98+var_34]
473964:  VCVT.F32.F64    S0, D16
473968:  VSTR            S0, [R0,#0x20]
47396C:  B               def_47386A; jumptable 0047386A default case
47396E:  MOV             R0, R1; jumptable 0047386A case 9
473970:  BLX             atof
473974:  VMOV            D16, R0, R1
473978:  LDR             R0, [SP,#0x98+var_34]
47397A:  VCVT.F32.F64    S0, D16
47397E:  VSTR            S0, [R0,#0x24]
473982:  B               def_47386A; jumptable 0047386A default case
473984:  MOV             R0, R1; jumptable 0047386A case 10
473986:  BLX             atof
47398A:  VMOV            D16, R0, R1
47398E:  LDR             R0, [SP,#0x98+var_34]
473990:  VCVT.F32.F64    S0, D16
473994:  VSTR            S0, [R0,#0x28]
473998:  B               def_47386A; jumptable 0047386A default case
47399A:  MOV             R0, R1; jumptable 0047386A case 11
47399C:  BLX             atof
4739A0:  VMOV            D16, R0, R1
4739A4:  LDR             R0, [SP,#0x98+var_34]
4739A6:  VCVT.F32.F64    S0, D16
4739AA:  VSTR            S0, [R0,#0x2C]
4739AE:  B               def_47386A; jumptable 0047386A default case
4739B0:  MOV             R0, R1; jumptable 0047386A case 12
4739B2:  BLX             atof
4739B6:  VMOV            D16, R0, R1
4739BA:  LDR             R0, [SP,#0x98+var_34]
4739BC:  VCVT.F32.F64    S0, D16
4739C0:  VSTR            S0, [R0,#0x30]
4739C4:  B               def_47386A; jumptable 0047386A default case
4739C6:  MOV             R0, R1; jumptable 0047386A case 13
4739C8:  BLX             atof
4739CC:  VMOV            D16, R0, R1
4739D0:  LDR             R0, [SP,#0x98+var_34]
4739D2:  VCVT.F32.F64    S0, D16
4739D6:  VSTR            S0, [R0,#0x34]
4739DA:  B               def_47386A; jumptable 0047386A default case
4739DC:  MOV             R0, R1; jumptable 0047386A case 14
4739DE:  BLX             atof
4739E2:  VMOV            D16, R0, R1
4739E6:  LDR             R0, [SP,#0x98+var_34]
4739E8:  VCVT.F32.F64    S0, D16
4739EC:  VSTR            S0, [R0,#0x38]
4739F0:  B               def_47386A; jumptable 0047386A default case
4739F2:  MOV             R0, R1; jumptable 0047386A case 15
4739F4:  BLX             atof
4739F8:  VMOV            D16, R0, R1
4739FC:  LDR             R0, [SP,#0x98+var_34]
4739FE:  VCVT.F32.F64    S0, D16
473A02:  VSTR            S0, [R0,#0x3C]
473A06:  B               def_47386A; jumptable 0047386A default case
473A08:  MOV             R0, R1; jumptable 0047386A case 16
473A0A:  BLX             atof
473A0E:  VMOV            D16, R0, R1
473A12:  LDR             R0, [SP,#0x98+var_34]
473A14:  VCVT.F32.F64    S0, D16
473A18:  VSTR            S0, [R0,#0x40]
473A1C:  B               def_47386A; jumptable 0047386A default case
473A1E:  MOV             R0, R1; jumptable 0047386A case 17
473A20:  BLX             atof
473A24:  VMOV            D16, R0, R1
473A28:  LDR             R0, [SP,#0x98+var_34]
473A2A:  VCVT.F32.F64    S0, D16
473A2E:  VSTR            S0, [R0,#0x44]
473A32:  B               def_47386A; jumptable 0047386A default case
473A34:  MOV             R0, R1; jumptable 0047386A case 18
473A36:  BLX             atof
473A3A:  VMOV            D16, R0, R1
473A3E:  LDR             R0, [SP,#0x98+var_34]
473A40:  VCVT.F32.F64    S0, D16
473A44:  VSTR            S0, [R0,#0x48]
473A48:  B               def_47386A; jumptable 0047386A default case
473A4A:  MOV             R0, R1; jumptable 0047386A case 19
473A4C:  BLX             atof
473A50:  VMOV            D16, R0, R1
473A54:  LDR             R0, [SP,#0x98+var_34]
473A56:  VCVT.F32.F64    S0, D16
473A5A:  VSTR            S0, [R0,#0x4C]
473A5E:  B               def_47386A; jumptable 0047386A default case
473A60:  MOV             R0, R1; jumptable 0047386A case 20
473A62:  BLX             atof
473A66:  VMOV            D16, R0, R1
473A6A:  LDR             R0, [SP,#0x98+var_34]
473A6C:  VCVT.F32.F64    S0, D16
473A70:  VSTR            S0, [R0,#0x50]
473A74:  B               def_47386A; jumptable 0047386A default case
473A76:  MOV             R0, R1; jumptable 0047386A case 21
473A78:  BLX             atof
473A7C:  VMOV            D16, R0, R1
473A80:  LDR             R0, [SP,#0x98+var_34]
473A82:  VCVT.F32.F64    S0, D16
473A86:  VSTR            S0, [R0,#0x54]
473A8A:  MOVS            R0, #0; jumptable 0047386A default case
473A8C:  MOV             R1, R6; char *
473A8E:  BLX             strtok
473A92:  ADDS            R4, #1
473A94:  MOV             R1, R0
473A96:  CMP             R1, #0
473A98:  BNE.W           loc_47385C
473A9C:  B               loc_473780
473A9E:  B               loc_473780; jumptable 004737B6 case 33
473AA0:  MOV.W           R0, #0x920
473AA4:  STRB.W          R4, [SP,#0x98+var_1E]
473AA8:  MOV             R1, R6; char *
473AAA:  STRH.W          R0, [SP,#0x98+var_20]
473AAE:  MOV             R0, R9; char *
473AB0:  BLX             strtok
473AB4:  LDR.W           R9, [SP,#0x98+var_3C]
473AB8:  MOV             R1, R0; char *
473ABA:  MOV.W           R0, #0xFFFFFFFF
473ABE:  UXTAB.W         R0, R0, R4
473AC2:  CMP             R0, #0xF; switch 16 cases
473AC4:  BHI.W           def_473AC8; jumptable 00473AC8 default case
473AC8:  TBB.W           [PC,R0]; switch jump
473ACC:  DCB 8; jump table for switch statement
473ACD:  DCB 0x1C
473ACE:  DCB 0x26
473ACF:  DCB 0x30
473AD0:  DCB 0x3A
473AD1:  DCB 0x44
473AD2:  DCB 0x4E
473AD3:  DCB 0x58
473AD4:  DCB 0x62
473AD5:  DCB 0x6C
473AD6:  DCB 0x76
473AD7:  DCB 0x80
473AD8:  DCB 0x8A
473AD9:  DCB 0x94
473ADA:  DCB 0x9E
473ADB:  DCB 0xA8
473ADC:  MOVS            R0, #0xD2; jumptable 00473AC8 case 0
473ADE:  MOV             R9, R5
473AE0:  STR             R0, [SP,#0x98+var_98]; int
473AE2:  MOV             R5, R6
473AE4:  LDR             R6, [SP,#0x98+var_38]
473AE6:  MOVS            R3, #0xE; int
473AE8:  LDR             R2, [SP,#0x98+var_48]; char *
473AEA:  MOV             R0, R6; this
473AEC:  BLX             j__ZN16cHandlingDataMgr13FindExactWordEPcS0_ii; cHandlingDataMgr::FindExactWord(char *,char *,int,int)
473AF0:  ADD.W           R1, R6, R0,LSL#6
473AF4:  BL              sub_3F65CC
473AF8:  MOV             R6, R5
473AFA:  MOV             R5, R9
473AFC:  STR             R0, [R1,R2]
473AFE:  ADD.W           R9, R1, R2
473B02:  B               def_473AC8; jumptable 00473AC8 default case
473B04:  MOV             R0, R1; jumptable 00473AC8 case 1
473B06:  BLX             atof
473B0A:  VMOV            D16, R0, R1
473B0E:  VCVT.F32.F64    S0, D16
473B12:  VSTR            S0, [R9,#4]
473B16:  B               def_473AC8; jumptable 00473AC8 default case
473B18:  MOV             R0, R1; jumptable 00473AC8 case 2
473B1A:  BLX             atof
473B1E:  VMOV            D16, R0, R1
473B22:  VCVT.F32.F64    S0, D16
473B26:  VSTR            S0, [R9,#8]
473B2A:  B               def_473AC8; jumptable 00473AC8 default case
473B2C:  MOV             R0, R1; jumptable 00473AC8 case 3
473B2E:  BLX             atof
473B32:  VMOV            D16, R0, R1
473B36:  VCVT.F32.F64    S0, D16
473B3A:  VSTR            S0, [R9,#0xC]
473B3E:  B               def_473AC8; jumptable 00473AC8 default case
473B40:  MOV             R0, R1; jumptable 00473AC8 case 4
473B42:  BLX             atof
473B46:  VMOV            D16, R0, R1
473B4A:  VCVT.F32.F64    S0, D16
473B4E:  VSTR            S0, [R9,#0x10]
473B52:  B               def_473AC8; jumptable 00473AC8 default case
473B54:  MOV             R0, R1; jumptable 00473AC8 case 5
473B56:  BLX             atof
473B5A:  VMOV            D16, R0, R1
473B5E:  VCVT.F32.F64    S0, D16
473B62:  VSTR            S0, [R9,#0x14]
473B66:  B               def_473AC8; jumptable 00473AC8 default case
473B68:  MOV             R0, R1; jumptable 00473AC8 case 6
473B6A:  BLX             atof
473B6E:  VMOV            D16, R0, R1
473B72:  VCVT.F32.F64    S0, D16
473B76:  VSTR            S0, [R9,#0x18]
473B7A:  B               def_473AC8; jumptable 00473AC8 default case
473B7C:  MOV             R0, R1; jumptable 00473AC8 case 7
473B7E:  BLX             atof
473B82:  VMOV            D16, R0, R1
473B86:  VCVT.F32.F64    S0, D16
473B8A:  VSTR            S0, [R9,#0x1C]
473B8E:  B               def_473AC8; jumptable 00473AC8 default case
473B90:  MOV             R0, R1; jumptable 00473AC8 case 8
473B92:  BLX             atof
473B96:  VMOV            D16, R0, R1
473B9A:  VCVT.F32.F64    S0, D16
473B9E:  VSTR            S0, [R9,#0x20]
473BA2:  B               def_473AC8; jumptable 00473AC8 default case
473BA4:  MOV             R0, R1; jumptable 00473AC8 case 9
473BA6:  BLX             atof
473BAA:  VMOV            D16, R0, R1
473BAE:  VCVT.F32.F64    S0, D16
473BB2:  VSTR            S0, [R9,#0x24]
473BB6:  B               def_473AC8; jumptable 00473AC8 default case
473BB8:  MOV             R0, R1; jumptable 00473AC8 case 10
473BBA:  BLX             atof
473BBE:  VMOV            D16, R0, R1
473BC2:  VCVT.F32.F64    S0, D16
473BC6:  VSTR            S0, [R9,#0x28]
473BCA:  B               def_473AC8; jumptable 00473AC8 default case
473BCC:  MOV             R0, R1; jumptable 00473AC8 case 11
473BCE:  BLX             atof
473BD2:  VMOV            D16, R0, R1
473BD6:  VCVT.F32.F64    S0, D16
473BDA:  VSTR            S0, [R9,#0x2C]
473BDE:  B               def_473AC8; jumptable 00473AC8 default case
473BE0:  MOV             R0, R1; jumptable 00473AC8 case 12
473BE2:  BLX             atof
473BE6:  VMOV            D16, R0, R1
473BEA:  VCVT.F32.F64    S0, D16
473BEE:  VSTR            S0, [R9,#0x30]
473BF2:  B               def_473AC8; jumptable 00473AC8 default case
473BF4:  MOV             R0, R1; jumptable 00473AC8 case 13
473BF6:  BLX             atof
473BFA:  VMOV            D16, R0, R1
473BFE:  VCVT.F32.F64    S0, D16
473C02:  VSTR            S0, [R9,#0x34]
473C06:  B               def_473AC8; jumptable 00473AC8 default case
473C08:  MOV             R0, R1; jumptable 00473AC8 case 14
473C0A:  BLX             atof
473C0E:  VMOV            D16, R0, R1
473C12:  VCVT.F32.F64    S0, D16
473C16:  VSTR            S0, [R9,#0x38]
473C1A:  B               def_473AC8; jumptable 00473AC8 default case
473C1C:  MOV             R0, R1; jumptable 00473AC8 case 15
473C1E:  BLX             atof
473C22:  VMOV            D16, R0, R1
473C26:  VCVT.F32.F64    S0, D16
473C2A:  VSTR            S0, [R9,#0x3C]
473C2E:  MOVS            R0, #0; jumptable 00473AC8 default case
473C30:  MOV             R1, R6; char *
473C32:  BLX             strtok
473C36:  ADDS            R4, #1
473C38:  MOV             R1, R0
473C3A:  CMP             R1, #0
473C3C:  BNE.W           loc_473ABA
473C40:  B               loc_4735E2
473C42:  CMP             R1, #0x5E ; '^'; jumptable 004737B6 default case
473C44:  BNE.W           loc_473818; jumptable 004737B6 cases 34,35,38-58
473C48:  MOVS            R4, #0
473C4A:  MOV.W           R0, #0x920
473C4E:  ADD             R1, SP, #0x98+var_2C; char *
473C50:  STRB.W          R4, [SP,#0x98+var_2A]
473C54:  STRH.W          R0, [SP,#0x98+var_2C]
473C58:  MOV             R0, R9; char *
473C5A:  BLX             strtok
473C5E:  MOV.W           R9, #0
473C62:  MOV.W           R11, #0
473C66:  MOV.W           R1, #0xFFFFFFFF
473C6A:  UXTAB.W         R1, R1, R4
473C6E:  CMP             R1, #0x22 ; '"'; switch 35 cases
473C70:  BHI.W           def_473C74; jumptable 00473C74 default case
473C74:  TBH.W           [PC,R1,LSL#1]; switch jump
473C78:  DCW 0x23; jump table for switch statement
473C7A:  DCW 0x27
473C7C:  DCW 0x2B
473C7E:  DCW 0x2F
473C80:  DCW 0x36
473C82:  DCW 0x3D
473C84:  DCW 0x44
473C86:  DCW 0x4B
473C88:  DCW 0x52
473C8A:  DCW 0x59
473C8C:  DCW 0x60
473C8E:  DCW 0x67
473C90:  DCW 0x6E
473C92:  DCW 0x75
473C94:  DCW 0x7C
473C96:  DCW 0x83
473C98:  DCW 0x8A
473C9A:  DCW 0x91
473C9C:  DCW 0x98
473C9E:  DCW 0x9F
473CA0:  DCW 0xA6
473CA2:  DCW 0xAD
473CA4:  DCW 0xB7
473CA6:  DCW 0xC1
473CA8:  DCW 0xCB
473CAA:  DCW 0xD5
473CAC:  DCW 0xDF
473CAE:  DCW 0xE9
473CB0:  DCW 0xF3
473CB2:  DCW 0xFD
473CB4:  DCW 0x107
473CB6:  DCW 0x111
473CB8:  DCW 0x11B
473CBA:  DCW 0x125
473CBC:  DCW 0x12F
473CBE:  BLX             atoi; jumptable 00473C74 case 0
473CC2:  STR             R0, [SP,#0x98+var_80]
473CC4:  B               def_473C74; jumptable 00473C74 default case
473CC6:  BLX             atoi; jumptable 00473C74 case 1
473CCA:  STR             R0, [SP,#0x98+var_84]
473CCC:  B               def_473C74; jumptable 00473C74 default case
473CCE:  BLX             atoi; jumptable 00473C74 case 2
473CD2:  STR             R0, [SP,#0x98+var_88]
473CD4:  B               def_473C74; jumptable 00473C74 default case
473CD6:  BLX             atoi; jumptable 00473C74 case 3
473CDA:  CMP             R0, #0
473CDC:  IT NE
473CDE:  ORRNE.W         R9, R9, #1
473CE2:  B               def_473C74; jumptable 00473C74 default case
473CE4:  BLX             atoi; jumptable 00473C74 case 4
473CE8:  CMP             R0, #0
473CEA:  IT NE
473CEC:  ORRNE.W         R9, R9, #2
473CF0:  B               def_473C74; jumptable 00473C74 default case
473CF2:  BLX             atoi; jumptable 00473C74 case 5
473CF6:  CMP             R0, #0
473CF8:  IT NE
473CFA:  ORRNE.W         R9, R9, #4
473CFE:  B               def_473C74; jumptable 00473C74 default case
473D00:  BLX             atoi; jumptable 00473C74 case 6
473D04:  CMP             R0, #0
473D06:  IT NE
473D08:  ORRNE.W         R9, R9, #8
473D0C:  B               def_473C74; jumptable 00473C74 default case
473D0E:  BLX             atoi; jumptable 00473C74 case 7
473D12:  CMP             R0, #0
473D14:  IT NE
473D16:  ORRNE.W         R9, R9, #0x10
473D1A:  B               def_473C74; jumptable 00473C74 default case
473D1C:  BLX             atoi; jumptable 00473C74 case 8
473D20:  CMP             R0, #0
473D22:  IT NE
473D24:  ORRNE.W         R9, R9, #0x20 ; ' '
473D28:  B               def_473C74; jumptable 00473C74 default case
473D2A:  BLX             atoi; jumptable 00473C74 case 9
473D2E:  CMP             R0, #0
473D30:  IT NE
473D32:  ORRNE.W         R9, R9, #0x40 ; '@'
473D36:  B               def_473C74; jumptable 00473C74 default case
473D38:  BLX             atoi; jumptable 00473C74 case 10
473D3C:  CMP             R0, #0
473D3E:  IT NE
473D40:  ORRNE.W         R9, R9, #0x80
473D44:  B               def_473C74; jumptable 00473C74 default case
473D46:  BLX             atoi; jumptable 00473C74 case 11
473D4A:  CMP             R0, #0
473D4C:  IT NE
473D4E:  ORRNE.W         R9, R9, #0x100
473D52:  B               def_473C74; jumptable 00473C74 default case
473D54:  BLX             atoi; jumptable 00473C74 case 12
473D58:  CMP             R0, #0
473D5A:  IT NE
473D5C:  ORRNE.W         R9, R9, #0x200
473D60:  B               def_473C74; jumptable 00473C74 default case
473D62:  BLX             atoi; jumptable 00473C74 case 13
473D66:  CMP             R0, #0
473D68:  IT NE
473D6A:  ORRNE.W         R9, R9, #0x400
473D6E:  B               def_473C74; jumptable 00473C74 default case
473D70:  BLX             atoi; jumptable 00473C74 case 14
473D74:  CMP             R0, #0
473D76:  IT NE
473D78:  ORRNE.W         R9, R9, #0x800
473D7C:  B               def_473C74; jumptable 00473C74 default case
473D7E:  BLX             atoi; jumptable 00473C74 case 15
473D82:  CMP             R0, #0
473D84:  IT NE
473D86:  ORRNE.W         R9, R9, #0x1000
473D8A:  B               def_473C74; jumptable 00473C74 default case
473D8C:  BLX             atoi; jumptable 00473C74 case 16
473D90:  CMP             R0, #0
473D92:  IT NE
473D94:  ORRNE.W         R9, R9, #0x2000
473D98:  B               def_473C74; jumptable 00473C74 default case
473D9A:  BLX             atoi; jumptable 00473C74 case 17
473D9E:  CMP             R0, #0
473DA0:  IT NE
473DA2:  ORRNE.W         R9, R9, #0x4000
473DA6:  B               def_473C74; jumptable 00473C74 default case
473DA8:  BLX             atoi; jumptable 00473C74 case 18
473DAC:  CMP             R0, #0
473DAE:  IT NE
473DB0:  ORRNE.W         R9, R9, #0x8000
473DB4:  B               def_473C74; jumptable 00473C74 default case
473DB6:  BLX             atoi; jumptable 00473C74 case 19
473DBA:  CMP             R0, #0
473DBC:  IT NE
473DBE:  ORRNE.W         R9, R9, #0x10000
473DC2:  B               def_473C74; jumptable 00473C74 default case
473DC4:  BLX             atoi; jumptable 00473C74 case 20
473DC8:  CMP             R0, #0
473DCA:  IT NE
473DCC:  ORRNE.W         R9, R9, #0x20000
473DD0:  B               def_473C74; jumptable 00473C74 default case
473DD2:  BLX             atof; jumptable 00473C74 case 21
473DD6:  VMOV            D16, R0, R1
473DDA:  VCVT.F32.F64    S0, D16
473DDE:  VMOV            R0, S0
473DE2:  STR             R0, [SP,#0x98+var_6C]
473DE4:  B               def_473C74; jumptable 00473C74 default case
473DE6:  BLX             atof; jumptable 00473C74 case 22
473DEA:  VMOV            D16, R0, R1
473DEE:  VCVT.F32.F64    S0, D16
473DF2:  VMOV            R0, S0
473DF6:  STR             R0, [SP,#0x98+var_70]
473DF8:  B               def_473C74; jumptable 00473C74 default case
473DFA:  BLX             atof; jumptable 00473C74 case 23
473DFE:  VMOV            D16, R0, R1
473E02:  VCVT.F32.F64    S0, D16
473E06:  VMOV            R0, S0
473E0A:  STR             R0, [SP,#0x98+var_74]
473E0C:  B               def_473C74; jumptable 00473C74 default case
473E0E:  BLX             atof; jumptable 00473C74 case 24
473E12:  VMOV            D16, R0, R1
473E16:  VCVT.F32.F64    S0, D16
473E1A:  VMOV            R0, S0
473E1E:  STR             R0, [SP,#0x98+var_78]
473E20:  B               def_473C74; jumptable 00473C74 default case
473E22:  BLX             atof; jumptable 00473C74 case 25
473E26:  VMOV            D16, R0, R1
473E2A:  VCVT.F32.F64    S0, D16
473E2E:  VMOV            R0, S0
473E32:  STR             R0, [SP,#0x98+var_7C]
473E34:  B               def_473C74; jumptable 00473C74 default case
473E36:  BLX             atof; jumptable 00473C74 case 26
473E3A:  VMOV            D16, R0, R1
473E3E:  VCVT.F32.F64    S0, D16
473E42:  VMOV            R0, S0
473E46:  STR             R0, [SP,#0x98+var_5C]
473E48:  B               def_473C74; jumptable 00473C74 default case
473E4A:  BLX             atof; jumptable 00473C74 case 27
473E4E:  VMOV            D16, R0, R1
473E52:  VCVT.F32.F64    S0, D16
473E56:  VMOV            R0, S0
473E5A:  STR             R0, [SP,#0x98+var_4C]
473E5C:  B               def_473C74; jumptable 00473C74 default case
473E5E:  BLX             atof; jumptable 00473C74 case 28
473E62:  VMOV            D16, R0, R1
473E66:  VCVT.F32.F64    S0, D16
473E6A:  VMOV            R0, S0
473E6E:  STR             R0, [SP,#0x98+var_60]
473E70:  B               def_473C74; jumptable 00473C74 default case
473E72:  BLX             atof; jumptable 00473C74 case 29
473E76:  VMOV            D16, R0, R1
473E7A:  VCVT.F32.F64    S0, D16
473E7E:  VMOV            R0, S0
473E82:  STR             R0, [SP,#0x98+var_50]
473E84:  B               def_473C74; jumptable 00473C74 default case
473E86:  BLX             atof; jumptable 00473C74 case 30
473E8A:  VMOV            D16, R0, R1
473E8E:  VCVT.F32.F64    S0, D16
473E92:  VMOV            R0, S0
473E96:  STR             R0, [SP,#0x98+var_64]
473E98:  B               def_473C74; jumptable 00473C74 default case
473E9A:  BLX             atof; jumptable 00473C74 case 31
473E9E:  VMOV            D16, R0, R1
473EA2:  VCVT.F32.F64    S0, D16
473EA6:  VMOV            R0, S0
473EAA:  STR             R0, [SP,#0x98+var_54]
473EAC:  B               def_473C74; jumptable 00473C74 default case
473EAE:  BLX             atof; jumptable 00473C74 case 32
473EB2:  VMOV            D16, R0, R1
473EB6:  VCVT.F32.F64    S0, D16
473EBA:  VMOV            R0, S0
473EBE:  STR             R0, [SP,#0x98+var_68]
473EC0:  B               def_473C74; jumptable 00473C74 default case
473EC2:  BLX             atof; jumptable 00473C74 case 33
473EC6:  VMOV            D16, R0, R1
473ECA:  VCVT.F32.F64    S0, D16
473ECE:  VMOV            R0, S0
473ED2:  STR             R0, [SP,#0x98+var_58]
473ED4:  B               def_473C74; jumptable 00473C74 default case
473ED6:  BLX             atoi; jumptable 00473C74 case 34
473EDA:  MOV             R11, R0
473EDC:  ADD             R1, SP, #0x98+var_2C; jumptable 00473C74 default case
473EDE:  MOVS            R0, #0; char *
473EE0:  BLX             strtok
473EE4:  ADDS            R4, #1
473EE6:  CMP             R0, #0
473EE8:  BNE.W           loc_473C66
473EEC:  B.W             loc_473264
473EF0:  MOV             R0, R8; this
473EF2:  ADD             SP, SP, #0x7C ; '|'
473EF4:  POP.W           {R8-R11}
473EF8:  POP.W           {R4-R7,LR}
473EFC:  B.W             j_j__ZN8CFileMgr9CloseFileEj; j_CFileMgr::CloseFile(uint)
