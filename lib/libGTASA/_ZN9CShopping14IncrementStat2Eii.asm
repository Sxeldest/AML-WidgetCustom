; =========================================================
; Game Engine Function: _ZN9CShopping14IncrementStat2Eii
; Address            : 0x360864 - 0x36088A
; =========================================================

360864:  ADDS            R2, R0, #1; float
360866:  IT EQ
360868:  BXEQ            LR
36086A:  CMP             R0, #0x50 ; 'P'
36086C:  IT NE
36086E:  CMPNE           R0, #0x42 ; 'B'
360870:  BNE             loc_360878
360872:  ADD.W           R1, R1, R1,LSL#2
360876:  LSLS            R1, R1, #1
360878:  VMOV            S0, R1
36087C:  UXTH            R0, R0; this
36087E:  VCVT.F32.S32    S0, S0
360882:  VMOV            R1, S0; unsigned __int16
360886:  B.W             sub_1983FC
