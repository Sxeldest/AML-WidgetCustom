; =========================================================
; Game Engine Function: _ZN16CSimpleTransform6InvertERKS_
; Address            : 0x40864A - 0x4086BC
; =========================================================

40864A:  PUSH            {R4-R7,LR}
40864C:  ADD             R7, SP, #0xC
40864E:  PUSH.W          {R8}
408652:  MOV             R4, R1
408654:  MOV             R5, R0
408656:  LDR             R6, [R4,#0xC]
408658:  MOV             R0, R6; x
40865A:  BLX             cosf
40865E:  MOV             R8, R0
408660:  MOV             R0, R6; x
408662:  BLX             sinf
408666:  VLDR            S0, [R4]
40866A:  VMOV            S6, R8
40866E:  VLDR            S2, [R4,#4]
408672:  VMOV            S4, R0
408676:  VNMUL.F32       S0, S6, S0
40867A:  VMUL.F32        S2, S4, S2
40867E:  VSUB.F32        S0, S0, S2
408682:  VSTR            S0, [R5]
408686:  VLDR            S0, [R4]
40868A:  VLDR            S2, [R4,#4]
40868E:  VMUL.F32        S0, S4, S0
408692:  VMUL.F32        S2, S6, S2
408696:  VSUB.F32        S0, S0, S2
40869A:  VSTR            S0, [R5,#4]
40869E:  VLDR            S0, [R4,#8]
4086A2:  VNEG.F32        S0, S0
4086A6:  VSTR            S0, [R5,#8]
4086AA:  VLDR            S0, [R4,#0xC]
4086AE:  VNEG.F32        S0, S0
4086B2:  VSTR            S0, [R5,#0xC]
4086B6:  POP.W           {R8}
4086BA:  POP             {R4-R7,PC}
