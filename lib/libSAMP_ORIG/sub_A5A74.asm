; =========================================================
; Game Engine Function: sub_A5A74
; Address            : 0xA5A74 - 0xA5B66
; =========================================================

A5A74:  PUSH            {R4-R7,LR}
A5A76:  ADD             R7, SP, #0xC
A5A78:  PUSH.W          {R11}
A5A7C:  VPUSH           {D8-D15}
A5A80:  CMP             R2, #0x10
A5A82:  BGT             loc_A5B5C
A5A84:  VMOV.F32        S18, S4
A5A88:  ADDS            R6, R2, #1
A5A8A:  VADD.F32        S4, S3, S3
A5A8E:  MOV             R4, R1
A5A90:  VMOV.F32        S24, S2
A5A94:  MOV             R5, R0
A5A96:  VADD.F32        S2, S2, S2
A5A9A:  VMOV.F32        S20, S6
A5A9E:  VMOV.F32        S16, S5
A5AA2:  VMOV.F32        S22, S3
A5AA6:  VMOV.F32        S30, #0.25
A5AAA:  VADD.F32        S4, S4, S1
A5AAE:  VMOV.F32        S17, #0.5
A5AB2:  VADD.F32        S2, S2, S0
A5AB6:  VADD.F32        S4, S4, S16
A5ABA:  VADD.F32        S2, S2, S18
A5ABE:  VADD.F32        S6, S1, S16
A5AC2:  VMUL.F32        S26, S4, S30
A5AC6:  VMUL.F32        S28, S2, S30
A5ACA:  VADD.F32        S4, S0, S18
A5ACE:  VMOV.F32        S2, S26
A5AD2:  VNMLS.F32       S2, S6, S17
A5AD6:  VMOV.F32        S6, S28
A5ADA:  VNMLS.F32       S6, S4, S17
A5ADE:  VMUL.F32        S2, S2, S2
A5AE2:  VMLA.F32        S2, S6, S6
A5AE6:  VCMP.F32        S2, S20
A5AEA:  VMRS            APSR_nzcv, FPSCR
A5AEE:  BLE             loc_A5B46
A5AF0:  VADD.F32        S2, S0, S24
A5AF4:  MOV             R0, R5
A5AF6:  VADD.F32        S4, S1, S22
A5AFA:  MOV             R1, R4
A5AFC:  VMOV.F32        S5, S26
A5B00:  MOV             R2, R6
A5B02:  VMOV.F32        S6, S20
A5B06:  VMUL.F32        S2, S2, S17
A5B0A:  VMUL.F32        S3, S4, S17
A5B0E:  VMOV.F32        S4, S28
A5B12:  BL              sub_A5A74
A5B16:  VADD.F32        S0, S22, S16
A5B1A:  ADDS            R6, #1
A5B1C:  VADD.F32        S2, S24, S18
A5B20:  CMP             R6, #0x12
A5B22:  VMOV.F32        S1, S26
A5B26:  VMUL.F32        S22, S0, S17
A5B2A:  VMUL.F32        S24, S2, S17
A5B2E:  VADD.F32        S0, S22, S22
A5B32:  VADD.F32        S2, S24, S24
A5B36:  VADD.F32        S4, S0, S26
A5B3A:  VADD.F32        S2, S2, S28
A5B3E:  VMOV.F32        S0, S28
A5B42:  BNE             loc_A5AB6
A5B44:  B               loc_A5B5C
A5B46:  LDR             R0, [R4]
A5B48:  CMP             R5, #0
A5B4A:  ITTT NE
A5B4C:  ADDNE.W         R1, R5, R0,LSL#3
A5B50:  VSTRNE          S18, [R1]
A5B54:  VSTRNE          S16, [R1,#4]
A5B58:  ADDS            R0, #1
A5B5A:  STR             R0, [R4]
A5B5C:  VPOP            {D8-D15}
A5B60:  POP.W           {R11}
A5B64:  POP             {R4-R7,PC}
