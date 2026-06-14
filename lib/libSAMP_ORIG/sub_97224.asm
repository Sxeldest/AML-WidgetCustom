; =========================================================
; Game Engine Function: sub_97224
; Address            : 0x97224 - 0x972BE
; =========================================================

97224:  LDR             R0, =(dword_1ACF68 - 0x9722E)
97226:  MOVW            R2, #0x19AC
9722A:  ADD             R0, PC; dword_1ACF68
9722C:  LDR             R1, [R0]
9722E:  LDR             R0, [R1,R2]
97230:  ADD             R1, R2
97232:  LDRB.W          R2, [R1,#0xBC]
97236:  ADDS            R1, #0xC0
97238:  LSLS            R2, R2, #0x1F
9723A:  IT EQ
9723C:  ADDEQ.W         R1, R0, #0x170
97240:  VLDR            S0, [R1]
97244:  VCMP.F32        S0, #0.0
97248:  VMRS            APSR_nzcv, FPSCR
9724C:  BPL             loc_972B0
9724E:  LDR.W           R1, [R0,#0x1C0]
97252:  CBZ             R1, loc_9728E
97254:  LDR             R2, [R1,#0xC]
97256:  VLDR            S2, [R1,#0x14]
9725A:  VLDR            S4, [R1,#0x18]
9725E:  CMN.W           R2, #2
97262:  LDR             R1, [R1,#0x44]
97264:  IT GT
97266:  ADDGT           R2, #1
97268:  VSUB.F32        S4, S4, S2
9726C:  RSB.W           R2, R2, R2,LSL#3
97270:  ADD.W           R1, R1, R2,LSL#2
97274:  VLDR            S6, [R1]
97278:  VMLA.F32        S2, S4, S6
9727C:  VLDR            S4, [R0,#0xC]
97280:  VLDR            S6, [R0,#0x34]
97284:  VADD.F32        S2, S4, S2
97288:  VSUB.F32        S2, S2, S6
9728C:  B               loc_97292
9728E:  VLDR            S2, [R0,#0x228]
97292:  VLDR            S4, [R0,#0xC8]
97296:  VSUB.F32        S2, S2, S4
9729A:  VMOV.F32        S4, #1.0
9729E:  VADD.F32        S0, S0, S2
972A2:  VCMP.F32        S0, S4
972A6:  VMRS            APSR_nzcv, FPSCR
972AA:  IT LS
972AC:  VMOVLS.F32      S0, S4
972B0:  VCVT.S32.F32    S0, S0
972B4:  VCVT.F32.S32    S0, S0
972B8:  VMOV            R0, S0
972BC:  BX              LR
