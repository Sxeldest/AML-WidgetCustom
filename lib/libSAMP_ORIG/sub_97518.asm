; =========================================================
; Game Engine Function: sub_97518
; Address            : 0x97518 - 0x975CA
; =========================================================

97518:  PUSH            {R4-R7,LR}
9751A:  ADD             R7, SP, #0xC
9751C:  PUSH.W          {R11}
97520:  LDR             R4, =(dword_1ACF68 - 0x9752A)
97522:  MOVW            R6, #0x19AC
97526:  ADD             R4, PC; dword_1ACF68
97528:  LDR             R5, [R4]
9752A:  LDR             R0, [R5,R6]
9752C:  LDR.W           R0, [R0,#0x27C]
97530:  BL              sub_9C1AA
97534:  ADDS            R1, R5, R6
97536:  LDR.W           R0, [R1,#0xE4]
9753A:  SUBS            R2, R0, #1
9753C:  STR.W           R2, [R1,#0xE4]
97540:  BEQ             loc_97552
97542:  LDR.W           R2, [R1,#0xEC]
97546:  LDR             R1, [R4]
97548:  ADD.W           R0, R2, R0,LSL#2
9754C:  LDR.W           R0, [R0,#-8]
97550:  B               loc_97562
97552:  LDR             R1, [R4]
97554:  LDR.W           R0, [R1,#0xA0]
97558:  CBNZ            R0, loc_97562
9755A:  LDR.W           R0, [R1,#0x94]
9755E:  LDR             R0, [R0,#0x3C]
97560:  LDR             R0, [R0]
97562:  VLDR            S0, [R0,#0x10]
97566:  MOVW            R2, #0x18C4
9756A:  VLDR            S4, [R1,#0x98]
9756E:  MOVW            R3, #0x19AC
97572:  VLDR            S2, [R0,#0x44]
97576:  MOVW            R6, #0x18D0
9757A:  VMUL.F32        S0, S4, S0
9757E:  VMOV.F32        S4, #1.0
97582:  VMUL.F32        S0, S0, S2
97586:  VCMP.F32        S0, S4
9758A:  VMRS            APSR_nzcv, FPSCR
9758E:  IT LS
97590:  VMOVLS.F32      S0, S4
97594:  STR             R0, [R1,R2]
97596:  ADD             R2, R1
97598:  LDR             R3, [R1,R3]
9759A:  ADD             R1, R6
9759C:  VSTR            S0, [R2,#8]
975A0:  CMP             R3, #0
975A2:  ITTE NE
975A4:  VLDRNE          S2, [R3,#0x274]
975A8:  VMULNE.F32      S0, S0, S2
975AC:  VLDREQ          S0, =0.0
975B0:  LDR             R3, [R0,#0x38]
975B2:  VSTR            S0, [R2,#4]
975B6:  LDRD.W          R2, R3, [R3,#0x2C]
975BA:  VSTR            S0, [R1,#0xC]
975BE:  STRD.W          R2, R3, [R1]
975C2:  STR             R0, [R1,#8]
975C4:  POP.W           {R11}
975C8:  POP             {R4-R7,PC}
