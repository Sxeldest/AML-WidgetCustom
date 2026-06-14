; =========================================================
; Game Engine Function: sub_1118C0
; Address            : 0x1118C0 - 0x111930
; =========================================================

1118C0:  PUSH            {R7,LR}
1118C2:  MOV             R7, SP
1118C4:  SUB             SP, SP, #0x10
1118C6:  LDR             R3, [R0,#0x18]
1118C8:  ADDS            R2, R3, #1
1118CA:  STR             R2, [R0,#0x18]
1118CC:  CBZ             R3, loc_111924
1118CE:  CMP             R2, #4
1118D0:  BNE             loc_11192C
1118D2:  VLDR            S2, [R0,#0x1C]
1118D6:  VLDR            S0, [R1]
1118DA:  VLDR            S4, [R0,#0x20]
1118DE:  VSUB.F32        S6, S0, S2
1118E2:  VSTR            S6, [R0,#0x24]
1118E6:  VLDR            S0, [R1,#0xC]
1118EA:  LDR             R1, [R0,#0x10]
1118EC:  VSUB.F32        S0, S0, S4
1118F0:  CMP             R1, #2
1118F2:  VSTR            S0, [R0,#0x28]
1118F6:  BNE             loc_11192C
1118F8:  LDR.W           R1, [R0,#0x14]!
1118FC:  CBZ             R1, loc_11192C
1118FE:  VMOV            R1, S2
111902:  MOV.W           LR, #0xFFFFFFFF
111906:  VMOV            R2, S4
11190A:  ADD.W           R12, SP, #0x18+var_C
11190E:  VMOV            R3, S6
111912:  STR.W           LR, [SP,#0x18+var_C]
111916:  STR.W           R12, [SP,#0x18+var_14]
11191A:  VSTR            S0, [SP,#0x18+var_18]
11191E:  BL              sub_163176
111922:  B               loc_11192C
111924:  LDR             R2, [R1]
111926:  STR             R2, [R0,#0x1C]
111928:  LDR             R1, [R1,#0xC]
11192A:  STR             R1, [R0,#0x20]
11192C:  ADD             SP, SP, #0x10
11192E:  POP             {R7,PC}
