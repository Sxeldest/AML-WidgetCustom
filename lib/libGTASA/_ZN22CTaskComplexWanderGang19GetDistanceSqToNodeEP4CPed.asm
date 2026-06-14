; =========================================================
; Game Engine Function: _ZN22CTaskComplexWanderGang19GetDistanceSqToNodeEP4CPed
; Address            : 0x521A1C - 0x521B7A
; =========================================================

521A1C:  PUSH            {R4,R6,R7,LR}
521A1E:  ADD             R7, SP, #8
521A20:  VLDR            S0, =1000000.0
521A24:  MOVW            LR, #0xFFFF
521A28:  LDRH            R3, [R0,#0x1C]
521A2A:  VMOV            D1, D0
521A2E:  CMP             R3, LR
521A30:  BEQ             loc_521AD2
521A32:  LDR.W           R12, =(ThePaths_ptr - 0x521A40)
521A36:  VMOV            D1, D0
521A3A:  LDRH            R4, [R0,#0x1C]
521A3C:  ADD             R12, PC; ThePaths_ptr
521A3E:  LDR.W           R2, [R12]; ThePaths
521A42:  ADD.W           R2, R2, R4,LSL#2
521A46:  LDR.W           R2, [R2,#0x804]
521A4A:  CMP             R2, #0
521A4C:  BEQ             loc_521AD2
521A4E:  LDR             R2, =(ThePaths_ptr - 0x521A5A)
521A50:  VMOV.F32        S2, #0.125
521A54:  LDRH            R4, [R0,#0x1E]
521A56:  ADD             R2, PC; ThePaths_ptr
521A58:  LDR             R2, [R2]; ThePaths
521A5A:  ADD.W           R2, R2, R3,LSL#2
521A5E:  RSB.W           R3, R4, R4,LSL#3
521A62:  LDR.W           R2, [R2,#0x804]
521A66:  ADD.W           R2, R2, R3,LSL#2
521A6A:  LDRSH.W         R3, [R2,#8]
521A6E:  LDRSH.W         R4, [R2,#0xA]
521A72:  LDRSH.W         R2, [R2,#0xC]
521A76:  VMOV            S6, R3
521A7A:  VMOV            S4, R4
521A7E:  VMOV            S8, R2
521A82:  VCVT.F32.S32    S4, S4
521A86:  VCVT.F32.S32    S6, S6
521A8A:  LDR             R3, [R1,#0x14]
521A8C:  VCVT.F32.S32    S8, S8
521A90:  ADD.W           R2, R3, #0x30 ; '0'
521A94:  CMP             R3, #0
521A96:  IT EQ
521A98:  ADDEQ           R2, R1, #4
521A9A:  VLDR            S10, [R2]
521A9E:  VLDR            S12, [R2,#4]
521AA2:  VMUL.F32        S4, S4, S2
521AA6:  VLDR            S14, [R2,#8]
521AAA:  VMUL.F32        S6, S6, S2
521AAE:  VMUL.F32        S2, S8, S2
521AB2:  VSUB.F32        S4, S4, S12
521AB6:  VSUB.F32        S6, S6, S10
521ABA:  VSUB.F32        S2, S2, S14
521ABE:  VMUL.F32        S4, S4, S4
521AC2:  VMUL.F32        S6, S6, S6
521AC6:  VMUL.F32        S2, S2, S2
521ACA:  VADD.F32        S4, S6, S4
521ACE:  VADD.F32        S2, S4, S2
521AD2:  LDRH            R3, [R0,#0x18]
521AD4:  CMP             R3, LR
521AD6:  BEQ             loc_521B70
521AD8:  LDR             R2, =(ThePaths_ptr - 0x521AE0)
521ADA:  LDRH            R4, [R0,#0x18]
521ADC:  ADD             R2, PC; ThePaths_ptr
521ADE:  LDR             R2, [R2]; ThePaths
521AE0:  ADD.W           R2, R2, R4,LSL#2
521AE4:  LDR.W           R2, [R2,#0x804]
521AE8:  CMP             R2, #0
521AEA:  BEQ             loc_521B70
521AEC:  LDR             R2, =(ThePaths_ptr - 0x521AF8)
521AEE:  VMOV.F32        S0, #0.125
521AF2:  LDRH            R0, [R0,#0x1A]
521AF4:  ADD             R2, PC; ThePaths_ptr
521AF6:  LDR             R2, [R2]; ThePaths
521AF8:  RSB.W           R0, R0, R0,LSL#3
521AFC:  ADD.W           R2, R2, R3,LSL#2
521B00:  LDR.W           R2, [R2,#0x804]
521B04:  ADD.W           R0, R2, R0,LSL#2
521B08:  LDRSH.W         R2, [R0,#8]
521B0C:  LDRSH.W         R3, [R0,#0xA]
521B10:  LDRSH.W         R0, [R0,#0xC]
521B14:  VMOV            S6, R2
521B18:  VMOV            S4, R3
521B1C:  VMOV            S8, R0
521B20:  VCVT.F32.S32    S4, S4
521B24:  VCVT.F32.S32    S6, S6
521B28:  LDR             R2, [R1,#0x14]
521B2A:  VCVT.F32.S32    S8, S8
521B2E:  ADD.W           R0, R2, #0x30 ; '0'
521B32:  CMP             R2, #0
521B34:  IT EQ
521B36:  ADDEQ           R0, R1, #4
521B38:  VLDR            S10, [R0]
521B3C:  VLDR            S12, [R0,#4]
521B40:  VMUL.F32        S4, S4, S0
521B44:  VLDR            S14, [R0,#8]
521B48:  VMUL.F32        S6, S6, S0
521B4C:  VMUL.F32        S0, S8, S0
521B50:  VSUB.F32        S4, S4, S12
521B54:  VSUB.F32        S6, S6, S10
521B58:  VSUB.F32        S0, S0, S14
521B5C:  VMUL.F32        S4, S4, S4
521B60:  VMUL.F32        S6, S6, S6
521B64:  VMUL.F32        S0, S0, S0
521B68:  VADD.F32        S4, S6, S4
521B6C:  VADD.F32        S0, S4, S0
521B70:  VMIN.F32        D0, D0, D1
521B74:  VMOV            R0, S0
521B78:  POP             {R4,R6,R7,PC}
