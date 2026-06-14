; =========================================================
; Game Engine Function: _ZN8CZoneDef13IsPointWithinE7CVector
; Address            : 0x5CFBAA - 0x5CFC9E
; =========================================================

5CFBAA:  PUSH            {R4,R6,R7,LR}
5CFBAC:  ADD             R7, SP, #8
5CFBAE:  LDRSH.W         R12, [R0,#0xC]
5CFBB2:  VMOV            S0, R12
5CFBB6:  VCVT.F32.S32    S2, S0
5CFBBA:  VMOV            S0, R3
5CFBBE:  VCMPE.F32       S0, S2
5CFBC2:  VMRS            APSR_nzcv, FPSCR
5CFBC6:  BLE             loc_5CFC9A
5CFBC8:  LDRSH.W         R3, [R0,#0xE]
5CFBCC:  VMOV            S2, R3
5CFBD0:  VCVT.F32.S32    S2, S2
5CFBD4:  VCMPE.F32       S0, S2
5CFBD8:  VMRS            APSR_nzcv, FPSCR
5CFBDC:  BGE             loc_5CFC9A
5CFBDE:  LDRSH.W         R4, [R0,#2]
5CFBE2:  VMOV            S4, R2
5CFBE6:  LDRSH.W         R3, [R0]
5CFBEA:  VMOV            S6, R1
5CFBEE:  LDRSH.W         LR, [R0,#6]
5CFBF2:  VMOV            S0, R4
5CFBF6:  LDRSH.W         R12, [R0,#4]
5CFBFA:  VMOV            S2, R3
5CFBFE:  VCVT.F32.S32    S0, S0
5CFC02:  VCVT.F32.S32    S2, S2
5CFC06:  VMOV            S8, LR
5CFC0A:  VCVT.F32.S32    S8, S8
5CFC0E:  VSUB.F32        S0, S4, S0
5CFC12:  VMOV            S4, R12
5CFC16:  VSUB.F32        S2, S6, S2
5CFC1A:  VCVT.F32.S32    S4, S4
5CFC1E:  VMUL.F32        S6, S0, S8
5CFC22:  VMUL.F32        S4, S2, S4
5CFC26:  VADD.F32        S4, S4, S6
5CFC2A:  VCMPE.F32       S4, #0.0
5CFC2E:  VMRS            APSR_nzcv, FPSCR
5CFC32:  BLT             loc_5CFC9A
5CFC34:  SMULBB.W        R1, LR, LR
5CFC38:  SMLABB.W        R1, R12, R12, R1
5CFC3C:  VMOV            S6, R1
5CFC40:  VCVT.F32.S32    S6, S6
5CFC44:  VCMPE.F32       S4, S6
5CFC48:  VMRS            APSR_nzcv, FPSCR
5CFC4C:  BGT             loc_5CFC9A
5CFC4E:  LDRSH.W         R1, [R0,#8]
5CFC52:  LDRSH.W         R0, [R0,#0xA]
5CFC56:  VMOV            S6, R1
5CFC5A:  VMOV            S4, R0
5CFC5E:  VCVT.F32.S32    S4, S4
5CFC62:  VCVT.F32.S32    S6, S6
5CFC66:  VMUL.F32        S0, S0, S4
5CFC6A:  VMUL.F32        S2, S2, S6
5CFC6E:  VADD.F32        S0, S2, S0
5CFC72:  VCMPE.F32       S0, #0.0
5CFC76:  VMRS            APSR_nzcv, FPSCR
5CFC7A:  BLT             loc_5CFC9A
5CFC7C:  SMULBB.W        R0, R0, R0
5CFC80:  SMLABB.W        R0, R1, R1, R0
5CFC84:  VMOV            S2, R0
5CFC88:  VCVT.F32.S32    S2, S2
5CFC8C:  VCMPE.F32       S0, S2
5CFC90:  VMRS            APSR_nzcv, FPSCR
5CFC94:  ITT LE
5CFC96:  MOVLE           R0, #1
5CFC98:  POPLE           {R4,R6,R7,PC}
5CFC9A:  MOVS            R0, #0
5CFC9C:  POP             {R4,R6,R7,PC}
