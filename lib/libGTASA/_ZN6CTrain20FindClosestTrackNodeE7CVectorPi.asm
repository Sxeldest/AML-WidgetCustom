; =========================================================
; Game Engine Function: _ZN6CTrain20FindClosestTrackNodeE7CVectorPi
; Address            : 0x57CEDC - 0x57CFAA
; =========================================================

57CEDC:  PUSH            {R4-R7,LR}
57CEDE:  ADD             R7, SP, #0xC
57CEE0:  PUSH.W          {R8-R10}
57CEE4:  VMOV            S4, R0
57CEE8:  LDR             R0, =(NumTrackNodes_ptr - 0x57CEF6)
57CEEA:  VMOV.F32        S8, #0.125
57CEEE:  VLDR            S6, =100000.0
57CEF2:  ADD             R0, PC; NumTrackNodes_ptr
57CEF4:  VMOV            S0, R2
57CEF8:  VMOV            S2, R1
57CEFC:  MOV.W           R10, #0
57CF00:  LDR.W           R12, [R0]; NumTrackNodes
57CF04:  LDR             R0, =(pTrackNodes_ptr - 0x57CF0A)
57CF06:  ADD             R0, PC; pTrackNodes_ptr
57CF08:  LDR.W           R8, [R0]; pTrackNodes
57CF0C:  LDR             R0, =(NumTrackNodes_ptr - 0x57CF12)
57CF0E:  ADD             R0, PC; NumTrackNodes_ptr
57CF10:  LDR.W           LR, [R0]; NumTrackNodes
57CF14:  LDR.W           R9, [R12,R10,LSL#2]
57CF18:  CMP.W           R9, #1
57CF1C:  BLT             loc_57CF9A
57CF1E:  MOVS            R5, #0
57CF20:  MOVS            R6, #0
57CF22:  LDR.W           R2, [R8,R10,LSL#2]
57CF26:  LDRSH           R4, [R2,R5]
57CF28:  ADD             R2, R5
57CF2A:  ADDS            R5, #0xA
57CF2C:  LDRSH.W         R1, [R2,#2]
57CF30:  VMOV            S10, R4
57CF34:  LDRSH.W         R2, [R2,#4]
57CF38:  VMOV            S12, R1
57CF3C:  VCVT.F32.S32    S10, S10
57CF40:  VCVT.F32.S32    S12, S12
57CF44:  VMOV            S14, R2
57CF48:  VCVT.F32.S32    S14, S14
57CF4C:  VMUL.F32        S10, S10, S8
57CF50:  VMUL.F32        S12, S12, S8
57CF54:  VMUL.F32        S14, S14, S8
57CF58:  VSUB.F32        S10, S4, S10
57CF5C:  VSUB.F32        S12, S2, S12
57CF60:  VSUB.F32        S14, S0, S14
57CF64:  VMUL.F32        S10, S10, S10
57CF68:  VMUL.F32        S12, S12, S12
57CF6C:  VMUL.F32        S14, S14, S14
57CF70:  VADD.F32        S10, S10, S12
57CF74:  VADD.F32        S10, S10, S14
57CF78:  VSQRT.F32       S10, S10
57CF7C:  VCMPE.F32       S10, S6
57CF80:  VMRS            APSR_nzcv, FPSCR
57CF84:  ITTTT LT
57CF86:  STRLT.W         R10, [R3]
57CF8A:  LDRLT.W         R9, [LR,R10,LSL#2]
57CF8E:  MOVLT           R0, R6
57CF90:  VMOVLT.F32      S6, S10
57CF94:  ADDS            R6, #1
57CF96:  CMP             R6, R9
57CF98:  BLT             loc_57CF22
57CF9A:  ADD.W           R10, R10, #1
57CF9E:  CMP.W           R10, #4
57CFA2:  BNE             loc_57CF14
57CFA4:  POP.W           {R8-R10}
57CFA8:  POP             {R4-R7,PC}
