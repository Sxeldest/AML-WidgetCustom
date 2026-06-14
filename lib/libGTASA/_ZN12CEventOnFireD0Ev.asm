; =========================================================
; Game Engine Function: _ZN12CEventOnFireD0Ev
; Address            : 0x3788F4 - 0x378920
; =========================================================

3788F4:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x3788FA)
3788F6:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
3788F8:  LDR             R1, [R1]; CPools::ms_pEventPool ...
3788FA:  LDR             R1, [R1]; CPools::ms_pEventPool
3788FC:  LDRD.W          R2, R3, [R1]
378900:  SUBS            R0, R0, R2
378902:  MOV             R2, #0xF0F0F0F1
37890A:  ASRS            R0, R0, #2
37890C:  MULS            R0, R2
37890E:  LDRB            R2, [R3,R0]
378910:  ORR.W           R2, R2, #0x80
378914:  STRB            R2, [R3,R0]
378916:  LDR             R2, [R1,#0xC]
378918:  CMP             R0, R2
37891A:  IT LT
37891C:  STRLT           R0, [R1,#0xC]
37891E:  BX              LR
