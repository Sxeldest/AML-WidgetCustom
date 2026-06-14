; =========================================================
; Game Engine Function: _ZN9CShopping10GetNameTagEj
; Address            : 0x36076C - 0x3607A8
; =========================================================

36076C:  LDR             R1, =(_ZN9CShopping12ms_numPricesE_ptr - 0x360772)
36076E:  ADD             R1, PC; _ZN9CShopping12ms_numPricesE_ptr
360770:  LDR             R1, [R1]; CShopping::ms_numPrices ...
360772:  LDR.W           R12, [R1]; CShopping::ms_numPrices
360776:  CMP.W           R12, #1
36077A:  BLT             loc_360792
36077C:  LDR             R1, =(_ZN9CShopping9ms_pricesE_ptr - 0x360782)
36077E:  ADD             R1, PC; _ZN9CShopping9ms_pricesE_ptr
360780:  LDR             R3, [R1]; CShopping::ms_prices ...
360782:  MOVS            R1, #0
360784:  LDR             R2, [R3]; CShopping::ms_prices
360786:  CMP             R2, R0
360788:  BEQ             loc_360796
36078A:  ADDS            R1, #1
36078C:  ADDS            R3, #0x18
36078E:  CMP             R1, R12
360790:  BLT             loc_360784
360792:  MOV.W           R1, #0xFFFFFFFF
360796:  LDR             R0, =(_ZN9CShopping9ms_pricesE_ptr - 0x3607A0)
360798:  ADD.W           R1, R1, R1,LSL#1
36079C:  ADD             R0, PC; _ZN9CShopping9ms_pricesE_ptr
36079E:  LDR             R0, [R0]; CShopping::ms_prices ...
3607A0:  ADD.W           R0, R0, R1,LSL#3
3607A4:  ADDS            R0, #0x10
3607A6:  BX              LR
