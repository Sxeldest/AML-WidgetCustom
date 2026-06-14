; =========================================================
; Game Engine Function: _Z20ProcessDiscCollisionR9CColPointRK7CMatrixRK8CColDiskS0_RbRfS0_
; Address            : 0x2DBB28 - 0x2DBC62
; =========================================================

2DBB28:  PUSH            {R4-R7,LR}
2DBB2A:  ADD             R7, SP, #0xC
2DBB2C:  PUSH.W          {R8}
2DBB30:  VPUSH           {D8-D10}
2DBB34:  SUB             SP, SP, #0x10
2DBB36:  MOV             R4, R0
2DBB38:  ADD             R0, SP, #0x38+var_34
2DBB3A:  MOV             R6, R2
2DBB3C:  MOV             R2, R4
2DBB3E:  MOV             R8, R3
2DBB40:  MOV             R5, R1
2DBB42:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2DBB46:  ADD.W           R2, R4, #0x10
2DBB4A:  ADD             R0, SP, #0x38+var_34; CMatrix *
2DBB4C:  MOV             R1, R5; CVector *
2DBB4E:  VLDR            S18, [SP,#0x38+var_34]
2DBB52:  VLDR            S20, [SP,#0x38+var_30]
2DBB56:  VLDR            S16, [SP,#0x38+var_2C]
2DBB5A:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
2DBB5E:  VLDR            S6, [SP,#0x38+var_34]
2DBB62:  VLDR            S0, [R6,#0x14]
2DBB66:  VLDR            S8, [SP,#0x38+var_30]
2DBB6A:  VLDR            S4, [R6,#0x18]
2DBB6E:  VMUL.F32        S6, S6, S0
2DBB72:  VLDR            S10, [SP,#0x38+var_2C]
2DBB76:  VMUL.F32        S8, S8, S4
2DBB7A:  VLDR            S2, [R6,#0x1C]
2DBB7E:  VMUL.F32        S10, S10, S2
2DBB82:  VADD.F32        S6, S6, S8
2DBB86:  VLDR            S8, =0.77
2DBB8A:  VADD.F32        S6, S6, S10
2DBB8E:  VABS.F32        S6, S6
2DBB92:  VCMPE.F32       S6, S8
2DBB96:  VMRS            APSR_nzcv, FPSCR
2DBB9A:  BGE             loc_2DBC24
2DBB9C:  VLDR            S6, [R6]
2DBBA0:  VLDR            S8, [R6,#4]
2DBBA4:  VSUB.F32        S6, S18, S6
2DBBA8:  VLDR            S10, [R6,#8]
2DBBAC:  VSUB.F32        S8, S20, S8
2DBBB0:  VLDR            S12, [R6,#0x20]
2DBBB4:  VSUB.F32        S10, S16, S10
2DBBB8:  VMUL.F32        S0, S0, S6
2DBBBC:  VMUL.F32        S4, S4, S8
2DBBC0:  VMUL.F32        S2, S2, S10
2DBBC4:  VADD.F32        S0, S0, S4
2DBBC8:  VADD.F32        S0, S0, S2
2DBBCC:  VABS.F32        S0, S0
2DBBD0:  VCMPE.F32       S0, S12
2DBBD4:  VMRS            APSR_nzcv, FPSCR
2DBBD8:  BGE             loc_2DBC24
2DBBDA:  VLDR            S0, [R6,#0xC]
2DBBDE:  VMUL.F32        S2, S8, S8
2DBBE2:  VMUL.F32        S4, S6, S6
2DBBE6:  LDR             R0, [R7,#arg_4]
2DBBE8:  VMUL.F32        S0, S0, S0
2DBBEC:  VSUB.F32        S0, S0, S2
2DBBF0:  VLDR            S2, [R0]
2DBBF4:  VSUB.F32        S0, S0, S4
2DBBF8:  VSQRT.F32       S0, S0
2DBBFC:  VADD.F32        S0, S16, S0
2DBC00:  VCMPE.F32       S0, S2
2DBC04:  VMRS            APSR_nzcv, FPSCR
2DBC08:  BLT             loc_2DBC54
2DBC0A:  LDR             R5, [R7,#arg_8]
2DBC0C:  MOVS            R2, #1
2DBC0E:  LDR             R1, [R7,#arg_0]
2DBC10:  STRB            R2, [R1]
2DBC12:  MOV             R1, R4
2DBC14:  VSTR            S0, [R0]
2DBC18:  MOV             R0, R5
2DBC1A:  BLX             j__ZN9CColPointaSERKS_; CColPoint::operator=(CColPoint const&)
2DBC1E:  LDR             R0, [R4,#0x28]
2DBC20:  STR             R0, [R5,#0x28]
2DBC22:  B               loc_2DBC54
2DBC24:  LDRB            R0, [R6,#0x11]
2DBC26:  CMP             R0, #0x10
2DBC28:  BHI             loc_2DBC54
2DBC2A:  VLDR            S0, [R8,#0x28]
2DBC2E:  VLDR            S2, [R4,#0x28]
2DBC32:  VCMPE.F32       S2, S0
2DBC36:  VMRS            APSR_nzcv, FPSCR
2DBC3A:  BLE             loc_2DBC54
2DBC3C:  MOV             R0, R8
2DBC3E:  MOV             R1, R4
2DBC40:  BLX             j__ZN9CColPointaSERKS_; CColPoint::operator=(CColPoint const&)
2DBC44:  LDR             R0, [R4,#0x28]
2DBC46:  STR.W           R0, [R8,#0x28]
2DBC4A:  MOVS            R0, #0x3C ; '<'
2DBC4C:  STRB.W          R0, [R8,#0x23]
2DBC50:  MOVS            R0, #1
2DBC52:  B               loc_2DBC56
2DBC54:  MOVS            R0, #0
2DBC56:  ADD             SP, SP, #0x10
2DBC58:  VPOP            {D8-D10}
2DBC5C:  POP.W           {R8}
2DBC60:  POP             {R4-R7,PC}
