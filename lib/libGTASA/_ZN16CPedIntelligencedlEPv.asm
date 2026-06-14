; =========================================================
; Game Engine Function: _ZN16CPedIntelligencedlEPv
; Address            : 0x4C2488 - 0x4C24B4
; =========================================================

4C2488:  LDR             R1, =(_ZN6CPools23ms_pPedIntelligencePoolE_ptr - 0x4C248E)
4C248A:  ADD             R1, PC; _ZN6CPools23ms_pPedIntelligencePoolE_ptr
4C248C:  LDR             R1, [R1]; CPools::ms_pPedIntelligencePool ...
4C248E:  LDR             R1, [R1]; CPools::ms_pPedIntelligencePool
4C2490:  LDRD.W          R2, R3, [R1]
4C2494:  SUBS            R0, R0, R2
4C2496:  MOV             R2, #0x2B2E43DB
4C249E:  ASRS            R0, R0, #3
4C24A0:  MULS            R0, R2
4C24A2:  LDRB            R2, [R3,R0]
4C24A4:  ORR.W           R2, R2, #0x80
4C24A8:  STRB            R2, [R3,R0]
4C24AA:  LDR             R2, [R1,#0xC]
4C24AC:  CMP             R0, R2
4C24AE:  IT LT
4C24B0:  STRLT           R0, [R1,#0xC]
4C24B2:  BX              LR
