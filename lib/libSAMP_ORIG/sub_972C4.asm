; =========================================================
; Game Engine Function: sub_972C4
; Address            : 0x972C4 - 0x973BC
; =========================================================

972C4:  PUSH            {R4,R6,R7,LR}
972C6:  ADD             R7, SP, #8
972C8:  LDR             R4, =(dword_1ACF68 - 0x972DA)
972CA:  VMOV            S0, R2
972CE:  MOVW            R12, #0x19AC
972D2:  VMOV            S2, R1
972D6:  ADD             R4, PC; dword_1ACF68
972D8:  VMOV            S4, R3
972DC:  VCMP.F32        S2, #0.0
972E0:  LDR             R2, [R4]
972E2:  VMRS            APSR_nzcv, FPSCR
972E6:  LDR.W           R1, [R2,R12]
972EA:  ITT PL
972EC:  VCMPPL.F32      S0, #0.0
972F0:  VMRSPL          APSR_nzcv, FPSCR
972F4:  BPL             loc_9733A
972F6:  LDR.W           R3, [R1,#0x1C0]
972FA:  LDR.W           R2, [R1,#0x22C]
972FE:  CBZ             R3, loc_97342
97300:  LDR             R4, [R3,#0xC]
97302:  VLDR            S6, [R3,#0x14]
97306:  VLDR            S8, [R3,#0x18]
9730A:  CMN.W           R4, #2
9730E:  LDR             R3, [R3,#0x44]
97310:  IT GT
97312:  ADDGT           R4, #1
97314:  VSUB.F32        S8, S8, S6
97318:  RSB.W           R4, R4, R4,LSL#3
9731C:  ADD.W           R3, R3, R4,LSL#2
97320:  VLDR            S10, [R3]
97324:  VMLA.F32        S6, S8, S10
97328:  VLDR            S8, [R1,#0xC]
9732C:  VLDR            S10, [R1,#0x34]
97330:  VADD.F32        S6, S8, S6
97334:  VSUB.F32        S8, S6, S10
97338:  B               loc_97346
9733A:  VLDR            S8, =0.0
9733E:  MOVS            R2, #0
97340:  B               loc_97346
97342:  VLDR            S8, [R1,#0x228]
97346:  VCMP.F32        S2, #0.0
9734A:  VLDR            S10, [R7,#arg_0]
9734E:  VMRS            APSR_nzcv, FPSCR
97352:  VMOV.F32        S6, S2
97356:  IT EQ
97358:  VMOVEQ.F32      S6, S4
9735C:  BPL             loc_9737C
9735E:  VLDR            S4, [R1,#0xC8]
97362:  VSUB.F32        S4, S8, S4
97366:  VMOV.F32        S8, #4.0
9736A:  VADD.F32        S6, S4, S2
9736E:  VCMP.F32        S6, S8
97372:  VMRS            APSR_nzcv, FPSCR
97376:  IT LS
97378:  VMOVLS.F32      S6, S8
9737C:  VCMP.F32        S0, #0.0
97380:  VMRS            APSR_nzcv, FPSCR
97384:  VMOV.F32        S2, S0
97388:  IT EQ
9738A:  VMOVEQ.F32      S2, S10
9738E:  BPL             loc_973B2
97390:  VLDR            S2, [R1,#0xCC]
97394:  VMOV            S4, R2
97398:  VSUB.F32        S2, S4, S2
9739C:  VMOV.F32        S4, #4.0
973A0:  VADD.F32        S2, S2, S0
973A4:  VCMP.F32        S2, S4
973A8:  VMRS            APSR_nzcv, FPSCR
973AC:  IT LS
973AE:  VMOVLS.F32      S2, S4
973B2:  VSTR            S6, [R0]
973B6:  VSTR            S2, [R0,#4]
973BA:  POP             {R4,R6,R7,PC}
