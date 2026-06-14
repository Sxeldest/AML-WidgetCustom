; =========================================================
; Game Engine Function: _ZN8CZoneDef15FindBoundingBoxEP7CVectorS1_
; Address            : 0x5CFAD8 - 0x5CFBAA
; =========================================================

5CFAD8:  PUSH            {R4,R6,R7,LR}
5CFADA:  ADD             R7, SP, #8
5CFADC:  LDRSH.W         R3, [R0,#4]
5CFAE0:  LDRSH.W         LR, [R0,#8]
5CFAE4:  LDRSH.W         R12, [R0]
5CFAE8:  AND.W           R3, R3, R3,LSR#15
5CFAEC:  SXTAH.W         R12, R12, R3
5CFAF0:  AND.W           R3, LR, LR,LSR#15
5CFAF4:  MOV.W           LR, #0
5CFAF8:  SXTAH.W         R3, R12, R3
5CFAFC:  VMOV            S0, R3
5CFB00:  VCVT.F32.S32    S0, S0
5CFB04:  VSTR            S0, [R1]
5CFB08:  LDRSH.W         R4, [R0,#8]
5CFB0C:  LDRSH.W         R3, [R0,#4]
5CFB10:  CMP             R4, #0
5CFB12:  LDRSH.W         R12, [R0]
5CFB16:  IT LE
5CFB18:  MOVLE           R4, LR
5CFB1A:  CMP             R3, #0
5CFB1C:  IT LE
5CFB1E:  MOVLE           R3, LR
5CFB20:  UXTAH.W         R3, R12, R3
5CFB24:  UXTAH.W         R3, R3, R4
5CFB28:  VMOV            S0, R3
5CFB2C:  VCVT.F32.S32    S0, S0
5CFB30:  VSTR            S0, [R2]
5CFB34:  LDRSH.W         R4, [R0,#6]
5CFB38:  LDRSH.W         R3, [R0,#0xA]
5CFB3C:  LDRSH.W         R12, [R0,#2]
5CFB40:  AND.W           R4, R4, R4,LSR#15
5CFB44:  AND.W           R3, R3, R3,LSR#15
5CFB48:  SXTAH.W         R4, R12, R4
5CFB4C:  SXTAH.W         R3, R4, R3
5CFB50:  VMOV            S0, R3
5CFB54:  VCVT.F32.S32    S0, S0
5CFB58:  VSTR            S0, [R1,#4]
5CFB5C:  LDRSH.W         R3, [R0,#0xA]
5CFB60:  LDRSH.W         R4, [R0,#6]
5CFB64:  CMP             R3, #0
5CFB66:  LDRSH.W         R12, [R0,#2]
5CFB6A:  IT LE
5CFB6C:  MOVLE           R3, LR
5CFB6E:  CMP             R4, #0
5CFB70:  IT GT
5CFB72:  MOVGT           LR, R4
5CFB74:  UXTAH.W         R4, R12, LR
5CFB78:  UXTAH.W         R3, R4, R3
5CFB7C:  VMOV            S0, R3
5CFB80:  VCVT.F32.S32    S0, S0
5CFB84:  VSTR            S0, [R2,#4]
5CFB88:  LDRSH.W         R3, [R0,#0xC]
5CFB8C:  VMOV            S0, R3
5CFB90:  VCVT.F32.S32    S0, S0
5CFB94:  VSTR            S0, [R1,#8]
5CFB98:  LDRSH.W         R0, [R0,#0xE]
5CFB9C:  VMOV            S0, R0
5CFBA0:  VCVT.F32.S32    S0, S0
5CFBA4:  VSTR            S0, [R2,#8]
5CFBA8:  POP             {R4,R6,R7,PC}
