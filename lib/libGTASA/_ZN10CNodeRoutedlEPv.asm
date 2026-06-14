; =========================================================
; Game Engine Function: _ZN10CNodeRoutedlEPv
; Address            : 0x3272EC - 0x327318
; =========================================================

3272EC:  LDR             R1, =(_ZN6CPools17ms_pNodeRoutePoolE_ptr - 0x3272F2)
3272EE:  ADD             R1, PC; _ZN6CPools17ms_pNodeRoutePoolE_ptr
3272F0:  LDR             R1, [R1]; CPools::ms_pNodeRoutePool ...
3272F2:  LDR             R1, [R1]; CPools::ms_pNodeRoutePool
3272F4:  LDRD.W          R2, R3, [R1]
3272F8:  SUBS            R0, R0, R2
3272FA:  MOV             R2, #0x38E38E39
327302:  ASRS            R0, R0, #2
327304:  MULS            R0, R2
327306:  LDRB            R2, [R3,R0]
327308:  ORR.W           R2, R2, #0x80
32730C:  STRB            R2, [R3,R0]
32730E:  LDR             R2, [R1,#0xC]
327310:  CMP             R0, R2
327312:  IT LT
327314:  STRLT           R0, [R1,#0xC]
327316:  BX              LR
