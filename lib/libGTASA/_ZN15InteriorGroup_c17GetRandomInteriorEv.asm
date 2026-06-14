; =========================================================
; Game Engine Function: _ZN15InteriorGroup_c17GetRandomInteriorEv
; Address            : 0x449BB0 - 0x449C42
; =========================================================

449BB0:  PUSH            {R4,R5,R7,LR}
449BB2:  ADD             R7, SP, #8
449BB4:  MOV             R4, R0
449BB6:  LDRSB.W         R5, [R4,#0xF]
449BBA:  BLX             rand
449BBE:  UXTH            R0, R0
449BC0:  VLDR            S2, =0.000015259
449BC4:  VMOV            S0, R0
449BC8:  VMOV            S4, R5
449BCC:  VCVT.F32.S32    S0, S0
449BD0:  VCVT.F32.S32    S4, S4
449BD4:  VMUL.F32        S0, S0, S2
449BD8:  VMUL.F32        S0, S0, S4
449BDC:  VCVT.S32.F32    S0, S0
449BE0:  LDR             R0, [R4,#0x10]
449BE2:  CMP             R0, #0
449BE4:  VMOV            R1, S0
449BE8:  BEQ             loc_449BF0
449BEA:  CBZ             R1, locret_449C40
449BEC:  MOVS            R2, #1
449BEE:  B               loc_449BF2
449BF0:  MOVS            R2, #0
449BF2:  LDR             R0, [R4,#0x14]
449BF4:  CBZ             R0, loc_449BFC
449BF6:  CMP             R2, R1
449BF8:  BEQ             locret_449C40
449BFA:  ADDS            R2, #1
449BFC:  LDR             R0, [R4,#0x18]
449BFE:  CBZ             R0, loc_449C06
449C00:  CMP             R2, R1
449C02:  BEQ             locret_449C40
449C04:  ADDS            R2, #1
449C06:  LDR             R0, [R4,#0x1C]
449C08:  CBZ             R0, loc_449C10
449C0A:  CMP             R2, R1
449C0C:  BEQ             locret_449C40
449C0E:  ADDS            R2, #1
449C10:  LDR             R0, [R4,#0x20]
449C12:  CBZ             R0, loc_449C1A
449C14:  CMP             R2, R1
449C16:  BEQ             locret_449C40
449C18:  ADDS            R2, #1
449C1A:  LDR             R0, [R4,#0x24]
449C1C:  CBZ             R0, loc_449C24
449C1E:  CMP             R2, R1
449C20:  BEQ             locret_449C40
449C22:  ADDS            R2, #1
449C24:  LDR             R0, [R4,#0x28]
449C26:  CBZ             R0, loc_449C30
449C28:  CMP             R2, R1
449C2A:  IT EQ
449C2C:  POPEQ           {R4,R5,R7,PC}
449C2E:  ADDS            R2, #1
449C30:  LDR             R3, [R4,#0x2C]
449C32:  CMP             R2, R1
449C34:  MOV             R0, R3
449C36:  IT NE
449C38:  MOVNE           R0, #0
449C3A:  CMP             R3, #0
449C3C:  IT EQ
449C3E:  MOVEQ           R0, R3
449C40:  POP             {R4,R5,R7,PC}
