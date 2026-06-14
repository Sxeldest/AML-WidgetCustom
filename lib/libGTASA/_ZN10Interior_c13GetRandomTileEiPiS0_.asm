; =========================================================
; Game Engine Function: _ZN10Interior_c13GetRandomTileEiPiS0_
; Address            : 0x447B18 - 0x447BBE
; =========================================================

447B18:  PUSH            {R4-R7,LR}
447B1A:  ADD             R7, SP, #0xC
447B1C:  PUSH.W          {R8-R10}
447B20:  VPUSH           {D8-D9}
447B24:  MOV             R4, R0
447B26:  VLDR            S16, =0.000015259
447B2A:  LDR             R0, [R4,#0x14]
447B2C:  MOV             R8, R3
447B2E:  MOV             R9, R2
447B30:  MOV             R10, R1
447B32:  LDRB            R5, [R0,#2]
447B34:  BLX             rand
447B38:  LDR             R1, [R4,#0x14]
447B3A:  UXTH            R0, R0
447B3C:  VMOV            S0, R0
447B40:  LDRB            R6, [R1,#3]
447B42:  VCVT.F32.S32    S18, S0
447B46:  BLX             rand
447B4A:  UXTH            R0, R0
447B4C:  VMOV            S6, R6
447B50:  VMOV            S0, R0
447B54:  UXTB            R0, R5
447B56:  VMOV            S2, R0
447B5A:  MOVS            R2, #1
447B5C:  VCVT.F32.S32    S0, S0
447B60:  VCVT.F32.U32    S2, S2
447B64:  VMUL.F32        S4, S18, S16
447B68:  VCVT.F32.U32    S6, S6
447B6C:  LDR             R3, [R4,#0x14]
447B6E:  VMUL.F32        S0, S0, S16
447B72:  VMUL.F32        S2, S4, S2
447B76:  VMUL.F32        S0, S0, S6
447B7A:  VCVT.S32.F32    S2, S2
447B7E:  VCVT.S32.F32    S0, S0
447B82:  LDRB            R5, [R3,#2]
447B84:  VMOV            R0, S2
447B88:  VMOV            R1, S0
447B8C:  CMP             R5, R0
447B8E:  BLE             loc_447BA8
447B90:  CMP             R0, #0
447B92:  BLT             loc_447BA8
447B94:  LDRB            R3, [R3,#3]
447B96:  CMP             R3, R1
447B98:  ITTTT HI
447B9A:  RSBHI.W         R2, R0, R0,LSL#4
447B9E:  ADDHI.W         R2, R4, R2,LSL#1
447BA2:  ADDHI           R2, R1
447BA4:  LDRBHI.W        R2, [R2,#0x68]
447BA8:  CMP             R2, R10
447BAA:  BNE             loc_447B34
447BAC:  STR.W           R0, [R9]
447BB0:  STR.W           R1, [R8]
447BB4:  VPOP            {D8-D9}
447BB8:  POP.W           {R8-R10}
447BBC:  POP             {R4-R7,PC}
