; =========================================================
; Game Engine Function: bitexact_log2tan
; Address            : 0x19B8B4 - 0x19B928
; =========================================================

19B8B4:  PUSH            {R4,R5,R7,LR}
19B8B6:  ADD             R7, SP, #8
19B8B8:  CLZ.W           R2, R0
19B8BC:  MOVW            LR, #0xF5DB
19B8C0:  RSB.W           R12, R2, #0x20 ; ' '
19B8C4:  MOVT            LR, #0xFFFF
19B8C8:  RSB.W           R3, R12, #0xF
19B8CC:  LSLS            R0, R3
19B8CE:  CLZ.W           R3, R1
19B8D2:  RSB.W           R5, R3, #0x20 ; ' '
19B8D6:  SXTH            R4, R0
19B8D8:  RSB.W           R2, R5, #0xF
19B8DC:  SMULBB.W        R4, R4, LR
19B8E0:  MOVW            R3, #0xFFFF
19B8E4:  LSLS            R1, R2
19B8E6:  SXTH            R2, R1
19B8E8:  SMULBB.W        R2, R2, LR
19B8EC:  MOV.W           LR, #0x8000
19B8F0:  ADD.W           R4, LR, R4,LSL#1
19B8F4:  BIC.W           R3, R4, R3
19B8F8:  MOV.W           R4, #0x4000
19B8FC:  ADD.W           R2, LR, R2,LSL#1
19B900:  MOV             LR, #0x1EFC0000
19B908:  ADD             R3, LR
19B90A:  BFC.W           R2, #0, #0x10
19B90E:  SMLABT.W        R0, R0, R3, R4
19B912:  ADD             R2, LR
19B914:  SMLABT.W        R1, R1, R2, R4
19B918:  SUB.W           R2, R12, R5
19B91C:  ASRS            R0, R0, #0xF
19B91E:  ADD.W           R0, R0, R2,LSL#11
19B922:  SUB.W           R0, R0, R1,ASR#15
19B926:  POP             {R4,R5,R7,PC}
