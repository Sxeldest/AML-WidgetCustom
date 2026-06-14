; =========================================================
; Game Engine Function: sub_1438F0
; Address            : 0x1438F0 - 0x143A00
; =========================================================

1438F0:  PUSH            {R4-R7,LR}
1438F2:  ADD             R7, SP, #0xC
1438F4:  PUSH.W          {R8}
1438F8:  VPUSH           {D8-D9}
1438FC:  SUB             SP, SP, #0x10
1438FE:  MOV             R6, R1
143900:  ADD             R1, SP, #0x30+var_2C; int
143902:  MOV             R8, R3
143904:  MOV             R5, R2
143906:  MOVS            R2, #0x20 ; ' '
143908:  MOVS            R3, #1
14390A:  MOV             R4, R0
14390C:  BL              sub_17D786
143910:  CMP             R0, #0
143912:  BEQ             loc_1439E4
143914:  VLDR            S0, [SP,#0x30+var_2C]
143918:  VLDR            D16, =0.0000099999997
14391C:  VCVT.F64.F32    D17, S0
143920:  VCMP.F64        D17, D16
143924:  VMRS            APSR_nzcv, FPSCR
143928:  BLE             loc_1439E8
14392A:  SUB.W           R1, R7, #-var_26; int
14392E:  MOV             R0, R4; int
143930:  MOVS            R2, #0x10
143932:  MOVS            R3, #1
143934:  BL              sub_17D786
143938:  CBZ             R0, loc_143956
14393A:  LDRH.W          R0, [R7,#var_26]
14393E:  VLDR            S2, =32768.0
143942:  VMOV            S0, R0
143946:  VCVT.F32.U32    S0, S0
14394A:  VDIV.F32        S0, S0, S2
14394E:  VMOV.F32        S2, #-1.0
143952:  VADD.F32        S16, S0, S2
143956:  ADD             R1, SP, #0x30+var_24; int
143958:  MOV             R0, R4; int
14395A:  MOVS            R2, #0x10
14395C:  MOVS            R3, #1
14395E:  BL              sub_17D786
143962:  CBZ             R0, loc_143980
143964:  LDRH.W          R0, [SP,#0x30+var_24]
143968:  VLDR            S2, =32768.0
14396C:  VMOV            S0, R0
143970:  VCVT.F32.U32    S0, S0
143974:  VDIV.F32        S0, S0, S2
143978:  VMOV.F32        S2, #-1.0
14397C:  VADD.F32        S18, S0, S2
143980:  SUB.W           R1, R7, #-var_22; int
143984:  MOV             R0, R4; int
143986:  MOVS            R2, #0x10
143988:  MOVS            R3, #1
14398A:  BL              sub_17D786
14398E:  CBZ             R0, loc_1439E4
143990:  LDRH.W          R0, [R7,#var_22]
143994:  VLDR            S2, =32768.0
143998:  VSTR            S16, [R6]
14399C:  VMOV            S0, R0
1439A0:  VSTR            S18, [R5]
1439A4:  MOVS            R0, #1
1439A6:  VCVT.F32.U32    S0, S0
1439AA:  VDIV.F32        S0, S0, S2
1439AE:  VMOV.F32        S2, #-1.0
1439B2:  VADD.F32        S0, S0, S2
1439B6:  VLDR            S2, [SP,#0x30+var_2C]
1439BA:  VSTR            S0, [R8]
1439BE:  VLDR            S0, [R6]
1439C2:  VMUL.F32        S0, S2, S0
1439C6:  VSTR            S0, [R6]
1439CA:  VLDR            S0, [R5]
1439CE:  VMUL.F32        S0, S2, S0
1439D2:  VSTR            S0, [R5]
1439D6:  VLDR            S0, [R8]
1439DA:  VMUL.F32        S0, S2, S0
1439DE:  VSTR            S0, [R8]
1439E2:  B               loc_1439F4
1439E4:  MOVS            R0, #0
1439E6:  B               loc_1439F4
1439E8:  MOVS            R0, #0
1439EA:  STR             R0, [R6]
1439EC:  STR             R0, [R5]
1439EE:  STR.W           R0, [R8]
1439F2:  MOVS            R0, #1
1439F4:  ADD             SP, SP, #0x10
1439F6:  VPOP            {D8-D9}
1439FA:  POP.W           {R8}
1439FE:  POP             {R4-R7,PC}
