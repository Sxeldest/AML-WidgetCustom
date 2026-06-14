; =========================================================
; Game Engine Function: sub_170190
; Address            : 0x170190 - 0x1702BE
; =========================================================

170190:  PUSH            {R7,LR}
170192:  MOV             R7, SP
170194:  LDR             R1, =(dword_381B58 - 0x17019E)
170196:  MOVW            R2, #0x1B16
17019A:  ADD             R1, PC; dword_381B58
17019C:  LDR             R1, [R1]
17019E:  LDRB            R2, [R1,R2]
1701A0:  CBZ             R2, loc_1701DC
1701A2:  VLDR            S0, =-256000.0
1701A6:  VLDR            S2, [R1,#0xE0]
1701AA:  VCMP.F32        S2, S0
1701AE:  VMRS            APSR_nzcv, FPSCR
1701B2:  ITTTT GE
1701B4:  VLDRGE          S2, [R1,#0xE4]
1701B8:  VCMPGE.F32      S2, S0
1701BC:  VMRSGE          APSR_nzcv, FPSCR
1701C0:  LDRDGE.W        R1, R2, [R1,#0xE0]
1701C4:  ITT GE
1701C6:  STRDGE.W        R1, R2, [R0]
1701CA:  POPGE           {R7,PC}
1701CC:  MOVW            R2, #0x1DD4
1701D0:  ADD             R1, R2
1701D2:  LDRD.W          R2, R1, [R1]
1701D6:  STRD.W          R2, R1, [R0]
1701DA:  POP             {R7,PC}
1701DC:  MOVW            R2, #0x1550
1701E0:  ADDS            R3, R1, R2
1701E2:  LDRB.W          R2, [R3,#0x5C7]
1701E6:  CMP             R2, #0
1701E8:  BEQ             loc_1701A2
1701EA:  LDR.W           LR, [R3,#0x564]
1701EE:  CMP.W           LR, #0
1701F2:  BEQ             loc_1701A2
1701F4:  LDR.W           R12, [R3,#0x5BC]
1701F8:  VMOV.F32        S0, #4.0
1701FC:  VLDR            S10, [R3]
170200:  VLDR            S12, [R3,#4]
170204:  ADD.W           R2, LR, R12,LSL#4
170208:  VLDR            S4, [R2,#0x318]
17020C:  VLDR            S8, [R2,#0x320]
170210:  VLDR            S2, [R2,#0x314]
170214:  VMUL.F32        S0, S10, S0
170218:  VLDR            S6, [R2,#0x31C]
17021C:  VSUB.F32        S4, S8, S4
170220:  VSUB.F32        S6, S6, S2
170224:  VCMP.F32        S12, S4
170228:  VMRS            APSR_nzcv, FPSCR
17022C:  IT MI
17022E:  VMOVMI.F32      S4, S12
170232:  VCMP.F32        S0, S6
170236:  VMRS            APSR_nzcv, FPSCR
17023A:  IT MI
17023C:  VMOVMI.F32      S6, S0
170240:  VSUB.F32        S0, S8, S4
170244:  VLDR            S4, [LR,#0xC]
170248:  VADD.F32        S2, S2, S6
17024C:  VLDR            S6, [LR,#0x10]
170250:  VADD.F32        S0, S6, S0
170254:  VLDR            S6, [R1,#0x14]
170258:  VADD.F32        S2, S4, S2
17025C:  VLDR            S4, [R1,#0x10]
170260:  VCMP.F32        S0, S6
170264:  VMRS            APSR_nzcv, FPSCR
170268:  VMOV.F32        S8, S0
17026C:  VCMP.F32        S2, S4
170270:  IT GT
170272:  VMOVGT.F32      S8, S6
170276:  VMRS            APSR_nzcv, FPSCR
17027A:  VMOV.F32        S6, S2
17027E:  VCMP.F32        S0, #0.0
170282:  IT GT
170284:  VMOVGT.F32      S6, S4
170288:  VMRS            APSR_nzcv, FPSCR
17028C:  VCMP.F32        S2, #0.0
170290:  VLDR            S4, =0.0
170294:  IT MI
170296:  VMOVMI.F32      S8, S4
17029A:  VCVT.S32.F32    S0, S8
17029E:  VMRS            APSR_nzcv, FPSCR
1702A2:  IT MI
1702A4:  VMOVMI.F32      S6, S4
1702A8:  VCVT.S32.F32    S2, S6
1702AC:  VCVT.F32.S32    S0, S0
1702B0:  VCVT.F32.S32    S2, S2
1702B4:  VSTR            S0, [R0,#4]
1702B8:  VSTR            S2, [R0]
1702BC:  POP             {R7,PC}
