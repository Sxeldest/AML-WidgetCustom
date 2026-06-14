; =========================================================
; Game Engine Function: _ZN6CStats13ConvertToSecsEi
; Address            : 0x419EB8 - 0x419EEA
; =========================================================

419EB8:  MVNS            R1, R0
419EBA:  CMN.W           R1, #0x3C ; '<'
419EBE:  IT LE
419EC0:  MOVLE           R1, #0xFFFFFFC4
419EC4:  MOVW            R2, #0x8889
419EC8:  ADD             R1, R0
419ECA:  MOVT            R2, #0x8888
419ECE:  ADDS            R1, #0x3C ; '<'
419ED0:  UMULL.W         R2, R3, R1, R2
419ED4:  LSRS            R2, R3, #5
419ED6:  LSLS            R2, R2, #4
419ED8:  SUB.W           R2, R2, R3,LSR#5
419EDC:  SUB.W           R2, R1, R2,LSL#2
419EE0:  SUBS            R1, R2, R1
419EE2:  ADDS            R0, R0, R1
419EE4:  IT MI
419EE6:  NEGMI           R0, R0
419EE8:  BX              LR
