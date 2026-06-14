; =========================================================
; Game Engine Function: _ZN9CShopping13IncrementStatEii
; Address            : 0x36082C - 0x360860
; =========================================================

36082C:  ADDS            R2, R0, #1
36082E:  IT EQ
360830:  BXEQ            LR
360832:  LDR             R2, =(unk_6101A8 - 0x360838)
360834:  ADD             R2, PC; unk_6101A8
360836:  LDR.W           R0, [R2,R0,LSL#2]
36083A:  ADDS            R2, R0, #1; float
36083C:  BEQ             locret_36085E
36083E:  CMP             R0, #0x50 ; 'P'
360840:  IT NE
360842:  CMPNE           R0, #0x42 ; 'B'
360844:  BNE             loc_36084C
360846:  ADD.W           R1, R1, R1,LSL#2
36084A:  LSLS            R1, R1, #1
36084C:  VMOV            S0, R1
360850:  UXTH            R0, R0; this
360852:  VCVT.F32.S32    S0, S0
360856:  VMOV            R1, S0; unsigned __int16
36085A:  B.W             sub_1983FC
36085E:  BX              LR
