; =========================================================
; Game Engine Function: sub_102810
; Address            : 0x102810 - 0x10286E
; =========================================================

102810:  PUSH            {R7,LR}
102812:  MOV             R7, SP
102814:  MOVW            R12, #0xFFFF
102818:  CMP             R1, R12
10281A:  BEQ             loc_102842
10281C:  LDR.W           LR, [R2]
102820:  STR.W           LR, [R0,#0x10]
102824:  LDR.W           LR, [R2,#4]
102828:  STR.W           LR, [R0,#0x14]
10282C:  LDR             R2, [R2,#8]
10282E:  LDR.W           R12, [R7,#8+arg_0]
102832:  VLDR            S0, [R3]
102836:  VLDR            S2, [R3,#4]
10283A:  STR             R2, [R0,#0x18]
10283C:  VLDR            S4, [R3,#8]
102840:  B               loc_10285A
102842:  VLDR            S0, =0.0
102846:  MOV.W           R12, #0
10284A:  STRD.W          R12, R12, [R0,#0x10]
10284E:  STR.W           R12, [R0,#0x18]
102852:  VMOV.F32        S2, S0
102856:  VMOV.F32        S4, S0
10285A:  STRB.W          R12, [R0,#0x28]
10285E:  VSTR            S0, [R0,#0x1C]
102862:  VSTR            S2, [R0,#0x20]
102866:  VSTR            S4, [R0,#0x24]
10286A:  STRH            R1, [R0,#0xE]
10286C:  POP             {R7,PC}
