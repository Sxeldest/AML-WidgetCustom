; =========================================================
; Game Engine Function: _Z23RtQuatConvertFromMatrixP6RtQuatPK11RwMatrixTag
; Address            : 0x210F50 - 0x211028
; =========================================================

210F50:  PUSH            {R4-R7,LR}
210F52:  ADD             R7, SP, #0xC
210F54:  PUSH.W          {R11}
210F58:  MOV             R6, R1
210F5A:  MOV             R4, R0
210F5C:  CMP             R6, #0
210F5E:  MOV             R0, R6
210F60:  IT NE
210F62:  MOVNE           R0, #1
210F64:  CMP             R4, #0
210F66:  MOV             R1, R4
210F68:  IT NE
210F6A:  MOVNE           R1, #1
210F6C:  ANDS.W          R5, R1, R0
210F70:  BEQ             loc_211020
210F72:  VLDR            S2, [R6]
210F76:  VLDR            S4, [R6,#0x14]
210F7A:  VLDR            S0, [R6,#0x28]
210F7E:  VADD.F32        S6, S2, S4
210F82:  VADD.F32        S6, S6, S0
210F86:  VCMPE.F32       S6, #0.0
210F8A:  VMRS            APSR_nzcv, FPSCR
210F8E:  BLE             loc_210FF2
210F90:  VMOV.F32        S0, #1.0
210F94:  VADD.F32        S0, S6, S0
210F98:  VMOV            R0, S0; float
210F9C:  BLX             j__Z7_rwSqrtf; _rwSqrt(float)
210FA0:  VMOV.F32        S0, #0.5
210FA4:  VMOV            S2, R0
210FA8:  VDIV.F32        S4, S0, S2
210FAC:  VMUL.F32        S0, S2, S0
210FB0:  VSTR            S0, [R4,#0xC]
210FB4:  VLDR            S0, [R6,#0x18]
210FB8:  VLDR            S2, [R6,#0x24]
210FBC:  VSUB.F32        S0, S0, S2
210FC0:  VMUL.F32        S0, S4, S0
210FC4:  VSTR            S0, [R4]
210FC8:  VLDR            S0, [R6,#8]
210FCC:  VLDR            S2, [R6,#0x20]
210FD0:  VSUB.F32        S0, S2, S0
210FD4:  VMUL.F32        S0, S4, S0
210FD8:  VSTR            S0, [R4,#4]
210FDC:  VLDR            S0, [R6,#4]
210FE0:  VLDR            S2, [R6,#0x10]
210FE4:  VSUB.F32        S0, S0, S2
210FE8:  VMUL.F32        S0, S4, S0
210FEC:  VSTR            S0, [R4,#8]
210FF0:  B               loc_211020
210FF2:  VCMPE.F32       S2, S4
210FF6:  LDR             R0, =(sub_211134+1 - 0x211006)
210FF8:  VMRS            APSR_nzcv, FPSCR
210FFC:  VMAX.F32        D3, D1, D2
211000:  LDR             R2, =(sub_211034+1 - 0x21100A)
211002:  ADD             R0, PC; sub_211134
211004:  LDR             R1, =(sub_2110B4+1 - 0x21100C)
211006:  ADD             R2, PC; sub_211034
211008:  ADD             R1, PC; sub_2110B4
21100A:  VCMPE.F32       S6, S0
21100E:  IT LE
211010:  MOVLE           R2, R0
211012:  VMRS            APSR_nzcv, FPSCR
211016:  MOV             R0, R4
211018:  IT LE
21101A:  MOVLE           R2, R1
21101C:  MOV             R1, R6
21101E:  BLX             R2 ; sub_211034 sub_2110B4 sub_211134
211020:  MOV             R0, R5
211022:  POP.W           {R11}
211026:  POP             {R4-R7,PC}
