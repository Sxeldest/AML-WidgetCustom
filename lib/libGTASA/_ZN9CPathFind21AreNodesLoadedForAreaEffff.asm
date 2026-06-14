; =========================================================
; Game Engine Function: _ZN9CPathFind21AreNodesLoadedForAreaEffff
; Address            : 0x319D38 - 0x319E38
; =========================================================

319D38:  PUSH            {R4-R7,LR}
319D3A:  ADD             R7, SP, #0xC
319D3C:  PUSH.W          {R11}
319D40:  VLDR            S0, =3000.0
319D44:  VMOV            S4, R3
319D48:  VLDR            S2, [R7,#arg_0]
319D4C:  VMOV            S6, R1
319D50:  VLDR            S10, =750.0
319D54:  VMOV            S8, R2
319D58:  VADD.F32        S2, S2, S0
319D5C:  MOVS            R3, #0
319D5E:  VADD.F32        S6, S6, S0
319D62:  MOVS            R2, #7
319D64:  VADD.F32        S4, S4, S0
319D68:  MOV.W           R12, #7
319D6C:  VADD.F32        S0, S8, S0
319D70:  VDIV.F32        S2, S2, S10
319D74:  VCVT.S32.F32    S2, S2
319D78:  VDIV.F32        S6, S6, S10
319D7C:  VMOV            R1, S2
319D80:  VDIV.F32        S4, S4, S10
319D84:  CMP             R1, #0
319D86:  VDIV.F32        S0, S0, S10
319D8A:  VCVT.S32.F32    S6, S6
319D8E:  IT LE
319D90:  MOVLE           R1, R3
319D92:  VCVT.S32.F32    S2, S4
319D96:  CMP             R1, #7
319D98:  VCVT.S32.F32    S0, S0
319D9C:  IT GE
319D9E:  MOVGE           R1, R2
319DA0:  VMOV            R5, S6
319DA4:  VMOV            R4, S2
319DA8:  VMOV            LR, S0
319DAC:  CMP.W           LR, #0
319DB0:  IT LE
319DB2:  MOVLE           LR, R3
319DB4:  CMP.W           LR, #7
319DB8:  IT GE
319DBA:  MOVGE           LR, R2
319DBC:  CMP             R4, #0
319DBE:  IT LE
319DC0:  MOVLE           R4, R3
319DC2:  CMP             R4, #7
319DC4:  IT LT
319DC6:  MOVLT           R12, R4
319DC8:  CMP             R5, #0
319DCA:  IT GT
319DCC:  MOVGT           R3, R5
319DCE:  CMP             R3, #7
319DD0:  IT LT
319DD2:  MOVLT           R2, R3
319DD4:  CMP             R2, LR
319DD6:  BLE             loc_319DE0
319DD8:  MOVS            R0, #1
319DDA:  POP.W           {R11}
319DDE:  POP             {R4-R7,PC}
319DE0:  MVNS            R4, R4
319DE2:  MOV             R5, #0xFFFFFFF8
319DE6:  CMN.W           R4, #8
319DEA:  MVN.W           R3, R3
319DEE:  IT LE
319DF0:  MOVLE           R4, R5
319DF2:  CMN.W           R3, #8
319DF6:  IT GT
319DF8:  MOVGT           R5, R3
319DFA:  MOVW            R3, #0x1F7
319DFE:  SUBS            R3, R3, R5
319E00:  SUB.W           R3, R3, R4,LSL#3
319E04:  ADD.W           R0, R0, R3,LSL#2
319E08:  MOV             R3, #0xFFFFFFFE
319E0C:  ADDS            R0, #4
319E0E:  SUBS            R3, R3, R4
319E10:  CMP             R12, R1
319E12:  MOV             R4, R0
319E14:  MOV             R5, R3
319E16:  BGT             loc_319E24
319E18:  LDR             R6, [R4]
319E1A:  CBZ             R6, loc_319E30
319E1C:  ADDS            R5, #1
319E1E:  ADDS            R4, #0x20 ; ' '
319E20:  CMP             R5, R1
319E22:  BLT             loc_319E18
319E24:  ADDS            R4, R2, #1
319E26:  ADDS            R0, #4
319E28:  CMP             R2, LR
319E2A:  MOV             R2, R4
319E2C:  BLT             loc_319E10
319E2E:  B               loc_319DD8
319E30:  MOVS            R0, #0
319E32:  POP.W           {R11}
319E36:  POP             {R4-R7,PC}
