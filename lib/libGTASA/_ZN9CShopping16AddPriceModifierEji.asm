; =========================================================
; Game Engine Function: _ZN9CShopping16AddPriceModifierEji
; Address            : 0x3604F4 - 0x36058E
; =========================================================

3604F4:  PUSH            {R7,LR}
3604F6:  MOV             R7, SP
3604F8:  LDR             R2, =(_ZN9CShopping20ms_numPriceModifiersE_ptr - 0x360500)
3604FA:  MOVS            R3, #0
3604FC:  ADD             R2, PC; _ZN9CShopping20ms_numPriceModifiersE_ptr
3604FE:  LDR             R2, [R2]; CShopping::ms_numPriceModifiers ...
360500:  LDR.W           R12, [R2]; CShopping::ms_numPriceModifiers
360504:  CMP.W           R12, #1
360508:  BLT             loc_360520
36050A:  LDR             R2, =(_ZN9CShopping17ms_priceModifiersE_ptr - 0x360510)
36050C:  ADD             R2, PC; _ZN9CShopping17ms_priceModifiersE_ptr
36050E:  LDR.W           LR, [R2]; CShopping::ms_priceModifiers ...
360512:  LDR.W           R2, [LR,R3,LSL#3]
360516:  CMP             R2, R0
360518:  BEQ             loc_36057C
36051A:  ADDS            R3, #1
36051C:  CMP             R3, R12
36051E:  BLT             loc_360512
360520:  CMP             R3, R12
360522:  BNE             loc_360540
360524:  LDR             R2, =(_ZN9CShopping17ms_priceModifiersE_ptr - 0x36052C)
360526:  LDR             R3, =(_ZN9CShopping20ms_numPriceModifiersE_ptr - 0x36052E)
360528:  ADD             R2, PC; _ZN9CShopping17ms_priceModifiersE_ptr
36052A:  ADD             R3, PC; _ZN9CShopping20ms_numPriceModifiersE_ptr
36052C:  LDR             R2, [R2]; CShopping::ms_priceModifiers ...
36052E:  LDR             R3, [R3]; CShopping::ms_numPriceModifiers ...
360530:  STR.W           R0, [R2,R12,LSL#3]
360534:  ADD.W           R2, R2, R12,LSL#3
360538:  STR             R1, [R2,#4]
36053A:  ADD.W           R2, R12, #1
36053E:  STR             R2, [R3]; CShopping::ms_numPriceModifiers
360540:  LDR             R2, =(_ZN9CShopping12ms_numPricesE_ptr - 0x360546)
360542:  ADD             R2, PC; _ZN9CShopping12ms_numPricesE_ptr
360544:  LDR             R2, [R2]; CShopping::ms_numPrices ...
360546:  LDR.W           R12, [R2]; CShopping::ms_numPrices
36054A:  CMP.W           R12, #1
36054E:  IT LT
360550:  POPLT           {R7,PC}
360552:  LDR             R2, =(_ZN9CShopping9ms_pricesE_ptr - 0x360558)
360554:  ADD             R2, PC; _ZN9CShopping9ms_pricesE_ptr
360556:  LDR             R2, [R2]; CShopping::ms_prices ...
360558:  ADD.W           LR, R2, #4
36055C:  MOVS            R2, #0
36055E:  LDR.W           R3, [LR,#-4]; CShopping::ms_prices
360562:  CMP             R3, R0
360564:  BEQ             loc_360572
360566:  ADDS            R2, #1
360568:  ADD.W           LR, LR, #0x18
36056C:  CMP             R2, R12
36056E:  BLT             loc_36055E
360570:  POP             {R7,PC}
360572:  ADDS            R0, R2, #1
360574:  IT NE
360576:  STRNE.W         R1, [LR]
36057A:  POP             {R7,PC}
36057C:  LDR             R2, =(_ZN9CShopping17ms_priceModifiersE_ptr - 0x360582)
36057E:  ADD             R2, PC; _ZN9CShopping17ms_priceModifiersE_ptr
360580:  LDR             R2, [R2]; CShopping::ms_priceModifiers ...
360582:  ADD.W           R2, R2, R3,LSL#3
360586:  STR             R1, [R2,#4]
360588:  CMP             R3, R12
36058A:  BEQ             loc_360524
36058C:  B               loc_360540
