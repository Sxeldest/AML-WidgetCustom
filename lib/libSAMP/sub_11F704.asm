; =========================================================
; Game Engine Function: sub_11F704
; Address            : 0x11F704 - 0x11F8AA
; =========================================================

11F704:  PUSH            {R4-R7,LR}
11F706:  ADD             R7, SP, #0xC
11F708:  PUSH.W          {R8-R11}
11F70C:  SUB             SP, SP, #4
11F70E:  VPUSH           {D8-D12}
11F712:  SUB             SP, SP, #0x30
11F714:  MOV             R4, R0
11F716:  LDRB            R0, [R0,#0x1D]
11F718:  LSLS            R0, R0, #0x1F
11F71A:  BNE             loc_11F7C2
11F71C:  LDR             R0, =(off_23494C - 0x11F72A)
11F71E:  MOV             R1, #0x3EBCD1
11F726:  ADD             R0, PC; off_23494C
11F728:  LDR             R0, [R0]; dword_23DF24
11F72A:  LDR             R0, [R0]
11F72C:  ADDS            R2, R0, R1
11F72E:  ADD             R0, SP, #0x78+var_58
11F730:  MOV             R1, R4
11F732:  BLX             R2
11F734:  VLDR            S16, =50.0
11F738:  VLDR            S0, [SP,#0x78+var_58]
11F73C:  VLDR            S24, =60.0
11F740:  VDIV.F32        S0, S0, S16
11F744:  VADD.F32        S0, S0, S24
11F748:  VLDR            S18, [SP,#0x78+var_54]
11F74C:  VLDR            S20, [SP,#0x78+var_50]
11F750:  VLDR            S22, [SP,#0x78+var_4C]
11F754:  VMOV            R0, S0; x
11F758:  BLX             floorf
11F75C:  VDIV.F32        S0, S22, S16
11F760:  MOV             R6, R0
11F762:  VADD.F32        S0, S0, S24
11F766:  VMOV            R0, S0; x
11F76A:  BLX             floorf
11F76E:  VDIV.F32        S0, S20, S16
11F772:  MOV             R8, R0
11F774:  VADD.F32        S0, S0, S24
11F778:  VMOV            R0, S0; x
11F77C:  BLX             floorf
11F780:  VDIV.F32        S0, S18, S16
11F784:  MOV             R5, R0
11F786:  VADD.F32        S0, S0, S24
11F78A:  VMOV            R0, S0; x
11F78E:  BLX             floorf
11F792:  VMOV            S0, R5
11F796:  VMOV            S2, R6
11F79A:  VCVT.S32.F32    S0, S0
11F79E:  VCVT.S32.F32    S2, S2
11F7A2:  VMOV            R1, S0
11F7A6:  VMOV            R2, S2
11F7AA:  STR             R1, [SP,#0x78+var_64]
11F7AC:  STR             R2, [SP,#0x78+var_60]
11F7AE:  CMP             R2, R1
11F7B0:  MOV             R3, R2
11F7B2:  BLE             loc_11F7E8
11F7B4:  ADD             SP, SP, #0x30 ; '0'
11F7B6:  VPOP            {D8-D12}
11F7BA:  ADD             SP, SP, #4
11F7BC:  POP.W           {R8-R11}
11F7C0:  POP             {R4-R7,PC}
11F7C2:  LDR             R0, =(off_23494C - 0x11F7D0)
11F7C4:  MOV             R1, #0x3ED889
11F7CC:  ADD             R0, PC; off_23494C
11F7CE:  LDR             R0, [R0]; dword_23DF24
11F7D0:  LDR             R0, [R0]
11F7D2:  ADD             R1, R0
11F7D4:  MOV             R0, R4
11F7D6:  ADD             SP, SP, #0x30 ; '0'
11F7D8:  VPOP            {D8-D12}
11F7DC:  ADD             SP, SP, #4
11F7DE:  POP.W           {R8-R11}
11F7E2:  POP.W           {R4-R7,LR}
11F7E6:  BX              R1
11F7E8:  VMOV            S0, R0
11F7EC:  VMOV            S2, R8
11F7F0:  VCVT.S32.F32    S0, S0
11F7F4:  VCVT.S32.F32    S2, S2
11F7F8:  VMOV.I32        Q4, #0
11F7FC:  VMOV            R0, S0
11F800:  VMOV            R2, S2
11F804:  STR             R0, [SP,#0x78+var_68]
11F806:  MOV             R1, R0
11F808:  SUBS            R0, R0, R2
11F80A:  ADDS            R0, #1
11F80C:  STRD.W          R0, R2, [SP,#0x78+var_70]
11F810:  LSLS            R0, R2, #4
11F812:  STR             R0, [SP,#0x78+var_74]
11F814:  LDR             R0, =(off_234B5C - 0x11F81A)
11F816:  ADD             R0, PC; off_234B5C
11F818:  LDR             R0, [R0]; dword_381A94
11F81A:  STR             R0, [SP,#0x78+var_5C]
11F81C:  LDRD.W          R1, R0, [SP,#0x78+var_6C]
11F820:  CMP             R1, R0
11F822:  BLE             loc_11F832
11F824:  LDR             R2, [SP,#0x78+var_60]
11F826:  LDR             R1, [SP,#0x78+var_64]
11F828:  ADDS            R0, R2, #1
11F82A:  STR             R0, [SP,#0x78+var_60]
11F82C:  CMP             R2, R1
11F82E:  BNE             loc_11F81C
11F830:  B               loc_11F7B4
11F832:  LDR             R0, [SP,#0x78+var_60]
11F834:  LDRD.W          R10, R9, [SP,#0x78+var_74]
11F838:  AND.W           R11, R0, #0xF
11F83C:  AND.W           R1, R10, #0xF0
11F840:  LDR             R2, [SP,#0x78+var_5C]
11F842:  ADD             R1, R11
11F844:  LDRB.W          R0, [R4,#0x3A]
11F848:  LDR             R2, [R2]
11F84A:  ADD.W           R1, R1, R1,LSL#1
11F84E:  AND.W           R0, R0, #7
11F852:  ADD.W           R8, R2, R1,LSL#2
11F856:  CMP             R0, #4
11F858:  BEQ             loc_11F86E
11F85A:  CMP             R0, #3
11F85C:  BEQ             loc_11F868
11F85E:  CMP             R0, #2
11F860:  ITE EQ
11F862:  MOVEQ           R5, R8
11F864:  MOVNE           R5, #0
11F866:  B               loc_11F872
11F868:  ADD.W           R5, R8, #4
11F86C:  B               loc_11F872
11F86E:  ADD.W           R5, R8, #8
11F872:  MOVS            R0, #0x14
11F874:  BL              sub_163DB4
11F878:  MOV             R6, R0
11F87A:  VST1.32         {D8-D9}, [R0]!
11F87E:  MOVS            R1, #0
11F880:  STR             R1, [R0]
11F882:  MOV             R0, R5
11F884:  MOV             R1, R4
11F886:  BL              sub_163E96
11F88A:  STRD.W          R0, R8, [R6,#4]
11F88E:  LDR.W           R1, [R4,#0xB4]
11F892:  STR             R5, [R6]
11F894:  MOV             R0, R6
11F896:  BL              sub_163DF8
11F89A:  STR.W           R6, [R4,#0xB4]
11F89E:  ADD.W           R10, R10, #0x10
11F8A2:  SUBS.W          R9, R9, #1
11F8A6:  BNE             loc_11F83C
11F8A8:  B               loc_11F824
