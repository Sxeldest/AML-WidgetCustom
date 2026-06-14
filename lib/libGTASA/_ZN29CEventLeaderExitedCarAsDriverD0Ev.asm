; =========================================================
; Game Engine Function: _ZN29CEventLeaderExitedCarAsDriverD0Ev
; Address            : 0x378774 - 0x3787A0
; =========================================================

378774:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37877A)
378776:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
378778:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37877A:  LDR             R1, [R1]; CPools::ms_pEventPool
37877C:  LDRD.W          R2, R3, [R1]
378780:  SUBS            R0, R0, R2
378782:  MOV             R2, #0xF0F0F0F1
37878A:  ASRS            R0, R0, #2
37878C:  MULS            R0, R2
37878E:  LDRB            R2, [R3,R0]
378790:  ORR.W           R2, R2, #0x80
378794:  STRB            R2, [R3,R0]
378796:  LDR             R2, [R1,#0xC]
378798:  CMP             R0, R2
37879A:  IT LT
37879C:  STRLT           R0, [R1,#0xC]
37879E:  BX              LR
