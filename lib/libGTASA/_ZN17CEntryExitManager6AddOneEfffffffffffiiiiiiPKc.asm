; =========================================================
; Game Engine Function: _ZN17CEntryExitManager6AddOneEfffffffffffiiiiiiPKc
; Address            : 0x3061D4 - 0x306522
; =========================================================

3061D4:  PUSH            {R4-R7,LR}
3061D6:  ADD             R7, SP, #0xC
3061D8:  PUSH.W          {R8-R11}
3061DC:  SUB             SP, SP, #4
3061DE:  VPUSH           {D8-D15}
3061E2:  SUB             SP, SP, #0x78
3061E4:  MOV             R11, R3
3061E6:  LDR             R3, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x3061F4)
3061E8:  VMOV            S30, R2
3061EC:  ADD.W           LR, R7, #0x30 ; '0'
3061F0:  ADD             R3, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
3061F2:  VMOV            S16, R1
3061F6:  LDM.W           LR, {R5,R9,LR}
3061FA:  VMOV            S18, R0
3061FE:  VMOV            S17, R11
306202:  LDR             R2, [R3]; CEntryExitManager::mp_poolEntryExits ...
306204:  LDR.W           R12, [R7,#arg_34]
306208:  LDR.W           R10, [R7,#arg_20]
30620C:  LDR             R1, [R2]; CEntryExitManager::mp_poolEntryExits
30620E:  MOVS            R2, #0
306210:  VLDR            S28, [R7,#arg_18]
306214:  LDRD.W          R3, R0, [R1,#8]
306218:  VLDR            S19, [R7,#arg_14]
30621C:  VLDR            S24, [R7,#arg_10]
306220:  VLDR            S26, [R7,#arg_C]
306224:  VLDR            S22, [R7,#arg_4]
306228:  VLDR            S20, [R7,#arg_0]
30622C:  ADDS            R0, #1
30622E:  STR             R0, [R1,#0xC]
306230:  CMP             R0, R3
306232:  BNE             loc_306240
306234:  MOVS            R0, #0
306236:  LSLS            R2, R2, #0x1F
306238:  STR             R0, [R1,#0xC]
30623A:  BNE.W           loc_3064FA
30623E:  MOVS            R2, #1
306240:  LDR             R4, [R1,#4]
306242:  LDRSB           R6, [R4,R0]
306244:  CMP.W           R6, #0xFFFFFFFF
306248:  BGT             loc_30622C
30624A:  AND.W           R2, R6, #0x7F
30624E:  STRB            R2, [R4,R0]
306250:  LDR             R0, [R1,#4]
306252:  LDR             R2, [R1,#0xC]
306254:  LDRB            R3, [R0,R2]
306256:  AND.W           R6, R3, #0x80
30625A:  ADDS            R3, #1
30625C:  AND.W           R3, R3, #0x7F
306260:  ORRS            R3, R6
306262:  STRB            R3, [R0,R2]
306264:  LDR             R0, [R1]
306266:  LDR             R1, [R1,#0xC]
306268:  RSB.W           R1, R1, R1,LSL#4
30626C:  ADD.W           R8, R0, R1,LSL#2
306270:  CMP.W           R8, #0
306274:  BEQ             loc_30634E
306276:  ANDS.W          R4, R10, #0x1000
30627A:  ITT NE
30627C:  MOVNE           R5, #0
30627E:  MOVNE.W         R9, #0x18
306282:  TST.W           R10, #0x400
306286:  BEQ             loc_3062A0
306288:  MOV             R6, LR
30628A:  BLX             rand
30628E:  ANDS.W          R0, R0, #1
306292:  LDR.W           R12, [R7,#arg_34]
306296:  ITT NE
306298:  MOVNE           R5, #0
30629A:  MOVNE.W         R9, #0
30629E:  MOV             LR, R6
3062A0:  VLDR            S0, =3.1416
3062A4:  VMOV.F32        S4, #0.5
3062A8:  VLDR            S2, =180.0
3062AC:  VMOV.F32        S6, #1.0
3062B0:  VMUL.F32        S0, S17, S0
3062B4:  LDR             R0, =(_ZN17CEntryExitManager25ms_bBurglaryHousesEnabledE_ptr - 0x3062C0)
3062B6:  ORR.W           R1, R10, #0x4000
3062BA:  CMP             R4, #0
3062BC:  ADD             R0, PC; _ZN17CEntryExitManager25ms_bBurglaryHousesEnabledE_ptr
3062BE:  MOV             R4, R8
3062C0:  LDR             R0, [R0]; CEntryExitManager::ms_bBurglaryHousesEnabled ...
3062C2:  VMUL.F32        S17, S20, S4
3062C6:  VDIV.F32        S0, S0, S2
3062CA:  LDRB            R0, [R0]; CEntryExitManager::ms_bBurglaryHousesEnabled
3062CC:  IT EQ
3062CE:  MOVEQ           R10, R1
3062D0:  CMP             R0, #0
3062D2:  LDR             R0, [R7,#arg_1C]
3062D4:  IT NE
3062D6:  MOVNE           R10, R1
3062D8:  CMP.W           R12, #0
3062DC:  STRH.W          R10, [R4,#0x30]!
3062E0:  MOV             R1, R4
3062E2:  VADD.F32        S2, S19, S6
3062E6:  VSTR            S28, [R4,#-4]
3062EA:  VADD.F32        S6, S30, S6
3062EE:  STRB            R0, [R4,#2]
3062F0:  VMUL.F32        S30, S22, S4
3062F4:  LDR             R0, [R7,#arg_24]
3062F6:  VSUB.F32        S8, S18, S17
3062FA:  STRB            R0, [R4,#3]
3062FC:  VADD.F32        S10, S17, S18
306300:  MOV.W           R0, #0
306304:  STRB            R5, [R4,#4]
306306:  STRB.W          R9, [R4,#5]
30630A:  STRB.W          LR, [R4,#6]
30630E:  VSTR            S2, [R4,#-8]
306312:  VSUB.F32        S4, S16, S30
306316:  VADD.F32        S12, S30, S16
30631A:  VSTR            S8, [R4,#-0x28]
30631E:  VSTR            S12, [R4,#-0x24]
306322:  VSTR            S10, [R4,#-0x20]
306326:  VSTR            S4, [R4,#-0x1C]
30632A:  VSTR            S6, [R4,#-0x18]
30632E:  VSTR            S0, [R4,#-0x14]
306332:  VSTR            S26, [R4,#-0x10]
306336:  VSTR            S24, [R4,#-0xC]
30633A:  STR.W           R0, [R1,#8]!
30633E:  STR             R1, [SP,#0xD8+var_D4]
306340:  BEQ             loc_306352
306342:  MOV             R0, R8; char *
306344:  MOV             R1, R12; char *
306346:  MOVS            R2, #8; size_t
306348:  BLX             strncpy
30634C:  B               loc_306356
30634E:  MOVS            R0, #0
306350:  B               loc_3064FA
306352:  STRB.W          R0, [R8]
306356:  VMOV.F32        S0, #-0.5
30635A:  ADD             R6, SP, #0xD8+var_C0
30635C:  MOV.W           R9, #0
306360:  MOV             R1, R11; x
306362:  MOV             R0, R6; this
306364:  STR.W           R9, [SP,#0xD8+var_70]
306368:  VSTR            S17, [SP,#0xD8+var_6C]
30636C:  STR.W           R9, [SP,#0xD8+var_64]
306370:  VSTR            S30, [SP,#0xD8+var_6C+4]
306374:  VMUL.F32        S2, S22, S0
306378:  VMUL.F32        S0, S20, S0
30637C:  VSTR            S2, [SP,#0xD8+var_78+4]
306380:  VSTR            S0, [SP,#0xD8+var_78]
306384:  STRD.W          R9, R9, [SP,#0xD8+var_80]
306388:  BLX             j__ZN7CMatrix10SetRotateZEf; CMatrix::SetRotateZ(float)
30638C:  ADD.W           R10, SP, #0xD8+var_D0
306390:  ADD             R5, SP, #0xD8+var_78
306392:  MOV             R1, R6
306394:  MOV             R0, R10
306396:  MOV             R2, R5
306398:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
30639C:  VLDR            D16, [SP,#0xD8+var_D0]
3063A0:  ADD.W           R2, R5, #0xC
3063A4:  LDR             R0, [SP,#0xD8+var_C8]
3063A6:  MOV             R1, R6
3063A8:  STR             R0, [SP,#0xD8+var_70]
3063AA:  MOV             R0, R10
3063AC:  VSTR            D16, [SP,#0xD8+var_78]
3063B0:  VLDR            S0, [SP,#0xD8+var_78]
3063B4:  VLDR            S2, [SP,#0xD8+var_78+4]
3063B8:  VADD.F32        S0, S0, S18
3063BC:  VADD.F32        S2, S2, S16
3063C0:  VSTR            S0, [SP,#0xD8+var_78]
3063C4:  VSTR            S2, [SP,#0xD8+var_78+4]
3063C8:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
3063CC:  VLDR            D16, [SP,#0xD8+var_D0]
3063D0:  LDR             R0, [SP,#0xD8+var_C8]
3063D2:  STR             R0, [SP,#0xD8+var_64]
3063D4:  MOVS            R0, #0
3063D6:  VSTR            D16, [SP,#0xD8+var_6C]
3063DA:  VLDR            S0, [SP,#0xD8+var_6C]
3063DE:  VLDR            S2, [SP,#0xD8+var_6C+4]
3063E2:  VADD.F32        S0, S0, S18
3063E6:  LDR             R1, =(_ZN17CEntryExitManager11mp_QuadTreeE_ptr - 0x3063F0)
3063E8:  VADD.F32        S2, S2, S16
3063EC:  ADD             R1, PC; _ZN17CEntryExitManager11mp_QuadTreeE_ptr
3063EE:  LDR             R1, [R1]; CEntryExitManager::mp_QuadTree ...
3063F0:  VSTR            S0, [SP,#0xD8+var_6C]
3063F4:  VSTR            S2, [SP,#0xD8+var_6C+4]
3063F8:  VLDR            S4, [SP,#0xD8+var_78]
3063FC:  VLDR            S6, [SP,#0xD8+var_78+4]
306400:  VCMPE.F32       S4, S0
306404:  VMRS            APSR_nzcv, FPSCR
306408:  VCMPE.F32       S4, S0
30640C:  IT GE
30640E:  MOVGE           R0, #1
306410:  VMRS            APSR_nzcv, FPSCR
306414:  ORR.W           R0, R0, R0,LSL#1
306418:  VCMPE.F32       S6, S2
30641C:  LDR.W           R0, [R5,R0,LSL#2]
306420:  STR             R0, [SP,#0xD8+var_D0]
306422:  MOV.W           R0, #0
306426:  IT LT
306428:  MOVLT           R0, #1
30642A:  VMRS            APSR_nzcv, FPSCR
30642E:  ORR.W           R0, R0, R0,LSL#1
306432:  VCMPE.F32       S6, S2
306436:  LDR.W           R0, [R5,R0,LSL#2]
30643A:  STR             R0, [SP,#0xD8+var_C8]
30643C:  MOV.W           R0, #0
306440:  IT GE
306442:  MOVGE           R0, #1
306444:  VMRS            APSR_nzcv, FPSCR
306448:  ORR.W           R0, R0, R0,LSL#1
30644C:  ADD.W           R0, R5, R0,LSL#2
306450:  LDR             R0, [R0,#4]
306452:  STR             R0, [SP,#0xD8+var_C4]
306454:  IT LT
306456:  MOVLT.W         R9, #1
30645A:  ORR.W           R0, R9, R9,LSL#1
30645E:  ADD.W           R0, R5, R0,LSL#2
306462:  LDR             R2, [R0,#4]
306464:  LDR             R0, [R1]; CEntryExitManager::mp_QuadTree
306466:  MOV             R1, R8
306468:  STR             R2, [SP,#0xD8+var_D0+4]
30646A:  ADD             R2, SP, #0xD8+var_D0
30646C:  BLX             j__ZN13CQuadTreeNode7AddItemEPvRK5CRect; CQuadTreeNode::AddItem(void *,CRect const&)
306470:  LDRB            R0, [R4]
306472:  LSLS            R0, R0, #0x1D
306474:  BPL             loc_3064DA
306476:  LDR             R0, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x30647C)
306478:  ADD             R0, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
30647A:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits ...
30647C:  LDR.W           R9, [R0]; CEntryExitManager::mp_poolEntryExits
306480:  LDR.W           R6, [R9,#8]
306484:  CBZ             R6, loc_3064DA
306486:  RSB.W           R1, R6, R6,LSL#4
30648A:  LDR.W           R10, [R9,#4]
30648E:  MOV             R0, #0xFFFFFFF4
306492:  ADD.W           R4, R0, R1,LSL#2
306496:  MOVW            R1, #0x4004
30649A:  ADD.W           R0, R10, R6
30649E:  LDRSB.W         R0, [R0,#-1]
3064A2:  CMP             R0, #0
3064A4:  BLT             loc_3064D2
3064A6:  LDR.W           R0, [R9]
3064AA:  ADD.W           R11, R0, R4
3064AE:  CMP.W           R11, #0x30 ; '0'
3064B2:  BEQ             loc_3064D2
3064B4:  LDRH            R0, [R0,R4]
3064B6:  ANDS            R0, R1
3064B8:  CMP.W           R0, #0x4000
3064BC:  BNE             loc_3064D2
3064BE:  SUB.W           R5, R11, #0x30 ; '0'
3064C2:  MOV             R1, R8; char *
3064C4:  MOVS            R2, #8; size_t
3064C6:  MOV             R0, R5; char *
3064C8:  BLX             strncasecmp
3064CC:  MOVW            R1, #0x4004
3064D0:  CBZ             R0, loc_306508
3064D2:  SUBS            R6, #1
3064D4:  SUB.W           R4, R4, #0x3C ; '<'
3064D8:  BNE             loc_30649A
3064DA:  LDR             R0, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x3064E0)
3064DC:  ADD             R0, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
3064DE:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits ...
3064E0:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits
3064E2:  LDR             R4, [R0]
3064E4:  ADD             R0, SP, #0xD8+var_C0; this
3064E6:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3064EA:  SUB.W           R0, R8, R4
3064EE:  MOV             R1, #0xEEEEEEEF
3064F6:  ASRS            R0, R0, #2
3064F8:  MULS            R0, R1
3064FA:  ADD             SP, SP, #0x78 ; 'x'
3064FC:  VPOP            {D8-D15}
306500:  ADD             SP, SP, #4
306502:  POP.W           {R8-R11}
306506:  POP             {R4-R7,PC}
306508:  LDR             R0, [SP,#0xD8+var_D4]
30650A:  STR             R5, [R0]
30650C:  LDR.W           R0, [R11,#8]
306510:  CMP             R0, #0
306512:  MOV.W           R0, #0x1800
306516:  IT EQ
306518:  STREQ.W         R8, [R11,#8]
30651C:  STRH.W          R0, [R11,#4]
306520:  B               loc_3064DA
