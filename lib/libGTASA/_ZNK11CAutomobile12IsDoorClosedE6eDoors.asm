; =========================================================
; Game Engine Function: _ZNK11CAutomobile12IsDoorClosedE6eDoors
; Address            : 0x550AB0 - 0x550AC0
; =========================================================

550AB0:  ADD.W           R1, R1, R1,LSL#1
550AB4:  ADD.W           R0, R0, R1,LSL#3
550AB8:  ADDW            R0, R0, #0x5CC; this
550ABC:  B.W             sub_18E7BC
