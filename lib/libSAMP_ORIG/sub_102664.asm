; =========================================================
; Game Engine Function: sub_102664
; Address            : 0x102664 - 0x1026A0
; =========================================================

102664:  PUSH            {R4-R7,LR}
102666:  ADD             R7, SP, #0xC
102668:  PUSH.W          {R8}
10266C:  MOV             R8, R2
10266E:  MOV             R5, R1
102670:  MOV             R4, R0
102672:  BL              sub_1006E0
102676:  CBZ             R0, loc_102698
102678:  MOV             R6, R0
10267A:  ADD.W           R0, R4, #0x198
10267E:  MOVS            R1, #0x14
102680:  BL              sub_FFA98
102684:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle10PrefixExprE - 0x10268C); `vtable for'`anonymous namespace'::itanium_demangle::PrefixExpr ...
102686:  LDR             R1, =0x101013A
102688:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::PrefixExpr
10268A:  STRD.W          R5, R8, [R0,#8]
10268E:  ADDS            R2, #8
102690:  STR             R6, [R0,#0x10]
102692:  STRD.W          R2, R1, [R0]
102696:  B               loc_10269A
102698:  MOVS            R0, #0
10269A:  POP.W           {R8}
10269E:  POP             {R4-R7,PC}
