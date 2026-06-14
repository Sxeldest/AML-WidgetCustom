; =========================================================
; Game Engine Function: _ZN11CPointRoutedlEPv
; Address            : 0x3271C4 - 0x3271F0
; =========================================================

3271C4:  LDR             R1, =(_ZN6CPools18ms_pPointRoutePoolE_ptr - 0x3271CA)
3271C6:  ADD             R1, PC; _ZN6CPools18ms_pPointRoutePoolE_ptr
3271C8:  LDR             R1, [R1]; CPools::ms_pPointRoutePool ...
3271CA:  LDR             R1, [R1]; CPools::ms_pPointRoutePool
3271CC:  LDRD.W          R2, R3, [R1]
3271D0:  SUBS            R0, R0, R2
3271D2:  MOV             R2, #0xC28F5C29
3271DA:  ASRS            R0, R0, #2
3271DC:  MULS            R0, R2
3271DE:  LDRB            R2, [R3,R0]
3271E0:  ORR.W           R2, R2, #0x80
3271E4:  STRB            R2, [R3,R0]
3271E6:  LDR             R2, [R1,#0xC]
3271E8:  CMP             R0, R2
3271EA:  IT LT
3271EC:  STRLT           R0, [R1,#0xC]
3271EE:  BX              LR
