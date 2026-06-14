; =========================================================
; Game Engine Function: sub_1138D8
; Address            : 0x1138D8 - 0x113A42
; =========================================================

1138D8:  PUSH            {R4-R7,LR}
1138DA:  ADD             R7, SP, #0xC
1138DC:  PUSH.W          {R8-R11}
1138E0:  SUB             SP, SP, #4
1138E2:  VPUSH           {D8-D14}
1138E6:  SUB             SP, SP, #0x20
1138E8:  MOV             R4, R0
1138EA:  LDR             R0, [R7,#arg_8]
1138EC:  MOV             R5, R4
1138EE:  STR             R0, [SP,#0x78+var_5C]
1138F0:  LDR.W           R0, [R5,#-0x20]!
1138F4:  MOV             R6, R2
1138F6:  ADD.W           R10, SP, #0x78+var_64
1138FA:  MOV             R8, R1
1138FC:  MOV             R1, R5
1138FE:  MOV             R9, R3
113900:  LDR             R2, [R0,#0x14]
113902:  MOV             R0, R10
113904:  LDRB.W          R11, [R4,#0x28]
113908:  VLDR            S26, [R4,#0x1C]
11390C:  BLX             R2
11390E:  LDR             R0, [R5]
113910:  MOV             R1, R5
113912:  VLDR            S28, [SP,#0x78+var_60]
113916:  LDR             R2, [R0,#0x4C]
113918:  ADD             R0, SP, #0x78+var_6C
11391A:  BLX             R2
11391C:  VLDR            S16, [R7,#arg_4]
113920:  VMOV            S18, R9
113924:  VMOV            S22, R6
113928:  VLDR            S20, [R7,#arg_0]
11392C:  VLDR            S2, [SP,#0x78+var_68]
113930:  VADD.F32        S0, S18, S16
113934:  VADD.F32        S4, S22, S20
113938:  VLDR            S6, [R5,#0x38]
11393C:  VSUB.F32        S2, S28, S2
113940:  VLDR            S8, [R4,#0x1C]
113944:  VCMP.F32        S6, S22
113948:  MOVS            R1, #0
11394A:  VMRS            APSR_nzcv, FPSCR
11394E:  VCMP.F32        S8, S18
113952:  MOV.W           R2, #0
113956:  IT PL
113958:  MOVPL           R1, #1
11395A:  VMRS            APSR_nzcv, FPSCR
11395E:  IT PL
113960:  MOVPL           R2, #1
113962:  VCMP.F32        S8, S0
113966:  MOVS            R3, #0
113968:  VMRS            APSR_nzcv, FPSCR
11396C:  IT LE
11396E:  MOVLE           R3, #1
113970:  ANDS            R2, R3
113972:  VCMP.F32        S6, S4
113976:  ANDS            R1, R2
113978:  VMRS            APSR_nzcv, FPSCR
11397C:  MOV.W           R2, #0
113980:  MOV.W           R0, #0
113984:  VCMP.F32        S26, S2
113988:  IT LE
11398A:  MOVLE           R2, #1
11398C:  VMRS            APSR_nzcv, FPSCR
113990:  IT LE
113992:  MOVLE           R0, #1
113994:  ANDS            R1, R2
113996:  CMP.W           R11, #0
11399A:  AND.W           R0, R0, R1
11399E:  IT NE
1139A0:  MOVNE.W         R11, #1
1139A4:  AND.W           R5, R0, R11
1139A8:  VLDR            S24, [R7,#arg_C]
1139AC:  CMP             R5, #1
1139AE:  BNE             loc_1139DE
1139B0:  VMOV            R3, S20
1139B4:  MOVS            R0, #0xFF
1139B6:  STRB.W          R0, [SP,#0x78+var_62]
1139BA:  MOVW            R0, #0xFFFF
1139BE:  STRH.W          R0, [SP,#0x78+var_64]
1139C2:  MOV             R1, R6
1139C4:  LDR             R0, [R7,#arg_8]
1139C6:  MOV             R2, R9
1139C8:  STR.W           R10, [SP,#0x78+var_74]
1139CC:  VSTR            S16, [SP,#0x78+var_78]
1139D0:  LSRS            R0, R0, #0x18
1139D2:  STRB.W          R0, [SP,#0x78+var_61]
1139D6:  ADD.W           R0, R4, #8
1139DA:  BL              sub_163176
1139DE:  VCMP.F32        S24, #0.0
1139E2:  VMRS            APSR_nzcv, FPSCR
1139E6:  BEQ             loc_113A1C
1139E8:  VMOV.F32        S0, #0.5
1139EC:  ADD             R0, SP, #0x78+var_5C
1139EE:  VMUL.F32        S2, S20, S24
1139F2:  STR             R0, [SP,#0x78+var_74]
1139F4:  VMUL.F32        S4, S16, S24
1139F8:  MOV             R0, R8
1139FA:  VMLA.F32        S22, S2, S0
1139FE:  VMLA.F32        S18, S4, S0
113A02:  VSUB.F32        S0, S20, S2
113A06:  VMOV            R1, S22
113A0A:  VMOV            R2, S18
113A0E:  VMOV            R3, S0
113A12:  VSUB.F32        S0, S16, S4
113A16:  VSTR            S0, [SP,#0x78+var_78]
113A1A:  B               loc_113A2E
113A1C:  VMOV            R3, S20
113A20:  ADD             R0, SP, #0x78+var_5C
113A22:  STR             R0, [SP,#0x78+var_74]
113A24:  MOV             R0, R8
113A26:  MOV             R1, R6
113A28:  MOV             R2, R9
113A2A:  VSTR            S16, [SP,#0x78+var_78]
113A2E:  BL              sub_163176
113A32:  MOV             R0, R5
113A34:  ADD             SP, SP, #0x20 ; ' '
113A36:  VPOP            {D8-D14}
113A3A:  ADD             SP, SP, #4
113A3C:  POP.W           {R8-R11}
113A40:  POP             {R4-R7,PC}
