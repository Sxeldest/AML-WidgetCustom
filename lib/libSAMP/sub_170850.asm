; =========================================================
; Game Engine Function: sub_170850
; Address            : 0x170850 - 0x1709C6
; =========================================================

170850:  PUSH            {R4-R7,LR}
170852:  ADD             R7, SP, #0xC
170854:  PUSH.W          {R8}
170858:  VPUSH           {D8-D13}
17085C:  MOV             R4, R0
17085E:  MOVS            R0, #0
170860:  STRD.W          R0, R0, [R4]
170864:  MOV             R8, R3
170866:  MOV             R5, R2
170868:  MOV             R6, R1
17086A:  LSLS            R0, R1, #0x1F
17086C:  BNE             loc_170878
17086E:  VLDR            S16, =0.0
170872:  VMOV.F32        S18, S16
170876:  B               loc_1708C4
170878:  MOVS            R0, #0x13
17087A:  MOV             R1, R5
17087C:  BL              sub_1706F8
170880:  VMOV            S16, R0
170884:  MOVS            R0, #0x12
170886:  MOV             R1, R5
170888:  BL              sub_1706F8
17088C:  VMOV            S18, R0
170890:  MOVS            R0, #0x15
170892:  MOV             R1, R5
170894:  BL              sub_1706F8
170898:  VMOV            S20, R0
17089C:  MOVS            R0, #0x14
17089E:  MOV             R1, R5
1708A0:  BL              sub_1706F8
1708A4:  VMOV            S0, R0
1708A8:  VLDR            S4, =0.0
1708AC:  VSUB.F32        S2, S16, S18
1708B0:  VSUB.F32        S0, S20, S0
1708B4:  VADD.F32        S18, S2, S4
1708B8:  VADD.F32        S16, S0, S4
1708BC:  VSTR            S18, [R4]
1708C0:  VSTR            S16, [R4,#4]
1708C4:  LSLS            R0, R6, #0x1E
1708C6:  BPL             loc_170910
1708C8:  MOVS            R0, #5
1708CA:  MOV             R1, R5
1708CC:  BL              sub_1706F8
1708D0:  VMOV            S20, R0
1708D4:  MOVS            R0, #4
1708D6:  MOV             R1, R5
1708D8:  BL              sub_1706F8
1708DC:  VMOV            S22, R0
1708E0:  MOVS            R0, #7
1708E2:  MOV             R1, R5
1708E4:  BL              sub_1706F8
1708E8:  VMOV            S24, R0
1708EC:  MOVS            R0, #6
1708EE:  MOV             R1, R5
1708F0:  BL              sub_1706F8
1708F4:  VMOV            S0, R0
1708F8:  VSUB.F32        S2, S20, S22
1708FC:  VSUB.F32        S0, S24, S0
170900:  VADD.F32        S18, S2, S18
170904:  VADD.F32        S16, S0, S16
170908:  VSTR            S18, [R4]
17090C:  VSTR            S16, [R4,#4]
170910:  VMOV            S20, R8
170914:  LSLS            R0, R6, #0x1D
170916:  BPL             loc_170960
170918:  MOVS            R0, #9
17091A:  MOV             R1, R5
17091C:  BL              sub_1706F8
170920:  VMOV            S22, R0
170924:  MOVS            R0, #8
170926:  MOV             R1, R5
170928:  BL              sub_1706F8
17092C:  VMOV            S24, R0
170930:  MOVS            R0, #0xB
170932:  MOV             R1, R5
170934:  BL              sub_1706F8
170938:  VMOV            S26, R0
17093C:  MOVS            R0, #0xA
17093E:  MOV             R1, R5
170940:  BL              sub_1706F8
170944:  VMOV            S0, R0
170948:  VSUB.F32        S2, S22, S24
17094C:  VSUB.F32        S0, S26, S0
170950:  VADD.F32        S18, S2, S18
170954:  VADD.F32        S16, S0, S16
170958:  VSTR            S18, [R4]
17095C:  VSTR            S16, [R4,#4]
170960:  LDR             R0, =(dword_381B58 - 0x17096E)
170962:  VCMP.F32        S20, #0.0
170966:  VLDR            S0, [R7,#arg_0]
17096A:  ADD             R0, PC; dword_381B58
17096C:  VMRS            APSR_nzcv, FPSCR
170970:  BEQ             loc_170992
170972:  LDR             R1, [R0]
170974:  VLDR            S2, [R1,#0x334]
170978:  VCMP.F32        S2, #0.0
17097C:  VMRS            APSR_nzcv, FPSCR
170980:  ITTTT GT
170982:  VMULGT.F32      S16, S16, S20
170986:  VMULGT.F32      S18, S18, S20
17098A:  VSTRGT          S18, [R4]
17098E:  VSTRGT          S16, [R4,#4]
170992:  VCMP.F32        S0, #0.0
170996:  VMRS            APSR_nzcv, FPSCR
17099A:  BEQ             loc_1709BC
17099C:  LDR             R0, [R0]
17099E:  VLDR            S2, [R0,#0x338]
1709A2:  VCMP.F32        S2, #0.0
1709A6:  VMRS            APSR_nzcv, FPSCR
1709AA:  ITTTT GT
1709AC:  VMULGT.F32      S2, S16, S0
1709B0:  VMULGT.F32      S0, S18, S0
1709B4:  VSTRGT          S0, [R4]
1709B8:  VSTRGT          S2, [R4,#4]
1709BC:  VPOP            {D8-D13}
1709C0:  POP.W           {R8}
1709C4:  POP             {R4-R7,PC}
