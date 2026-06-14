; =========================================================
; Game Engine Function: _ZN9CShopping8GetPriceEj
; Address            : 0x3606F4 - 0x360756
; =========================================================

3606F4:  LDR             R1, =(_ZN9CShopping12ms_numPricesE_ptr - 0x3606FA)
3606F6:  ADD             R1, PC; _ZN9CShopping12ms_numPricesE_ptr
3606F8:  LDR             R1, [R1]; CShopping::ms_numPrices ...
3606FA:  LDR.W           R12, [R1]; CShopping::ms_numPrices
3606FE:  CMP.W           R12, #1
360702:  BLT             loc_36071A
360704:  LDR             R1, =(_ZN9CShopping9ms_pricesE_ptr - 0x36070A)
360706:  ADD             R1, PC; _ZN9CShopping9ms_pricesE_ptr
360708:  LDR             R3, [R1]; CShopping::ms_prices ...
36070A:  MOVS            R1, #0
36070C:  LDR             R2, [R3]; CShopping::ms_prices
36070E:  CMP             R2, R0
360710:  BEQ             loc_36071E
360712:  ADDS            R1, #1
360714:  ADDS            R3, #0x18
360716:  CMP             R1, R12
360718:  BLT             loc_36070C
36071A:  MOV.W           R1, #0xFFFFFFFF
36071E:  LDR             R0, =(_ZN9CShopping9ms_pricesE_ptr - 0x36072A)
360720:  ADD.W           R1, R1, R1,LSL#1
360724:  LDR             R2, =(_ZN9CTheZones11m_CurrLevelE_ptr - 0x36072C)
360726:  ADD             R0, PC; _ZN9CShopping9ms_pricesE_ptr
360728:  ADD             R2, PC; _ZN9CTheZones11m_CurrLevelE_ptr
36072A:  LDR             R0, [R0]; CShopping::ms_prices ...
36072C:  LDR             R2, [R2]; CTheZones::m_CurrLevel ...
36072E:  ADD.W           R0, R0, R1,LSL#3
360732:  VLDR            S0, [R0,#4]
360736:  LDR             R0, =(unk_6101C0 - 0x360742)
360738:  LDR             R1, [R2]; CTheZones::m_CurrLevel
36073A:  VCVT.F32.S32    S0, S0
36073E:  ADD             R0, PC; unk_6101C0
360740:  ADD.W           R0, R0, R1,LSL#2
360744:  VLDR            S2, [R0]
360748:  VMUL.F32        S0, S2, S0
36074C:  VCVT.S32.F32    S0, S0
360750:  VMOV            R0, S0
360754:  BX              LR
