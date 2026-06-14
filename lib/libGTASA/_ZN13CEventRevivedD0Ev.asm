; =========================================================
; Game Engine Function: _ZN13CEventRevivedD0Ev
; Address            : 0x3746B0 - 0x3746DC
; =========================================================

3746B0:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x3746B6)
3746B2:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
3746B4:  LDR             R1, [R1]; CPools::ms_pEventPool ...
3746B6:  LDR             R1, [R1]; CPools::ms_pEventPool
3746B8:  LDRD.W          R2, R3, [R1]
3746BC:  SUBS            R0, R0, R2
3746BE:  MOV             R2, #0xF0F0F0F1
3746C6:  ASRS            R0, R0, #2
3746C8:  MULS            R0, R2
3746CA:  LDRB            R2, [R3,R0]
3746CC:  ORR.W           R2, R2, #0x80
3746D0:  STRB            R2, [R3,R0]
3746D2:  LDR             R2, [R1,#0xC]
3746D4:  CMP             R0, R2
3746D6:  IT LT
3746D8:  STRLT           R0, [R1,#0xC]
3746DA:  BX              LR
