; =========================================================
; Game Engine Function: _ZN10COcclusion19OccluderHidesBehindEP15CActiveOccluderS1_
; Address            : 0x5AFB48 - 0x5AFC28
; =========================================================

5AFB48:  PUSH            {R4-R7,LR}
5AFB4A:  ADD             R7, SP, #0xC
5AFB4C:  PUSH.W          {R8}
5AFB50:  LDRSB.W         LR, [R0,#0x7A]
5AFB54:  CMP.W           LR, #0
5AFB58:  BEQ             loc_5AFC0C
5AFB5A:  CMP.W           LR, #1
5AFB5E:  BLT             loc_5AFC1E
5AFB60:  LDRSB.W         R3, [R1,#0x7A]
5AFB64:  ADD.W           R12, R1, #8
5AFB68:  MOV.W           R8, #0
5AFB6C:  CMP             R3, #1
5AFB6E:  BLT             loc_5AFC00
5AFB70:  ADD.W           R1, R8, R8,LSL#2
5AFB74:  MOVS            R6, #0
5AFB76:  ADD.W           R2, R0, R1,LSL#2
5AFB7A:  ADD.W           R1, R2, #0xC
5AFB7E:  ADD.W           R4, R2, #0x10
5AFB82:  ADD.W           R5, R2, #8
5AFB86:  VLDR            S0, [R2]
5AFB8A:  VLDR            S2, [R2,#4]
5AFB8E:  MOV             R2, R12
5AFB90:  VLDR            S4, [R2,#-8]
5AFB94:  VLDR            S10, [R2,#-4]
5AFB98:  VSUB.F32        S14, S0, S4
5AFB9C:  VLDR            S8, [R2,#4]
5AFBA0:  VSUB.F32        S12, S2, S10
5AFBA4:  VLDR            S6, [R2]
5AFBA8:  VMUL.F32        S14, S8, S14
5AFBAC:  VMUL.F32        S12, S6, S12
5AFBB0:  VSUB.F32        S12, S14, S12
5AFBB4:  VCMPE.F32       S12, #0.0
5AFBB8:  VMRS            APSR_nzcv, FPSCR
5AFBBC:  BLT             loc_5AFC1A
5AFBBE:  VLDR            S12, [R1]
5AFBC2:  VLDR            S14, [R4]
5AFBC6:  VLDR            S1, [R5]
5AFBCA:  VMUL.F32        S12, S14, S12
5AFBCE:  VMUL.F32        S14, S1, S14
5AFBD2:  VADD.F32        S12, S2, S12
5AFBD6:  VADD.F32        S14, S0, S14
5AFBDA:  VSUB.F32        S10, S12, S10
5AFBDE:  VSUB.F32        S4, S14, S4
5AFBE2:  VMUL.F32        S6, S6, S10
5AFBE6:  VMUL.F32        S4, S8, S4
5AFBEA:  VSUB.F32        S4, S4, S6
5AFBEE:  VCMPE.F32       S4, #0.0
5AFBF2:  VMRS            APSR_nzcv, FPSCR
5AFBF6:  BLT             loc_5AFC1A
5AFBF8:  ADDS            R6, #1
5AFBFA:  ADDS            R2, #0x14
5AFBFC:  CMP             R6, R3
5AFBFE:  BLT             loc_5AFB90
5AFC00:  ADD.W           R8, R8, #1
5AFC04:  MOVS            R1, #1
5AFC06:  CMP             R8, LR
5AFC08:  BLT             loc_5AFB6C
5AFC0A:  B               loc_5AFC20
5AFC0C:  LDRB.W          R0, [R1,#0x7A]
5AFC10:  MOVS            R1, #0
5AFC12:  CMP             R0, #0
5AFC14:  IT EQ
5AFC16:  MOVEQ           R1, #1
5AFC18:  B               loc_5AFC20
5AFC1A:  MOVS            R1, #0
5AFC1C:  B               loc_5AFC20
5AFC1E:  MOVS            R1, #1
5AFC20:  MOV             R0, R1
5AFC22:  POP.W           {R8}
5AFC26:  POP             {R4-R7,PC}
