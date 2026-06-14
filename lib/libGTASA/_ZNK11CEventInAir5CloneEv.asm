; =========================================================
; Game Engine Function: _ZNK11CEventInAir5CloneEv
; Address            : 0x37A71C - 0x37A78A
; =========================================================

37A71C:  PUSH            {R7,LR}
37A71E:  MOV             R7, SP
37A720:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37A72A)
37A722:  MOV.W           LR, #0
37A726:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
37A728:  LDR             R0, [R0]; CPools::ms_pEventPool ...
37A72A:  LDR             R1, [R0]; CPools::ms_pEventPool
37A72C:  LDRD.W          R12, R0, [R1,#8]
37A730:  ADDS            R0, #1
37A732:  STR             R0, [R1,#0xC]
37A734:  CMP             R0, R12
37A736:  BNE             loc_37A746
37A738:  MOVS            R0, #0
37A73A:  MOVS.W          R2, LR,LSL#31
37A73E:  STR             R0, [R1,#0xC]
37A740:  BNE             loc_37A778
37A742:  MOV.W           LR, #1
37A746:  LDR             R2, [R1,#4]
37A748:  LDRSB           R3, [R2,R0]
37A74A:  CMP.W           R3, #0xFFFFFFFF
37A74E:  BGT             loc_37A730
37A750:  AND.W           R3, R3, #0x7F
37A754:  STRB            R3, [R2,R0]
37A756:  LDR             R0, [R1,#4]
37A758:  LDR             R2, [R1,#0xC]
37A75A:  LDRB            R3, [R0,R2]
37A75C:  AND.W           R12, R3, #0x80
37A760:  ADDS            R3, #1
37A762:  AND.W           R3, R3, #0x7F
37A766:  ORR.W           R3, R3, R12
37A76A:  STRB            R3, [R0,R2]
37A76C:  LDR             R0, [R1]
37A76E:  LDR             R1, [R1,#0xC]
37A770:  ADD.W           R1, R1, R1,LSL#4
37A774:  ADD.W           R0, R0, R1,LSL#2
37A778:  LDR             R1, =(_ZTV11CEventInAir_ptr - 0x37A782)
37A77A:  MOVS            R2, #0
37A77C:  STRB            R2, [R0,#8]
37A77E:  ADD             R1, PC; _ZTV11CEventInAir_ptr
37A780:  LDR             R1, [R1]; `vtable for'CEventInAir ...
37A782:  ADDS            R1, #8
37A784:  STRD.W          R1, R2, [R0]
37A788:  POP             {R7,PC}
