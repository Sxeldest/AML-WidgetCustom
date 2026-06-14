; =========================================================
; Game Engine Function: _ZN9CShopping16AddPriceModifierEPKcS1_i
; Address            : 0x36040C - 0x3604D6
; =========================================================

36040C:  PUSH            {R4,R5,R7,LR}
36040E:  ADD             R7, SP, #8
360410:  SUB             SP, SP, #8
360412:  MOV             R5, R0
360414:  MOV             R0, R1; this
360416:  MOV             R4, R2
360418:  BLX             j__ZN9CShopping23GetPriceSectionFromNameEPKc; CShopping::GetPriceSectionFromName(char const*)
36041C:  SUBS            R1, R0, #4; char *
36041E:  CMP             R1, #3
360420:  BCS             loc_36042C
360422:  MOV             R0, R5; this
360424:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
360428:  STR             R0, [SP,#0x10+var_C]
36042A:  B               loc_360450
36042C:  CMP             R0, #2
36042E:  BEQ             loc_36043E
360430:  CMP             R0, #9
360432:  BNE             loc_360440
360434:  MOV             R0, R5; this
360436:  BLX             j__ZN11CWeaponInfo14FindWeaponTypeEPKc; CWeaponInfo::FindWeaponType(char const*)
36043A:  STR             R0, [SP,#0x10+var_C]
36043C:  B               loc_360450
36043E:  B               loc_360450
360440:  MOV.W           R0, #0xFFFFFFFF
360444:  ADD             R1, SP, #0x10+var_C; char *
360446:  STR             R0, [SP,#0x10+var_C]
360448:  MOV             R0, R5; this
36044A:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
36044E:  LDR             R0, [SP,#0x10+var_C]
360450:  LDR             R1, =(_ZN9CShopping20ms_numPriceModifiersE_ptr - 0x360458)
360452:  MOVS            R2, #0
360454:  ADD             R1, PC; _ZN9CShopping20ms_numPriceModifiersE_ptr
360456:  LDR             R1, [R1]; CShopping::ms_numPriceModifiers ...
360458:  LDR             R1, [R1]; CShopping::ms_numPriceModifiers
36045A:  CMP             R1, #1
36045C:  BLT             loc_360472
36045E:  LDR             R3, =(_ZN9CShopping17ms_priceModifiersE_ptr - 0x360464)
360460:  ADD             R3, PC; _ZN9CShopping17ms_priceModifiersE_ptr
360462:  LDR             R3, [R3]; CShopping::ms_priceModifiers ...
360464:  LDR.W           R5, [R3,R2,LSL#3]
360468:  CMP             R5, R0
36046A:  BEQ             loc_3604BA
36046C:  ADDS            R2, #1
36046E:  CMP             R2, R1
360470:  BLT             loc_360464
360472:  CMP             R2, R1
360474:  BNE             loc_360490
360476:  LDR             R2, =(_ZN9CShopping17ms_priceModifiersE_ptr - 0x36047E)
360478:  LDR             R3, =(_ZN9CShopping20ms_numPriceModifiersE_ptr - 0x360480)
36047A:  ADD             R2, PC; _ZN9CShopping17ms_priceModifiersE_ptr
36047C:  ADD             R3, PC; _ZN9CShopping20ms_numPriceModifiersE_ptr
36047E:  LDR             R2, [R2]; CShopping::ms_priceModifiers ...
360480:  LDR             R3, [R3]; CShopping::ms_numPriceModifiers ...
360482:  STR.W           R0, [R2,R1,LSL#3]
360486:  ADD.W           R2, R2, R1,LSL#3
36048A:  ADDS            R1, #1
36048C:  STR             R4, [R2,#4]
36048E:  STR             R1, [R3]; CShopping::ms_numPriceModifiers
360490:  LDR             R1, =(_ZN9CShopping12ms_numPricesE_ptr - 0x360496)
360492:  ADD             R1, PC; _ZN9CShopping12ms_numPricesE_ptr
360494:  LDR             R1, [R1]; CShopping::ms_numPrices ...
360496:  LDR             R1, [R1]; CShopping::ms_numPrices
360498:  CMP             R1, #1
36049A:  BLT             loc_3604B6
36049C:  LDR             R2, =(_ZN9CShopping9ms_pricesE_ptr - 0x3604A4)
36049E:  MOVS            R3, #0
3604A0:  ADD             R2, PC; _ZN9CShopping9ms_pricesE_ptr
3604A2:  LDR             R2, [R2]; CShopping::ms_prices ...
3604A4:  ADDS            R2, #4
3604A6:  LDR.W           R5, [R2,#-4]; CShopping::ms_prices
3604AA:  CMP             R5, R0
3604AC:  BEQ             loc_3604CC
3604AE:  ADDS            R3, #1
3604B0:  ADDS            R2, #0x18
3604B2:  CMP             R3, R1
3604B4:  BLT             loc_3604A6
3604B6:  ADD             SP, SP, #8
3604B8:  POP             {R4,R5,R7,PC}
3604BA:  LDR             R3, =(_ZN9CShopping17ms_priceModifiersE_ptr - 0x3604C0)
3604BC:  ADD             R3, PC; _ZN9CShopping17ms_priceModifiersE_ptr
3604BE:  LDR             R3, [R3]; CShopping::ms_priceModifiers ...
3604C0:  ADD.W           R3, R3, R2,LSL#3
3604C4:  STR             R4, [R3,#4]
3604C6:  CMP             R2, R1
3604C8:  BEQ             loc_360476
3604CA:  B               loc_360490
3604CC:  ADDS            R0, R3, #1
3604CE:  IT NE
3604D0:  STRNE           R4, [R2]
3604D2:  ADD             SP, SP, #8
3604D4:  POP             {R4,R5,R7,PC}
