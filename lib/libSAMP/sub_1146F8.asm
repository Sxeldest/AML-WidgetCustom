; =========================================================
; Game Engine Function: sub_1146F8
; Address            : 0x1146F8 - 0x1147D8
; =========================================================

1146F8:  PUSH            {R4-R7,LR}
1146FA:  ADD             R7, SP, #0xC
1146FC:  PUSH.W          {R11}
114700:  VPUSH           {D8-D11}
114704:  SUB             SP, SP, #0x40
114706:  MOV             R5, R0
114708:  LDR             R0, [R0]
11470A:  ADDS            R4, R5, #4
11470C:  MOV             R1, R5
11470E:  LDR             R3, [R0,#8]
114710:  ADD             R0, SP, #0x70+var_38
114712:  MOV             R2, R4
114714:  BLX             R3
114716:  LDR             R0, [R5]
114718:  MOV             R1, R5
11471A:  MOV             R2, R4
11471C:  VLDR            S16, [SP,#0x70+var_38]
114720:  LDR             R3, [R0,#8]
114722:  ADD             R0, SP, #0x70+var_40
114724:  BLX             R3
114726:  VLDR            S0, [SP,#0x70+var_3C]
11472A:  VCMP.F32        S16, S0
11472E:  VMRS            APSR_nzcv, FPSCR
114732:  BNE             loc_11474E
114734:  LDR             R0, [R5]
114736:  MOV             R1, R5
114738:  MOV             R2, R4
11473A:  LDR             R3, [R0,#8]
11473C:  ADD             R0, SP, #0x70+var_48
11473E:  BLX             R3
114740:  VLDR            S0, [SP,#0x70+var_48]
114744:  VCMP.F32        S0, #0.0
114748:  VMRS            APSR_nzcv, FPSCR
11474C:  BEQ             loc_1147CC
11474E:  LDR.W           R0, [R5,#-0x10]!
114752:  MOV             R1, R5
114754:  LDR             R2, [R0,#0x14]
114756:  ADD             R0, SP, #0x70+var_38
114758:  BLX             R2
11475A:  LDR             R0, [R5]
11475C:  MOV             R1, R5
11475E:  VLDR            S16, [SP,#0x70+var_38]
114762:  LDR             R2, [R0,#0x4C]
114764:  ADD             R0, SP, #0x70+var_40
114766:  BLX             R2
114768:  LDR             R0, [R5]
11476A:  MOV             R1, R5
11476C:  VLDR            S18, [SP,#0x70+var_40]
114770:  LDR             R2, [R0,#0x14]
114772:  ADD             R0, SP, #0x70+var_48
114774:  BLX             R2
114776:  LDR             R0, [R5]
114778:  MOV             R1, R5
11477A:  VLDR            S20, [SP,#0x70+var_44]
11477E:  LDR             R2, [R0,#0x4C]
114780:  ADD             R0, SP, #0x70+var_50
114782:  BLX             R2
114784:  LDR             R0, [R5]
114786:  MOV             R1, R5
114788:  VLDR            S22, [SP,#0x70+var_4C]
11478C:  LDR             R2, [R0,#0x4C]
11478E:  ADD             R0, SP, #0x70+var_58
114790:  BLX             R2
114792:  LDR             R0, [R5]
114794:  MOV             R1, R5
114796:  LDR             R6, [SP,#0x70+var_58]
114798:  LDR             R2, [R0,#0x4C]
11479A:  ADD             R0, SP, #0x70+var_60
11479C:  BLX             R2
11479E:  VMOV.F32        S0, #0.5
1147A2:  MOV.W           R3, #0xFFFFFFFF
1147A6:  VSUB.F32        S2, S16, S18
1147AA:  STR             R3, [SP,#0x70+var_64]
1147AC:  ADD             R3, SP, #0x70+var_64
1147AE:  LDR             R0, [SP,#0x70+var_5C]
1147B0:  STRD.W          R0, R3, [SP,#0x70+var_70]
1147B4:  MOV             R0, R4
1147B6:  MOV             R3, R6
1147B8:  VMUL.F32        S0, S2, S0
1147BC:  VSUB.F32        S2, S20, S22
1147C0:  VMOV            R1, S0
1147C4:  VMOV            R2, S2
1147C8:  BL              sub_163176
1147CC:  ADD             SP, SP, #0x40 ; '@'
1147CE:  VPOP            {D8-D11}
1147D2:  POP.W           {R11}
1147D6:  POP             {R4-R7,PC}
