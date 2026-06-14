; =========================================================
; Game Engine Function: _Z7HashMemPKhj
; Address            : 0x1E7268 - 0x1E7280
; =========================================================

1E7268:  MOVS            R2, #0
1E726A:  CBZ             R1, loc_1E727A
1E726C:  LDRB.W          R3, [R0],#1
1E7270:  ADD.W           R2, R2, R2,LSL#5
1E7274:  SUBS            R1, #1
1E7276:  ADD             R2, R3
1E7278:  BNE             loc_1E726C
1E727A:  ADD.W           R0, R2, R2,LSR#5
1E727E:  BX              LR
