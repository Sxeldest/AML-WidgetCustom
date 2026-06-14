; =========================================================
; Game Engine Function: sub_99114
; Address            : 0x99114 - 0x99272
; =========================================================

99114:  LDR             R2, =(dword_1ACF68 - 0x9911A)
99116:  ADD             R2, PC; dword_1ACF68
99118:  LDR             R2, [R2]
9911A:  CBZ             R1, loc_9915E
9911C:  ADD.W           R0, R2, R0,LSL#2
99120:  MOVW            R3, #0x1458
99124:  ADD             R3, R0
99126:  CMP             R1, #2
99128:  VLDR            S2, [R3]
9912C:  BNE             loc_9916C
9912E:  VCMP.F32        S2, #0.0
99132:  VMRS            APSR_nzcv, FPSCR
99136:  BPL             loc_9916C
99138:  MOVW            R1, #0x14B0
9913C:  ADD             R0, R1
9913E:  VLDR            S0, =0.0
99142:  VMOV.F32        S4, #1.0
99146:  VLDR            S2, [R0]
9914A:  VCMP.F32        S2, #0.0
9914E:  VMRS            APSR_nzcv, FPSCR
99152:  IT GE
99154:  VMOVGE.F32      S0, S4
99158:  VMOV            R0, S0
9915C:  BX              LR
9915E:  ADD.W           R0, R2, R0,LSL#2
99162:  VLDR            S0, [R0,#0x2FC]
99166:  VMOV            R0, S0
9916A:  BX              LR
9916C:  VCMP.F32        S2, #0.0
99170:  VLDR            S0, =0.0
99174:  VMRS            APSR_nzcv, FPSCR
99178:  BPL             loc_99180
9917A:  VMOV            R0, S0; jumptable 0009918A default case
9917E:  BX              LR
99180:  SUBS            R0, R1, #1; switch 5 cases
99182:  CMP             R0, #4
99184:  BHI             def_9918A; jumptable 0009918A default case
99186:  ADR.W           R1, jpt_9918A
9918A:  TBB.W           [PC,R0]; switch jump
9918E:  DCB 4; jump table for switch statement
9918F:  DCB 3
99190:  DCB 0x12
99191:  DCB 0x23
99192:  DCB 0x34
99193:  ALIGN 2
99194:  B               def_9918A; jumptable 0009918A case 2
99196:  VCMP.F32        S2, #0.0; jumptable 0009918A case 1
9919A:  VLDR            S0, =0.0
9919E:  VMOV.F32        S4, #1.0
991A2:  VMRS            APSR_nzcv, FPSCR
991A6:  IT EQ
991A8:  VMOVEQ.F32      S0, S4
991AC:  VMOV            R0, S0
991B0:  BX              LR
991B2:  VCMP.F32        S2, #0.0; jumptable 0009918A case 3
991B6:  VMRS            APSR_nzcv, FPSCR
991BA:  BEQ             loc_99200
991BC:  VLDR            S6, =0.8
991C0:  VLDR            S4, [R2,#0x88]
991C4:  VMUL.F32        S4, S4, S6
991C8:  VCMP.F32        S2, S4
991CC:  VMRS            APSR_nzcv, FPSCR
991D0:  BHI             loc_99224
991D2:  B               def_9918A; jumptable 0009918A default case
991D4:  VCMP.F32        S2, #0.0; jumptable 0009918A case 4
991D8:  VMRS            APSR_nzcv, FPSCR
991DC:  BEQ             loc_99200
991DE:  VLDR            S4, [R2,#0x88]
991E2:  VCMP.F32        S2, S4
991E6:  VMRS            APSR_nzcv, FPSCR
991EA:  BLS             def_9918A; jumptable 0009918A default case
991EC:  VLDR            S6, [R2,#0x8C]
991F0:  VADD.F32        S6, S6, S6
991F4:  B               loc_9922C
991F6:  VCMP.F32        S2, #0.0; jumptable 0009918A case 5
991FA:  VMRS            APSR_nzcv, FPSCR
991FE:  BNE             loc_9920A
99200:  VMOV.F32        S0, #1.0
99204:  VMOV            R0, S0
99208:  BX              LR
9920A:  VLDR            S4, [R2,#0x88]
9920E:  VLDR            S6, =0.8
99212:  VMUL.F32        S4, S4, S6
99216:  VCMP.F32        S2, S4
9921A:  VMRS            APSR_nzcv, FPSCR
9921E:  BLS             def_9918A; jumptable 0009918A default case
99220:  VLDR            S6, =0.3
99224:  VLDR            S8, [R2,#0x8C]
99228:  VMUL.F32        S6, S8, S6
9922C:  VCMP.F32        S6, #0.0
99230:  VMRS            APSR_nzcv, FPSCR
99234:  BLS             def_9918A; jumptable 0009918A default case
99236:  VLDR            S0, [R2,#0x18]
9923A:  VSUB.F32        S0, S2, S0
9923E:  VSUB.F32        S2, S2, S4
99242:  VSUB.F32        S0, S0, S4
99246:  VDIV.F32        S2, S2, S6
9924A:  VDIV.F32        S0, S0, S6
9924E:  VCVT.S32.F32    S0, S0
99252:  VCVT.S32.F32    S2, S2
99256:  VMOV            R0, S0
9925A:  VMOV            R1, S2
9925E:  SUBS            R0, R1, R0
99260:  BIC.W           R0, R0, R0,ASR#31
99264:  VMOV            S0, R0
99268:  VCVT.F32.S32    S0, S0
9926C:  VMOV            R0, S0
99270:  BX              LR
