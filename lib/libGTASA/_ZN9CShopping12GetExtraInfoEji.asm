; =========================================================
; Game Engine Function: _ZN9CShopping12GetExtraInfoEji
; Address            : 0x3607B4 - 0x36081A
; =========================================================

3607B4:  PUSH            {R7,LR}
3607B6:  MOV             R7, SP
3607B8:  LDR             R2, =(_ZN9CShopping12ms_numPricesE_ptr - 0x3607BE)
3607BA:  ADD             R2, PC; _ZN9CShopping12ms_numPricesE_ptr
3607BC:  LDR             R2, [R2]; CShopping::ms_numPrices ...
3607BE:  LDR.W           R12, [R2]; CShopping::ms_numPrices
3607C2:  CMP.W           R12, #1
3607C6:  BLT             loc_3607E2
3607C8:  LDR             R2, =(_ZN9CShopping9ms_pricesE_ptr - 0x3607D2)
3607CA:  MOV.W           LR, #0
3607CE:  ADD             R2, PC; _ZN9CShopping9ms_pricesE_ptr
3607D0:  LDR             R3, [R2]; CShopping::ms_prices ...
3607D2:  LDR             R2, [R3]; CShopping::ms_prices
3607D4:  CMP             R2, R0
3607D6:  BEQ             loc_3607E6
3607D8:  ADD.W           LR, LR, #1
3607DC:  ADDS            R3, #0x18
3607DE:  CMP             LR, R12
3607E0:  BLT             loc_3607D2
3607E2:  MOV.W           LR, #0xFFFFFFFF
3607E6:  CMP             R1, #1
3607E8:  BEQ             loc_360806
3607EA:  CMP             R1, #0
3607EC:  ITT NE
3607EE:  MOVNE           R0, #0
3607F0:  POPNE           {R7,PC}
3607F2:  LDR             R0, =(_ZN9CShopping9ms_pricesE_ptr - 0x3607FC)
3607F4:  ADD.W           R1, LR, LR,LSL#1
3607F8:  ADD             R0, PC; _ZN9CShopping9ms_pricesE_ptr
3607FA:  LDR             R0, [R0]; CShopping::ms_prices ...
3607FC:  ADD.W           R0, R0, R1,LSL#3
360800:  ADDS            R0, #8
360802:  LDR             R0, [R0]
360804:  POP             {R7,PC}
360806:  LDR             R0, =(_ZN9CShopping9ms_pricesE_ptr - 0x360810)
360808:  ADD.W           R1, LR, LR,LSL#1
36080C:  ADD             R0, PC; _ZN9CShopping9ms_pricesE_ptr
36080E:  LDR             R0, [R0]; CShopping::ms_prices ...
360810:  ADD.W           R0, R0, R1,LSL#3
360814:  ADDS            R0, #0xC
360816:  LDR             R0, [R0]
360818:  POP             {R7,PC}
