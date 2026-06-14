; =========================================================
; Game Engine Function: _ZN35CEventLeaderQuitEnteringCarAsDriverD0Ev
; Address            : 0x378838 - 0x378864
; =========================================================

378838:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37883E)
37883A:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
37883C:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37883E:  LDR             R1, [R1]; CPools::ms_pEventPool
378840:  LDRD.W          R2, R3, [R1]
378844:  SUBS            R0, R0, R2
378846:  MOV             R2, #0xF0F0F0F1
37884E:  ASRS            R0, R0, #2
378850:  MULS            R0, R2
378852:  LDRB            R2, [R3,R0]
378854:  ORR.W           R2, R2, #0x80
378858:  STRB            R2, [R3,R0]
37885A:  LDR             R2, [R1,#0xC]
37885C:  CMP             R0, R2
37885E:  IT LT
378860:  STRLT           R0, [R1,#0xC]
378862:  BX              LR
