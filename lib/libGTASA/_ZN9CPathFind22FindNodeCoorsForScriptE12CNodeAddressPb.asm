; =========================================================
; Game Engine Function: _ZN9CPathFind22FindNodeCoorsForScriptE12CNodeAddressPb
; Address            : 0x318DC4 - 0x318F86
; =========================================================

318DC4:  PUSH            {R4-R7,LR}
318DC6:  ADD             R7, SP, #0xC
318DC8:  PUSH.W          {R11}
318DCC:  UXTH.W          R12, R2
318DD0:  MOVW            R5, #0xFFFF
318DD4:  CMP             R12, R5
318DD6:  ITTT NE
318DD8:  ADDNE.W         LR, R1, R12,LSL#2
318DDC:  LDRNE.W         R4, [LR,#0x804]
318DE0:  CMPNE           R4, #0
318DE2:  BNE             loc_318DFA
318DE4:  VLDR            S0, =0.0
318DE8:  CMP             R3, #0
318DEA:  ITT NE
318DEC:  MOVNE           R1, #0
318DEE:  STRBNE          R1, [R3]
318DF0:  VMOV.F32        S4, S0
318DF4:  VMOV.F32        S2, S0
318DF8:  B               loc_318F74
318DFA:  CMP             R3, #0
318DFC:  ITTTT NE
318DFE:  ADDWNE          R4, LR, #0x804
318E02:  MOVNE           R5, #1
318E04:  STRBNE          R5, [R3]
318E06:  LDRNE           R4, [R4]
318E08:  LSRS            R3, R2, #0x10
318E0A:  LSLS            R5, R3, #3
318E0C:  SUB.W           R2, R5, R2,LSR#16
318E10:  ADD.W           R2, R4, R2,LSL#2
318E14:  LDRB            R6, [R2,#0x16]
318E16:  CMP             R6, #0
318E18:  BEQ             loc_318ECC
318E1A:  RSB.W           R5, R3, R3,LSL#3
318E1E:  ADD.W           R3, R4, R5,LSL#2
318E22:  LDRH            R4, [R3,#0x18]
318E24:  LSLS            R4, R4, #0x1C
318E26:  BEQ             loc_318EF2
318E28:  LDR             R4, =(ThePaths_ptr - 0x318E32)
318E2A:  LDR.W           R2, [LR,#0xA44]
318E2E:  ADD             R4, PC; ThePaths_ptr
318E30:  LDR             R4, [R4]; ThePaths
318E32:  ADD.W           R4, R4, R12,LSL#2
318E36:  LDR.W           R4, [R4,#0x804]
318E3A:  ADD.W           R5, R4, R5,LSL#2
318E3E:  LDRSH.W         R5, [R5,#0x10]
318E42:  LDR.W           R5, [R2,R5,LSL#2]
318E46:  UXTH            R2, R5
318E48:  ADD.W           R1, R1, R2,LSL#2
318E4C:  LDR.W           R1, [R1,#0x804]
318E50:  CMP             R1, #0
318E52:  BEQ             loc_318EF2
318E54:  LSRS            R2, R5, #0x10
318E56:  LSLS            R2, R2, #3
318E58:  SUB.W           R2, R2, R5,LSR#16
318E5C:  ADD.W           R5, R3, #8
318E60:  ADD.W           R1, R1, R2,LSL#2
318E64:  VLD1.32         {D16[0]}, [R5@32]
318E68:  ADDS            R1, #8
318E6A:  VMOVL.S16       Q9, D16
318E6E:  VLD1.32         {D17[0]}, [R1@32]
318E72:  ADD.W           R1, R3, #0xC
318E76:  VCVT.F32.S32    D16, D18
318E7A:  VMOVL.S16       Q9, D17
318E7E:  VMOV.I32        D17, #0x3E000000
318E82:  VCVT.F32.S32    D18, D18
318E86:  VMUL.F32        D0, D16, D17
318E8A:  VMUL.F32        D16, D18, D17
318E8E:  VSUB.F32        D1, D16, D0
318E92:  VMUL.F32        D2, D1, D1
318E96:  VADD.F32        S4, S4, S5
318E9A:  VCMPE.F32       S4, #0.0
318E9E:  VMRS            APSR_nzcv, FPSCR
318EA2:  BLE             loc_318F28
318EA4:  VSQRT.F32       S4, S4
318EA8:  VMOV.F32        S6, #1.0
318EAC:  VDIV.F32        S6, S6, S4
318EB0:  VMUL.F32        S4, S2, S6
318EB4:  VMUL.F32        S3, S3, S6
318EB8:  VCMPE.F32       S4, #0.0
318EBC:  VMRS            APSR_nzcv, FPSCR
318EC0:  ITT LT
318EC2:  VNEGLT.F32      S3, S3
318EC6:  VNEGLT.F32      S4, S4
318ECA:  B               loc_318F2C
318ECC:  RSB.W           R1, R3, R3,LSL#3
318ED0:  VMOV.F32        S0, #0.125
318ED4:  ADD.W           R1, R4, R1,LSL#2
318ED8:  LDRSH.W         R2, [R1,#8]
318EDC:  LDRSH.W         R3, [R1,#0xA]
318EE0:  LDRSH.W         R1, [R1,#0xC]
318EE4:  VMOV            S6, R2
318EE8:  VMOV            S4, R3
318EEC:  VMOV            S2, R1
318EF0:  B               loc_318F0E
318EF2:  LDRSH.W         R1, [R3,#8]
318EF6:  VMOV.F32        S0, #0.125
318EFA:  LDRSH.W         R2, [R3,#0xA]
318EFE:  LDRSH.W         R3, [R3,#0xC]
318F02:  VMOV            S6, R1
318F06:  VMOV            S4, R2
318F0A:  VMOV            S2, R3
318F0E:  VCVT.F32.S32    S2, S2
318F12:  VCVT.F32.S32    S4, S4
318F16:  VCVT.F32.S32    S6, S6
318F1A:  VMUL.F32        S2, S2, S0
318F1E:  VMUL.F32        S4, S4, S0
318F22:  VMUL.F32        S0, S6, S0
318F26:  B               loc_318F74
318F28:  VMOV.F32        S4, #1.0
318F2C:  VMOV            S6, R6
318F30:  VLDR            S8, =0.0625
318F34:  VMOV.F32        S10, #0.125
318F38:  VCVT.F32.U32    S6, S6
318F3C:  LDRSH.W         R1, [R1]
318F40:  VMOV            S12, R1
318F44:  VCVT.F32.S32    S12, S12
318F48:  VMUL.F32        S6, S6, S8
318F4C:  VLDR            S8, =2.7
318F50:  VMUL.F32        S10, S12, S10
318F54:  VADD.F32        S6, S6, S8
318F58:  VLDR            S8, =0.0
318F5C:  VMUL.F32        S4, S4, S6
318F60:  VMUL.F32        S8, S6, S8
318F64:  VMUL.F32        S6, S3, S6
318F68:  VADD.F32        S4, S1, S4
318F6C:  VADD.F32        S2, S10, S8
318F70:  VSUB.F32        S0, S0, S6
318F74:  VSTR            S0, [R0]
318F78:  VSTR            S4, [R0,#4]
318F7C:  VSTR            S2, [R0,#8]
318F80:  POP.W           {R11}
318F84:  POP             {R4-R7,PC}
