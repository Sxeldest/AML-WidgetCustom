; =========================================================
; Game Engine Function: _ZN10CEntryExit8IsInAreaERK7CVector
; Address            : 0x305AF4 - 0x305C8C
; =========================================================

305AF4:  PUSH            {R4-R7,LR}
305AF6:  ADD             R7, SP, #0xC
305AF8:  PUSH.W          {R11}
305AFC:  VPUSH           {D8-D9}
305B00:  SUB             SP, SP, #0x68
305B02:  MOV             R5, R0
305B04:  MOV             R4, R1
305B06:  VLDR            S0, [R5,#0x1C]
305B0A:  VCMP.F32        S0, #0.0
305B0E:  VMRS            APSR_nzcv, FPSCR
305B12:  BNE             loc_305B80
305B14:  VLDR            S0, [R4]
305B18:  VLDR            S2, [R5,#8]
305B1C:  VCMPE.F32       S0, S2
305B20:  VMRS            APSR_nzcv, FPSCR
305B24:  BLT.W           loc_305C7E
305B28:  VLDR            S2, [R5,#0x10]
305B2C:  VCMPE.F32       S0, S2
305B30:  VMRS            APSR_nzcv, FPSCR
305B34:  BGT.W           loc_305C7E
305B38:  VLDR            S0, [R4,#4]
305B3C:  VLDR            S2, [R5,#0x14]
305B40:  VCMPE.F32       S0, S2
305B44:  VMRS            APSR_nzcv, FPSCR
305B48:  BLT.W           loc_305C7E
305B4C:  VLDR            S2, [R5,#0xC]
305B50:  VCMPE.F32       S0, S2
305B54:  VMRS            APSR_nzcv, FPSCR
305B58:  BGT.W           loc_305C7E
305B5C:  VLDR            S0, [R5,#0x18]
305B60:  VLDR            S2, [R4,#8]
305B64:  VSUB.F32        S0, S2, S0
305B68:  VMOV.F32        S2, #1.0
305B6C:  VABS.F32        S0, S0
305B70:  VCMPE.F32       S0, S2
305B74:  VMRS            APSR_nzcv, FPSCR
305B78:  BGE.W           loc_305C7E
305B7C:  MOVS            R0, #1
305B7E:  B               loc_305C80
305B80:  VLDR            S2, [R5,#8]
305B84:  VMOV.F32        S10, #0.5
305B88:  VLDR            S6, [R5,#0x10]
305B8C:  VMOV            R1, S0; x
305B90:  VLDR            S4, [R5,#0xC]
305B94:  ADD             R6, SP, #0x88+var_78
305B96:  VLDR            S8, [R5,#0x14]
305B9A:  VSUB.F32        S6, S6, S2
305B9E:  VLDR            S0, [R4]
305BA2:  VSUB.F32        S4, S4, S8
305BA6:  LDR             R0, [R4,#8]
305BA8:  VMUL.F32        S6, S6, S10
305BAC:  VMUL.F32        S4, S4, S10
305BB0:  VADD.F32        S18, S2, S6
305BB4:  VLDR            S2, [R4,#4]
305BB8:  STR             R0, [SP,#0x88+var_28]
305BBA:  MOVS            R0, #0
305BBC:  VADD.F32        S16, S8, S4
305BC0:  VSUB.F32        S0, S0, S18
305BC4:  VSUB.F32        S2, S2, S16
305BC8:  VSTR            S2, [SP,#0x88+var_30+4]
305BCC:  VSTR            S0, [SP,#0x88+var_30]
305BD0:  STRD.W          R0, R0, [SP,#0x88+var_38]
305BD4:  MOV             R0, R6; this
305BD6:  BLX             j__ZN7CMatrix10SetRotateZEf; CMatrix::SetRotateZ(float)
305BDA:  ADD             R2, SP, #0x88+var_30
305BDC:  MOV             R0, SP
305BDE:  MOV             R1, R6
305BE0:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
305BE4:  VLDR            D16, [SP,#0x88+var_88]
305BE8:  LDR             R0, [SP,#0x88+var_80]
305BEA:  STR             R0, [SP,#0x88+var_28]
305BEC:  VSTR            D16, [SP,#0x88+var_30]
305BF0:  VLDR            S0, [SP,#0x88+var_30]
305BF4:  VLDR            S4, [SP,#0x88+var_30+4]
305BF8:  VLDR            S6, [SP,#0x88+var_28]
305BFC:  VADD.F32        S2, S18, S0
305C00:  VLDR            S8, =0.0
305C04:  VADD.F32        S0, S16, S4
305C08:  VADD.F32        S4, S6, S8
305C0C:  VSTR            S2, [SP,#0x88+var_30]
305C10:  VSTR            S0, [SP,#0x88+var_30+4]
305C14:  VSTR            S4, [SP,#0x88+var_28]
305C18:  VLDR            S4, [R5,#8]
305C1C:  VCMPE.F32       S2, S4
305C20:  VMRS            APSR_nzcv, FPSCR
305C24:  BLT             loc_305C78
305C26:  VLDR            S4, [R5,#0x10]
305C2A:  VCMPE.F32       S2, S4
305C2E:  VMRS            APSR_nzcv, FPSCR
305C32:  BGT             loc_305C78
305C34:  VLDR            S2, [R5,#0x14]
305C38:  VCMPE.F32       S0, S2
305C3C:  VMRS            APSR_nzcv, FPSCR
305C40:  BLT             loc_305C78
305C42:  VLDR            S2, [R5,#0xC]
305C46:  VCMPE.F32       S0, S2
305C4A:  VMRS            APSR_nzcv, FPSCR
305C4E:  BGT             loc_305C78
305C50:  VLDR            S0, [R5,#0x18]
305C54:  VLDR            S2, [R4,#8]
305C58:  VSUB.F32        S0, S2, S0
305C5C:  VMOV.F32        S2, #1.0
305C60:  VABS.F32        S0, S0
305C64:  VCMPE.F32       S0, S2
305C68:  VMRS            APSR_nzcv, FPSCR
305C6C:  BGE             loc_305C78
305C6E:  ADD             R0, SP, #0x88+var_78; this
305C70:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
305C74:  MOVS            R0, #1
305C76:  B               loc_305C80
305C78:  ADD             R0, SP, #0x88+var_78; this
305C7A:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
305C7E:  MOVS            R0, #0
305C80:  ADD             SP, SP, #0x68 ; 'h'
305C82:  VPOP            {D8-D9}
305C86:  POP.W           {R11}
305C8A:  POP             {R4-R7,PC}
