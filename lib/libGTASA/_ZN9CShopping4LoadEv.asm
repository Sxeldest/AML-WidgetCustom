; =========================================================
; Game Engine Function: _ZN9CShopping4LoadEv
; Address            : 0x48E534 - 0x48E590
; =========================================================

48E534:  PUSH            {R4-R7,LR}
48E536:  ADD             R7, SP, #0xC
48E538:  PUSH.W          {R11}
48E53C:  LDR             R0, =(_ZN9CShopping20ms_numPriceModifiersE_ptr - 0x48E544)
48E53E:  MOVS            R1, #byte_4; void *
48E540:  ADD             R0, PC; _ZN9CShopping20ms_numPriceModifiersE_ptr
48E542:  LDR             R4, [R0]; CShopping::ms_numPriceModifiers ...
48E544:  MOV             R0, R4; this
48E546:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48E54A:  LDR             R0, [R4]; CShopping::ms_numPriceModifiers
48E54C:  CBZ             R0, loc_48E56E
48E54E:  LDR             R0, =(_ZN9CShopping17ms_priceModifiersE_ptr - 0x48E556)
48E550:  MOVS            R5, #0
48E552:  ADD             R0, PC; _ZN9CShopping17ms_priceModifiersE_ptr
48E554:  LDR             R4, [R0]; CShopping::ms_priceModifiers ...
48E556:  LDR             R0, =(_ZN9CShopping20ms_numPriceModifiersE_ptr - 0x48E55C)
48E558:  ADD             R0, PC; _ZN9CShopping20ms_numPriceModifiersE_ptr
48E55A:  LDR             R6, [R0]; CShopping::ms_numPriceModifiers ...
48E55C:  MOV             R0, R4; this
48E55E:  MOVS            R1, #byte_8; void *
48E560:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48E564:  LDR             R0, [R6]; CShopping::ms_numPriceModifiers
48E566:  ADDS            R5, #1
48E568:  ADDS            R4, #8
48E56A:  CMP             R5, R0
48E56C:  BCC             loc_48E55C
48E56E:  LDR             R0, =(_ZN9CShopping18ms_numBuyableItemsE_ptr - 0x48E576)
48E570:  MOVS            R1, #byte_4; void *
48E572:  ADD             R0, PC; _ZN9CShopping18ms_numBuyableItemsE_ptr
48E574:  LDR             R4, [R0]; CShopping::ms_numBuyableItems ...
48E576:  MOV             R0, R4; this
48E578:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48E57C:  LDR             R0, =(_ZN9CShopping13ms_bHasBoughtE_ptr - 0x48E584)
48E57E:  LDR             R1, [R4]; void *
48E580:  ADD             R0, PC; _ZN9CShopping13ms_bHasBoughtE_ptr
48E582:  LDR             R0, [R0]; this
48E584:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48E588:  MOVS            R0, #1
48E58A:  POP.W           {R11}
48E58E:  POP             {R4-R7,PC}
