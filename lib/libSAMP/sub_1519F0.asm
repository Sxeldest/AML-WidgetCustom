; =========================================================
; Game Engine Function: sub_1519F0
; Address            : 0x1519F0 - 0x151A40
; =========================================================

1519F0:  PUSH            {R4,R6,R7,LR}
1519F2:  ADD             R7, SP, #8
1519F4:  MOV             R4, R0
1519F6:  LDRB            R0, [R0,#0x10]
1519F8:  LDRB            R1, [R4,#0x13]
1519FA:  ORRS            R0, R1
1519FC:  BNE             loc_151A3C
1519FE:  BL              sub_17E2E4
151A02:  LDRD.W          R1, R2, [R4,#0x20]
151A06:  SUBS            R0, R0, R2
151A08:  VLDR            D16, =1000.0
151A0C:  MOVS            R2, #0
151A0E:  ADD             R0, R1
151A10:  VLDR            D17, [R4,#0x18]
151A14:  MOVS            R1, #0
151A16:  VMOV            S0, R0
151A1A:  VMUL.F64        D16, D17, D16
151A1E:  VCVT.F64.U32    D17, S0
151A22:  VCMP.F64        D16, D17
151A26:  VMRS            APSR_nzcv, FPSCR
151A2A:  IT GT
151A2C:  MOVGT           R2, #1
151A2E:  CMP.W           R0, #0x3E8
151A32:  IT CC
151A34:  MOVCC           R1, #1
151A36:  ORR.W           R0, R1, R2
151A3A:  POP             {R4,R6,R7,PC}
151A3C:  MOVS            R0, #1
151A3E:  POP             {R4,R6,R7,PC}
