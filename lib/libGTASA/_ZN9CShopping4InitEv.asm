; =========================================================
; Game Engine Function: _ZN9CShopping4InitEv
; Address            : 0x35F720 - 0x35F76E
; =========================================================

35F720:  PUSH            {R4,R6,R7,LR}
35F722:  ADD             R7, SP, #8
35F724:  LDR             R0, =(_ZN9CShopping18ms_numBuyableItemsE_ptr - 0x35F730)
35F726:  MOVS            R1, #0
35F728:  LDR             R2, =(_ZN9CShopping20ms_numPriceModifiersE_ptr - 0x35F736)
35F72A:  LDR             R3, =(_ZN9CShopping12ms_numPricesE_ptr - 0x35F738)
35F72C:  ADD             R0, PC; _ZN9CShopping18ms_numBuyableItemsE_ptr
35F72E:  LDR.W           LR, =(_ZN9CShopping13ms_bHasBoughtE_ptr - 0x35F73E)
35F732:  ADD             R2, PC; _ZN9CShopping20ms_numPriceModifiersE_ptr
35F734:  ADD             R3, PC; _ZN9CShopping12ms_numPricesE_ptr
35F736:  LDR.W           R12, =(byte_81FFB8 - 0x35F744)
35F73A:  ADD             LR, PC; _ZN9CShopping13ms_bHasBoughtE_ptr
35F73C:  LDR             R4, [R0]; CShopping::ms_numBuyableItems ...
35F73E:  LDR             R2, [R2]; CShopping::ms_numPriceModifiers ...
35F740:  ADD             R12, PC; byte_81FFB8
35F742:  LDR             R3, [R3]; CShopping::ms_numPrices ...
35F744:  LDR.W           R0, [LR]; CShopping::ms_bHasBought ...
35F748:  STRB.W          R1, [R12]
35F74C:  STR             R1, [R2]; CShopping::ms_numPriceModifiers
35F74E:  STR             R1, [R3]; CShopping::ms_numPrices
35F750:  STR             R1, [R4]; CShopping::ms_numBuyableItems
35F752:  MOV.W           R1, #0x230
35F756:  BLX             j___aeabi_memclr8_1
35F75A:  LDR             R0, =(_ZN9CShopping7ms_keysE_ptr - 0x35F764)
35F75C:  MOV.W           R1, #0x8C0
35F760:  ADD             R0, PC; _ZN9CShopping7ms_keysE_ptr
35F762:  LDR             R0, [R0]; CShopping::ms_keys ...
35F764:  BLX             j___aeabi_memclr8_0
35F768:  POP.W           {R4,R6,R7,LR}
35F76C:  B               _ZN9CShopping9LoadStatsEv; CShopping::LoadStats(void)
