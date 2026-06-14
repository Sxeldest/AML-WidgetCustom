; =========================================================
; Game Engine Function: sub_16F134
; Address            : 0x16F134 - 0x16F2A6
; =========================================================

16F134:  PUSH            {R4-R7,LR}
16F136:  ADD             R7, SP, #0xC
16F138:  PUSH.W          {R8}
16F13C:  VPUSH           {D8-D9}
16F140:  SUB             SP, SP, #8
16F142:  LDR             R3, [R1,#8]
16F144:  MOV             R4, R0
16F146:  MOV             R6, R2
16F148:  LSLS            R0, R3, #6
16F14A:  BMI.W           loc_16F292
16F14E:  LDR             R0, =(dword_381B58 - 0x16F15E)
16F150:  MOV             R5, R1
16F152:  MOVW            R1, #0x152C
16F156:  TST.W           R3, #0x14000000
16F15A:  ADD             R0, PC; dword_381B58
16F15C:  LDR             R0, [R0]
16F15E:  ADD.W           R8, R0, R1
16F162:  LDRD.W          R1, R2, [R8]
16F166:  BEQ             loc_16F19C
16F168:  VMOV.F32        S0, #4.0
16F16C:  VMOV            S2, R2
16F170:  VMOV            S4, R1
16F174:  VCMP.F32        S2, S0
16F178:  VMRS            APSR_nzcv, FPSCR
16F17C:  VMOV.F32        S6, S0
16F180:  VCMP.F32        S4, S0
16F184:  IT MI
16F186:  VMOVMI.F32      S6, S2
16F18A:  VMRS            APSR_nzcv, FPSCR
16F18E:  IT MI
16F190:  VMOVMI.F32      S0, S4
16F194:  VMOV            R2, S6
16F198:  VMOV            R1, S0
16F19C:  VLDR            S0, [R8,#0x84]
16F1A0:  VLDR            S2, [R8,#0x88]
16F1A4:  VADD.F32        S0, S0, S0
16F1A8:  VLDR            S4, [R0,#0x10]
16F1AC:  VADD.F32        S2, S2, S2
16F1B0:  VLDR            S6, [R0,#0x14]
16F1B4:  MOV             R0, SP
16F1B6:  VSUB.F32        S0, S4, S0
16F1BA:  VSUB.F32        S2, S6, S2
16F1BE:  VMOV            S4, R1
16F1C2:  MOV             R1, R5
16F1C4:  VMOV            S6, R2
16F1C8:  VCMP.F32        S0, S4
16F1CC:  VMRS            APSR_nzcv, FPSCR
16F1D0:  VCMP.F32        S2, S6
16F1D4:  IT LS
16F1D6:  VMOVLS.F32      S0, S4
16F1DA:  VMRS            APSR_nzcv, FPSCR
16F1DE:  IT LS
16F1E0:  VMOVLS.F32      S2, S6
16F1E4:  VLDR            S8, [R6]
16F1E8:  VLDR            S10, [R6,#4]
16F1EC:  VCMP.F32        S8, S0
16F1F0:  VMRS            APSR_nzcv, FPSCR
16F1F4:  VMOV.F32        S16, S8
16F1F8:  VCMP.F32        S10, S2
16F1FC:  IT GT
16F1FE:  VMOVGT.F32      S16, S0
16F202:  VMRS            APSR_nzcv, FPSCR
16F206:  VMOV.F32        S18, S10
16F20A:  VCMP.F32        S8, S4
16F20E:  IT GT
16F210:  VMOVGT.F32      S18, S2
16F214:  VMRS            APSR_nzcv, FPSCR
16F218:  VCMP.F32        S10, S6
16F21C:  IT MI
16F21E:  VMOVMI.F32      S16, S4
16F222:  VMRS            APSR_nzcv, FPSCR
16F226:  IT MI
16F228:  VMOVMI.F32      S18, S6
16F22C:  VMOV            R2, S16
16F230:  VMOV            R3, S18
16F234:  VSTR            S16, [R4]
16F238:  VSTR            S18, [R4,#4]
16F23C:  BL              sub_16EF60
16F240:  VLDR            S0, [R6]
16F244:  VLDR            S2, [SP,#0x28+var_28]
16F248:  VCMP.F32        S2, S0
16F24C:  VMRS            APSR_nzcv, FPSCR
16F250:  BPL             loc_16F26C
16F252:  LDR             R0, [R5,#8]
16F254:  MOVW            R1, #0x808
16F258:  ANDS            R0, R1
16F25A:  CMP.W           R0, #0x800
16F25E:  ITTT EQ
16F260:  VLDREQ          S0, [R8,#0x54]
16F264:  VADDEQ.F32      S0, S18, S0
16F268:  VSTREQ          S0, [R4,#4]
16F26C:  VLDR            S0, [SP,#0x28+var_24]
16F270:  VLDR            S2, [R6,#4]
16F274:  VCMP.F32        S0, S2
16F278:  VMRS            APSR_nzcv, FPSCR
16F27C:  BPL             loc_16F29A
16F27E:  LDRB            R0, [R5,#8]
16F280:  LSLS            R0, R0, #0x1C
16F282:  ITTT PL
16F284:  VLDRPL          S0, [R8,#0x54]
16F288:  VADDPL.F32      S0, S16, S0
16F28C:  VSTRPL          S0, [R4]
16F290:  B               loc_16F29A
16F292:  LDRD.W          R0, R1, [R6]
16F296:  STRD.W          R0, R1, [R4]
16F29A:  ADD             SP, SP, #8
16F29C:  VPOP            {D8-D9}
16F2A0:  POP.W           {R8}
16F2A4:  POP             {R4-R7,PC}
