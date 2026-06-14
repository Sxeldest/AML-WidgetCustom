; =========================================================
; Game Engine Function: sub_117746
; Address            : 0x117746 - 0x11778A
; =========================================================

117746:  PUSH            {R4,R5,R7,LR}
117748:  ADD             R7, SP, #8
11774A:  VPUSH           {D8}
11774E:  SUB             SP, SP, #0x10
117750:  MOV             R5, R0
117752:  LDR             R0, [R1]
117754:  MOV             R4, R1
117756:  LDR             R2, [R0,#0x24]
117758:  ADD             R0, SP, #0x20+var_18
11775A:  BLX             R2
11775C:  LDR             R0, [R4]
11775E:  MOV             R1, R4
117760:  VLDR            S16, [SP,#0x20+var_18]
117764:  LDR             R2, [R0,#0x58]
117766:  MOV             R0, SP
117768:  BLX             R2
11776A:  VMOV.F32        S0, #20.0
11776E:  VLDR            S2, [SP,#0x20+var_20]
117772:  MOVS            R0, #0
117774:  STR             R0, [R5,#4]
117776:  VADD.F32        S0, S2, S0
11777A:  VSUB.F32        S0, S16, S0
11777E:  VSTR            S0, [R5]
117782:  ADD             SP, SP, #0x10
117784:  VPOP            {D8}
117788:  POP             {R4,R5,R7,PC}
