; =========================================================
; Game Engine Function: _ZN12CHIDKeyboard24InternalGetMappingWeightE10HIDMapping
; Address            : 0x2953EA - 0x29543A
; =========================================================

2953EA:  VMOV.F32        S0, #1.0
2953EE:  LDR.W           R12, [R0,#8]
2953F2:  CMP.W           R12, #0
2953F6:  BEQ             loc_29540E
2953F8:  LDR             R0, [R0,#0xC]
2953FA:  MOVS            R3, #0
2953FC:  ADDS            R0, #0xC
2953FE:  LDR.W           R2, [R0,#-8]
295402:  CMP             R2, R1
295404:  BEQ             loc_295414
295406:  ADDS            R3, #1
295408:  ADDS            R0, #0x14
29540A:  CMP             R3, R12
29540C:  BCC             loc_2953FE
29540E:  VMOV            R0, S0
295412:  BX              LR
295414:  LDR             R0, [R0]
295416:  CMP             R0, #3
295418:  ITTT EQ
29541A:  VMOVEQ.F32      S0, #0.25
29541E:  VMOVEQ          R0, S0
295422:  BXEQ            LR
295424:  VMOV.F32        S2, #0.25
295428:  CMP             R0, #4
29542A:  VMOV.F32        S0, #1.0
29542E:  IT EQ
295430:  VMOVEQ.F32      S0, S2
295434:  VMOV            R0, S0
295438:  BX              LR
