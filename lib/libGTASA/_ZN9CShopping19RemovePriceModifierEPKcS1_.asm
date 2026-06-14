; =========================================================
; Game Engine Function: _ZN9CShopping19RemovePriceModifierEPKcS1_
; Address            : 0x3605E0 - 0x360676
; =========================================================

3605E0:  PUSH            {R4,R6,R7,LR}
3605E2:  ADD             R7, SP, #8
3605E4:  SUB             SP, SP, #8
3605E6:  MOV             R4, R0
3605E8:  MOV             R0, R1; this
3605EA:  BLX             j__ZN9CShopping23GetPriceSectionFromNameEPKc; CShopping::GetPriceSectionFromName(char const*)
3605EE:  SUBS            R1, R0, #4; char *
3605F0:  CMP             R1, #3
3605F2:  BCS             loc_3605FE
3605F4:  MOV             R0, R4; this
3605F6:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
3605FA:  STR             R0, [SP,#0x10+var_C]
3605FC:  B               loc_360622
3605FE:  CMP             R0, #2
360600:  BEQ             loc_360610
360602:  CMP             R0, #9
360604:  BNE             loc_360612
360606:  MOV             R0, R4; this
360608:  BLX             j__ZN11CWeaponInfo14FindWeaponTypeEPKc; CWeaponInfo::FindWeaponType(char const*)
36060C:  STR             R0, [SP,#0x10+var_C]
36060E:  B               loc_360622
360610:  B               loc_360622
360612:  MOV.W           R0, #0xFFFFFFFF
360616:  ADD             R1, SP, #0x10+var_C; char *
360618:  STR             R0, [SP,#0x10+var_C]
36061A:  MOV             R0, R4; this
36061C:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
360620:  LDR             R0, [SP,#0x10+var_C]
360622:  LDR             R1, =(_ZN9CShopping20ms_numPriceModifiersE_ptr - 0x360628)
360624:  ADD             R1, PC; _ZN9CShopping20ms_numPriceModifiersE_ptr
360626:  LDR             R1, [R1]; CShopping::ms_numPriceModifiers ...
360628:  LDR             R2, [R1]; CShopping::ms_numPriceModifiers
36062A:  MOVS            R1, #0
36062C:  CMP             R2, #1
36062E:  BLT             loc_360644
360630:  LDR             R3, =(_ZN9CShopping17ms_priceModifiersE_ptr - 0x360636)
360632:  ADD             R3, PC; _ZN9CShopping17ms_priceModifiersE_ptr
360634:  LDR             R3, [R3]; CShopping::ms_priceModifiers ...
360636:  LDR.W           R4, [R3,R1,LSL#3]
36063A:  CMP             R4, R0
36063C:  BEQ             loc_360644
36063E:  ADDS            R1, #1
360640:  CMP             R1, R2
360642:  BLT             loc_360636
360644:  CMP             R1, R2
360646:  BEQ             loc_360672
360648:  LDR             R0, =(_ZN9CShopping20ms_numPriceModifiersE_ptr - 0x360650)
36064A:  CMP             R2, #2
36064C:  ADD             R0, PC; _ZN9CShopping20ms_numPriceModifiersE_ptr
36064E:  LDR             R3, [R0]; CShopping::ms_numPriceModifiers ...
360650:  SUB.W           R0, R2, #1
360654:  STR             R0, [R3]; CShopping::ms_numPriceModifiers
360656:  BLT             loc_360672
360658:  LDR             R2, =(_ZN9CShopping17ms_priceModifiersE_ptr - 0x36065E)
36065A:  ADD             R2, PC; _ZN9CShopping17ms_priceModifiersE_ptr
36065C:  LDR             R2, [R2]; CShopping::ms_priceModifiers ...
36065E:  LDR.W           R3, [R2,R0,LSL#3]
360662:  ADD.W           R0, R2, R0,LSL#3
360666:  LDR             R0, [R0,#4]
360668:  STR.W           R3, [R2,R1,LSL#3]
36066C:  ADD.W           R1, R2, R1,LSL#3
360670:  STR             R0, [R1,#4]
360672:  ADD             SP, SP, #8
360674:  POP             {R4,R6,R7,PC}
