; =========================================================
; Game Engine Function: _ZNK11CAutomobile22GetDooorAngleOpenRatioE6eDoors
; Address            : 0x550A40 - 0x550A50
; =========================================================

550A40:  ADD.W           R1, R1, R1,LSL#1
550A44:  ADD.W           R0, R0, R1,LSL#3
550A48:  ADDW            R0, R0, #0x5CC; this
550A4C:  B.W             sub_19BFC8
