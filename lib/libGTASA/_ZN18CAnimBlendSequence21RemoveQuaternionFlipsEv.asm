; =========================================================
; Game Engine Function: _ZN18CAnimBlendSequence21RemoveQuaternionFlipsEv
; Address            : 0x38B8F4 - 0x38B9AE
; =========================================================

38B8F4:  PUSH            {R4,R6,R7,LR}
38B8F6:  ADD             R7, SP, #8
38B8F8:  LDRSH.W         R12, [R0,#6]
38B8FC:  CMP.W           R12, #2
38B900:  BGE             loc_38B904
38B902:  POP             {R4,R6,R7,PC}
38B904:  LDR             R1, [R0,#8]
38B906:  MOV.W           LR, #2
38B90A:  MOVS            R2, #0x20 ; ' '
38B90C:  MOVS            R3, #0x14
38B90E:  VLDR            S0, [R1]
38B912:  VLDR            S2, [R1,#4]
38B916:  VLDR            S4, [R1,#8]
38B91A:  VLDR            S6, [R1,#0xC]
38B91E:  B               loc_38B934
38B920:  SXTH.W          R1, R12
38B924:  CMP             LR, R1
38B926:  IT GE
38B928:  POPGE           {R4,R6,R7,PC}
38B92A:  ADDS            R3, #0x14
38B92C:  ADDS            R2, #0x20 ; ' '
38B92E:  LDR             R1, [R0,#8]
38B930:  ADD.W           LR, LR, #1
38B934:  LDRB            R4, [R0,#4]
38B936:  LSLS            R4, R4, #0x1E
38B938:  MOV             R4, R3
38B93A:  IT MI
38B93C:  MOVMI           R4, R2
38B93E:  ADD             R1, R4
38B940:  VLDR            S12, [R1]
38B944:  VLDR            S14, [R1,#4]
38B948:  VMUL.F32        S0, S0, S12
38B94C:  VLDR            S10, [R1,#8]
38B950:  VMUL.F32        S2, S2, S14
38B954:  VLDR            S8, [R1,#0xC]
38B958:  VMUL.F32        S4, S4, S10
38B95C:  VADD.F32        S0, S0, S2
38B960:  VMUL.F32        S2, S6, S8
38B964:  VADD.F32        S0, S0, S4
38B968:  VADD.F32        S0, S0, S2
38B96C:  VCMPE.F32       S0, #0.0
38B970:  VMRS            APSR_nzcv, FPSCR
38B974:  BGE             loc_38B99C
38B976:  VNEG.F32        S0, S12
38B97A:  VNEG.F32        S2, S14
38B97E:  VNEG.F32        S4, S10
38B982:  VNEG.F32        S6, S8
38B986:  VSTR            S0, [R1]
38B98A:  VSTR            S2, [R1,#4]
38B98E:  VSTR            S4, [R1,#8]
38B992:  VSTR            S6, [R1,#0xC]
38B996:  LDRH.W          R12, [R0,#6]
38B99A:  B               loc_38B920
38B99C:  VMOV.F32        S0, S12
38B9A0:  VMOV.F32        S2, S14
38B9A4:  VMOV.F32        S4, S10
38B9A8:  VMOV.F32        S6, S8
38B9AC:  B               loc_38B920
