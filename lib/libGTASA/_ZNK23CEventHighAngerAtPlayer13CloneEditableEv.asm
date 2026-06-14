; =========================================================
; Game Engine Function: _ZNK23CEventHighAngerAtPlayer13CloneEditableEv
; Address            : 0x3785C8 - 0x378644
; =========================================================

3785C8:  PUSH            {R7,LR}
3785CA:  MOV             R7, SP
3785CC:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x3785D6)
3785CE:  MOV.W           LR, #0
3785D2:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
3785D4:  LDR             R0, [R0]; CPools::ms_pEventPool ...
3785D6:  LDR             R1, [R0]; CPools::ms_pEventPool
3785D8:  LDRD.W          R12, R0, [R1,#8]
3785DC:  ADDS            R0, #1
3785DE:  STR             R0, [R1,#0xC]
3785E0:  CMP             R0, R12
3785E2:  BNE             loc_3785F2
3785E4:  MOVS            R0, #0
3785E6:  MOVS.W          R2, LR,LSL#31
3785EA:  STR             R0, [R1,#0xC]
3785EC:  BNE             loc_378624
3785EE:  MOV.W           LR, #1
3785F2:  LDR             R2, [R1,#4]
3785F4:  LDRSB           R3, [R2,R0]
3785F6:  CMP.W           R3, #0xFFFFFFFF
3785FA:  BGT             loc_3785DC
3785FC:  AND.W           R3, R3, #0x7F
378600:  STRB            R3, [R2,R0]
378602:  LDR             R0, [R1,#4]
378604:  LDR             R2, [R1,#0xC]
378606:  LDRB            R3, [R0,R2]
378608:  AND.W           R12, R3, #0x80
37860C:  ADDS            R3, #1
37860E:  AND.W           R3, R3, #0x7F
378612:  ORR.W           R3, R3, R12
378616:  STRB            R3, [R0,R2]
378618:  LDR             R0, [R1]
37861A:  LDR             R1, [R1,#0xC]
37861C:  ADD.W           R1, R1, R1,LSL#4
378620:  ADD.W           R0, R0, R1,LSL#2
378624:  LDR             R1, =(_ZTV23CEventHighAngerAtPlayer_ptr - 0x378632)
378626:  MOVS            R2, #0
378628:  STR             R2, [R0,#4]
37862A:  MOVW            R2, #0x100
37862E:  ADD             R1, PC; _ZTV23CEventHighAngerAtPlayer_ptr
378630:  MOVT            R2, #0xC8
378634:  STR             R2, [R0,#8]
378636:  MOVW            R2, #0xFFFF
37863A:  LDR             R1, [R1]; `vtable for'CEventHighAngerAtPlayer ...
37863C:  STRH            R2, [R0,#0xC]
37863E:  ADDS            R1, #8
378640:  STR             R1, [R0]
378642:  POP             {R7,PC}
