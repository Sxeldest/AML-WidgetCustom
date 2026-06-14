; =========================================================
; Game Engine Function: _ZN6CWorld25FindUnsuspectingTargetCarE7CVectorS0_
; Address            : 0x42CA68 - 0x42CB8C
; =========================================================

42CA68:  PUSH            {R4-R7,LR}
42CA6A:  ADD             R7, SP, #0xC
42CA6C:  PUSH.W          {R8-R10}
42CA70:  LDR             R2, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x42CA76)
42CA72:  ADD             R2, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
42CA74:  LDR             R2, [R2]; CPools::ms_pVehiclePool ...
42CA76:  LDR.W           R12, [R2]; CPools::ms_pVehiclePool
42CA7A:  LDR.W           R2, [R12,#8]
42CA7E:  CMP             R2, #0
42CA80:  BEQ.W           loc_42CB84
42CA84:  LDRD.W          R5, R6, [R7,#arg_0]
42CA88:  VMOV            S2, R3
42CA8C:  LDR.W           R3, [R12,#4]
42CA90:  MOVW            R9, #0xFA96
42CA94:  MOVW            R8, #0xFA70
42CA98:  VMOV            S4, R0
42CA9C:  VLDR            S0, =9999.9
42CAA0:  VMOV            S6, R5
42CAA4:  VMOV            S8, R1
42CAA8:  MOVS            R0, #0
42CAAA:  VMOV            S10, R6
42CAAE:  MOVW            LR, #0xA2C
42CAB2:  MOVW            R10, #0x5A4
42CAB6:  MOVT            R9, #0xFFFF
42CABA:  MOVT            R8, #0xFFFF
42CABE:  MUL.W           R1, R2, LR
42CAC2:  SUBS            R2, #1
42CAC4:  SUB.W           R6, R1, #0x488
42CAC8:  LDRSB           R1, [R3,R2]
42CACA:  CMP             R1, #0
42CACC:  BLT             loc_42CAE6
42CACE:  LDR.W           R1, [R12]
42CAD2:  ADDS            R5, R1, R6
42CAD4:  CMP             R5, R10
42CAD6:  BEQ             loc_42CAE6
42CAD8:  LDR             R1, [R1,R6]
42CADA:  CMP             R1, #0
42CADC:  ITT EQ
42CADE:  LDRBEQ.W        R1, [R5,#-0xFC]
42CAE2:  CMPEQ           R1, #1
42CAE4:  BEQ             loc_42CAF2
42CAE6:  SUBS            R2, #1
42CAE8:  SUBW            R6, R6, #0xA2C
42CAEC:  ADDS            R1, R2, #1
42CAEE:  BNE             loc_42CAC8
42CAF0:  B               loc_42CB7E
42CAF2:  LDRB.W          R1, [R5,R9]
42CAF6:  AND.W           R1, R1, #0xF0
42CAFA:  CMP             R1, #0x10
42CAFC:  BNE             loc_42CAE6
42CAFE:  LDR.W           R4, [R5,R8]
42CB02:  ADD.W           R1, R4, #0x30 ; '0'
42CB06:  CMP             R4, #0
42CB08:  IT EQ
42CB0A:  SUBEQ.W         R1, R5, #0x5A0
42CB0E:  VLDR            S14, [R1]
42CB12:  VLDR            S1, [R1,#4]
42CB16:  VSUB.F32        S3, S4, S14
42CB1A:  VSUB.F32        S12, S8, S1
42CB1E:  VMUL.F32        S3, S3, S3
42CB22:  VMUL.F32        S12, S12, S12
42CB26:  VADD.F32        S12, S3, S12
42CB2A:  VSQRT.F32       S12, S12
42CB2E:  VCMPE.F32       S12, S0
42CB32:  VMRS            APSR_nzcv, FPSCR
42CB36:  BGE             loc_42CAE6
42CB38:  VSUB.F32        S1, S6, S1
42CB3C:  VLDR            S3, [R1,#8]
42CB40:  VSUB.F32        S14, S2, S14
42CB44:  VLDR            S5, [R4,#0x10]
42CB48:  VLDR            S7, [R4,#0x14]
42CB4C:  VSUB.F32        S3, S10, S3
42CB50:  VLDR            S9, [R4,#0x18]
42CB54:  VMUL.F32        S1, S1, S7
42CB58:  VMUL.F32        S14, S14, S5
42CB5C:  VMUL.F32        S3, S3, S9
42CB60:  VADD.F32        S14, S14, S1
42CB64:  VADD.F32        S14, S14, S3
42CB68:  VCMPE.F32       S14, #0.0
42CB6C:  VMRS            APSR_nzcv, FPSCR
42CB70:  ITT GT
42CB72:  VMOVGT.F32      S0, S12
42CB76:  SUBWGT          R0, R5, #0x5A4
42CB7A:  CMP             R2, #0
42CB7C:  BNE             loc_42CABE
42CB7E:  POP.W           {R8-R10}
42CB82:  POP             {R4-R7,PC}
42CB84:  MOVS            R0, #0
42CB86:  POP.W           {R8-R10}
42CB8A:  POP             {R4-R7,PC}
