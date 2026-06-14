; =========================================================
; Game Engine Function: _ZN9CShopping8FindItemEj
; Address            : 0x3605AC - 0x3605D8
; =========================================================

3605AC:  MOV             R12, R0
3605AE:  LDR             R0, =(_ZN9CShopping12ms_numPricesE_ptr - 0x3605B4)
3605B0:  ADD             R0, PC; _ZN9CShopping12ms_numPricesE_ptr
3605B2:  LDR             R0, [R0]; CShopping::ms_numPrices ...
3605B4:  LDR             R2, [R0]; CShopping::ms_numPrices
3605B6:  CMP             R2, #1
3605B8:  BLT             loc_3605D2
3605BA:  LDR             R0, =(_ZN9CShopping9ms_pricesE_ptr - 0x3605C0)
3605BC:  ADD             R0, PC; _ZN9CShopping9ms_pricesE_ptr
3605BE:  LDR             R3, [R0]; CShopping::ms_prices ...
3605C0:  MOVS            R0, #0
3605C2:  LDR             R1, [R3]; CShopping::ms_prices
3605C4:  CMP             R1, R12
3605C6:  IT EQ
3605C8:  BXEQ            LR
3605CA:  ADDS            R0, #1
3605CC:  ADDS            R3, #0x18
3605CE:  CMP             R0, R2
3605D0:  BLT             loc_3605C2
3605D2:  MOV.W           R0, #0xFFFFFFFF
3605D6:  BX              LR
