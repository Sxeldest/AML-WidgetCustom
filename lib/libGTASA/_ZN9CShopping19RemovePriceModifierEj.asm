; =========================================================
; Game Engine Function: _ZN9CShopping19RemovePriceModifierEj
; Address            : 0x360688 - 0x3606E2
; =========================================================

360688:  LDR             R1, =(_ZN9CShopping20ms_numPriceModifiersE_ptr - 0x36068E)
36068A:  ADD             R1, PC; _ZN9CShopping20ms_numPriceModifiersE_ptr
36068C:  LDR             R1, [R1]; CShopping::ms_numPriceModifiers ...
36068E:  LDR.W           R12, [R1]; CShopping::ms_numPriceModifiers
360692:  MOVS            R1, #0
360694:  CMP.W           R12, #1
360698:  BLT             loc_3606AE
36069A:  LDR             R3, =(_ZN9CShopping17ms_priceModifiersE_ptr - 0x3606A0)
36069C:  ADD             R3, PC; _ZN9CShopping17ms_priceModifiersE_ptr
36069E:  LDR             R3, [R3]; CShopping::ms_priceModifiers ...
3606A0:  LDR.W           R2, [R3,R1,LSL#3]
3606A4:  CMP             R2, R0
3606A6:  BEQ             loc_3606AE
3606A8:  ADDS            R1, #1
3606AA:  CMP             R1, R12
3606AC:  BLT             loc_3606A0
3606AE:  CMP             R1, R12
3606B0:  BEQ             locret_3606E0
3606B2:  LDR             R0, =(_ZN9CShopping20ms_numPriceModifiersE_ptr - 0x3606BC)
3606B4:  CMP.W           R12, #2
3606B8:  ADD             R0, PC; _ZN9CShopping20ms_numPriceModifiersE_ptr
3606BA:  LDR             R2, [R0]; CShopping::ms_numPriceModifiers ...
3606BC:  SUB.W           R0, R12, #1
3606C0:  STR             R0, [R2]; CShopping::ms_numPriceModifiers
3606C2:  IT LT
3606C4:  BXLT            LR
3606C6:  LDR             R2, =(_ZN9CShopping17ms_priceModifiersE_ptr - 0x3606CC)
3606C8:  ADD             R2, PC; _ZN9CShopping17ms_priceModifiersE_ptr
3606CA:  LDR             R2, [R2]; CShopping::ms_priceModifiers ...
3606CC:  LDR.W           R3, [R2,R0,LSL#3]
3606D0:  ADD.W           R0, R2, R0,LSL#3
3606D4:  LDR             R0, [R0,#4]
3606D6:  STR.W           R3, [R2,R1,LSL#3]
3606DA:  ADD.W           R1, R2, R1,LSL#3
3606DE:  STR             R0, [R1,#4]
3606E0:  BX              LR
