; =========================================================
; Game Engine Function: _ZN27CTaskComplexFollowNodeRoute12ComputeRouteEv
; Address            : 0x51FC20 - 0x51FCFA
; =========================================================

51FC20:  PUSH            {R4-R7,LR}
51FC22:  ADD             R7, SP, #0xC
51FC24:  PUSH.W          {R11}
51FC28:  LDR             R1, [R0,#0x30]
51FC2A:  MOVS            R2, #0
51FC2C:  STR             R2, [R1]
51FC2E:  LDR             R1, [R0,#0x2C]
51FC30:  LDR.W           R12, [R1]
51FC34:  CMP.W           R12, #1
51FC38:  BLT             loc_51FCBE
51FC3A:  LDR             R3, =(ThePaths_ptr - 0x51FC46)
51FC3C:  VMOV.F32        S0, #0.125
51FC40:  MOVS            R2, #1
51FC42:  ADD             R3, PC; ThePaths_ptr
51FC44:  LDR.W           LR, [R3]; ThePaths
51FC48:  B               loc_51FC4E
51FC4A:  LDR             R1, [R0,#0x2C]
51FC4C:  ADDS            R2, #1
51FC4E:  LDR.W           R4, [R1,R2,LSL#2]
51FC52:  UXTH            R1, R4
51FC54:  ADD.W           R1, LR, R1,LSL#2
51FC58:  LDR.W           R5, [R1,#0x804]
51FC5C:  CBZ             R5, loc_51FCBA
51FC5E:  LDR             R1, [R0,#0x30]
51FC60:  LDR             R3, [R1]
51FC62:  CMP             R3, #7
51FC64:  BGT             loc_51FCBA
51FC66:  LSRS            R4, R4, #0x10
51FC68:  ADD.W           R3, R3, R3,LSL#1
51FC6C:  RSB.W           R4, R4, R4,LSL#3
51FC70:  ADD.W           R3, R1, R3,LSL#2
51FC74:  ADD.W           R4, R5, R4,LSL#2
51FC78:  LDRSH.W         R5, [R4,#8]
51FC7C:  LDRSH.W         R6, [R4,#0xA]
51FC80:  LDRSH.W         R4, [R4,#0xC]
51FC84:  VMOV            S4, R5
51FC88:  VMOV            S2, R6
51FC8C:  VMOV            S6, R4
51FC90:  VCVT.F32.S32    S2, S2
51FC94:  VCVT.F32.S32    S4, S4
51FC98:  VCVT.F32.S32    S6, S6
51FC9C:  VMUL.F32        S2, S2, S0
51FCA0:  VMUL.F32        S4, S4, S0
51FCA4:  VMUL.F32        S6, S6, S0
51FCA8:  VSTR            S4, [R3,#4]
51FCAC:  VSTR            S2, [R3,#8]
51FCB0:  VSTR            S6, [R3,#0xC]
51FCB4:  LDR             R3, [R1]
51FCB6:  ADDS            R3, #1
51FCB8:  STR             R3, [R1]
51FCBA:  CMP             R12, R2
51FCBC:  BNE             loc_51FC4A
51FCBE:  LDR             R1, [R0,#0x30]
51FCC0:  LDR             R2, [R1]
51FCC2:  CMP             R2, #7
51FCC4:  BGT             loc_51FCE4
51FCC6:  ADD.W           R2, R2, R2,LSL#1
51FCCA:  VLDR            D16, [R0,#0xC]
51FCCE:  LDR             R3, [R0,#0x14]
51FCD0:  ADD.W           R2, R1, R2,LSL#2
51FCD4:  STR             R3, [R2,#0xC]
51FCD6:  VSTR            D16, [R2,#4]
51FCDA:  LDR             R2, [R1]
51FCDC:  ADDS            R2, #1
51FCDE:  STR             R2, [R1]
51FCE0:  MOVS            R1, #2
51FCE2:  B               loc_51FCE6
51FCE4:  MOVS            R1, #0
51FCE6:  LDRB.W          R2, [R0,#0x4C]
51FCEA:  AND.W           R2, R2, #0xFD
51FCEE:  ORRS            R1, R2
51FCF0:  STRB.W          R1, [R0,#0x4C]
51FCF4:  POP.W           {R11}
51FCF8:  POP             {R4-R7,PC}
