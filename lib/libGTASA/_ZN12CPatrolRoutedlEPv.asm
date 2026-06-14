; =========================================================
; Game Engine Function: _ZN12CPatrolRoutedlEPv
; Address            : 0x327258 - 0x327284
; =========================================================

327258:  LDR             R1, =(_ZN6CPools19ms_pPatrolRoutePoolE_ptr - 0x32725E)
32725A:  ADD             R1, PC; _ZN6CPools19ms_pPatrolRoutePoolE_ptr
32725C:  LDR             R1, [R1]; CPools::ms_pPatrolRoutePool ...
32725E:  LDR             R1, [R1]; CPools::ms_pPatrolRoutePool
327260:  LDRD.W          R2, R3, [R1]
327264:  SUBS            R0, R0, R2
327266:  MOV             R2, #0xD8FD8FD9
32726E:  ASRS            R0, R0, #2
327270:  MULS            R0, R2
327272:  LDRB            R2, [R3,R0]
327274:  ORR.W           R2, R2, #0x80
327278:  STRB            R2, [R3,R0]
32727A:  LDR             R2, [R1,#0xC]
32727C:  CMP             R0, R2
32727E:  IT LT
327280:  STRLT           R0, [R1,#0xC]
327282:  BX              LR
