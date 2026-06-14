; =========================================================
; Game Engine Function: sub_13B8E4
; Address            : 0x13B8E4 - 0x13B916
; =========================================================

13B8E4:  PUSH            {R4,R6,R7,LR}
13B8E6:  ADD             R7, SP, #8
13B8E8:  VLDR            S0, [R0,#0x24]
13B8EC:  ADD.W           R1, R0, #0x64 ; 'd'
13B8F0:  VLDR            S2, [R0,#0x64]
13B8F4:  MOV             R4, R0
13B8F6:  VCMP.F32        S2, S0
13B8FA:  VMRS            APSR_nzcv, FPSCR
13B8FE:  IT GE
13B900:  VMOVGE.F32      S0, S2
13B904:  VSTR            S0, [R0,#0x64]
13B908:  BL              sub_13D960
13B90C:  MOV             R0, R4
13B90E:  POP.W           {R4,R6,R7,LR}
13B912:  B.W             sub_13DDD0
