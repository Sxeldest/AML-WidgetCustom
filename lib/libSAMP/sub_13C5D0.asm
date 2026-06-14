; =========================================================
; Game Engine Function: sub_13C5D0
; Address            : 0x13C5D0 - 0x13C602
; =========================================================

13C5D0:  PUSH            {R4,R6,R7,LR}
13C5D2:  ADD             R7, SP, #8
13C5D4:  VLDR            S0, [R0,#0x24]
13C5D8:  ADD.W           R1, R0, #0x64 ; 'd'
13C5DC:  VLDR            S2, [R0,#0x64]
13C5E0:  MOV             R4, R0
13C5E2:  VCMP.F32        S2, S0
13C5E6:  VMRS            APSR_nzcv, FPSCR
13C5EA:  IT GE
13C5EC:  VMOVGE.F32      S0, S2
13C5F0:  VSTR            S0, [R0,#0x64]
13C5F4:  BL              sub_13D960
13C5F8:  MOV             R0, R4
13C5FA:  POP.W           {R4,R6,R7,LR}
13C5FE:  B.W             sub_13DDD0
