; =========================================================
; Game Engine Function: sub_151B38
; Address            : 0x151B38 - 0x151C4A
; =========================================================

151B38:  PUSH            {R4-R7,LR}
151B3A:  ADD             R7, SP, #0xC
151B3C:  PUSH.W          {R11}
151B40:  VPUSH           {D8}
151B44:  MOV             R4, R0
151B46:  LDRB            R0, [R0,#0x11]
151B48:  CMP             R0, #0
151B4A:  BNE             loc_151C40
151B4C:  LDRB            R0, [R4,#0x12]
151B4E:  MOV             R5, R1
151B50:  MOVS            R1, #1
151B52:  STRB            R1, [R4,#0x11]
151B54:  CBZ             R0, loc_151BA8
151B56:  CMP.W           R5, #0x3E8
151B5A:  BCC             loc_151C34
151B5C:  LDRB            R0, [R4,#0x13]
151B5E:  CMP             R0, #0
151B60:  BNE             loc_151C34
151B62:  LDR             R0, [R4,#4]
151B64:  LDRB            R6, [R4,#0x10]
151B66:  BL              sub_15DF12
151B6A:  VMOV            D8, R0, R1
151B6E:  CBZ             R6, loc_151BB0
151B70:  VMOV            S0, R5
151B74:  VLDR            D17, =-1000.0
151B78:  VCVT.F64.U32    D16, S0
151B7C:  VDIV.F64        D16, D16, D17
151B80:  VADD.F64        D16, D8, D16
151B84:  VCMP.F64        D16, #0.0
151B88:  VMRS            APSR_nzcv, FPSCR
151B8C:  BPL             loc_151BEC
151B8E:  VLDR            D8, [R4,#0x18]
151B92:  VMOV            R0, R1, D16; x
151B96:  VMOV            R2, R3, D8; y
151B9A:  BLX             fmod
151B9E:  VMOV            D16, R0, R1
151BA2:  VADD.F64        D16, D8, D16
151BA6:  B               loc_151BEC
151BA8:  LDR             R0, [R4,#0x20]
151BAA:  SUBS            R0, R0, R5
151BAC:  STR             R0, [R4,#0x20]
151BAE:  B               loc_151C3A
151BB0:  LDR             R0, [R4,#4]
151BB2:  BL              sub_15DF00
151BB6:  CBNZ            R0, loc_151BF8
151BB8:  VLDR            D16, [R4,#0x18]
151BBC:  VCMP.F64        D8, D16
151BC0:  VMRS            APSR_nzcv, FPSCR
151BC4:  BGE             loc_151BF8
151BC6:  VMOV            S0, R5
151BCA:  VLDR            D17, =-1000.0
151BCE:  VCVT.F64.U32    D16, S0
151BD2:  VDIV.F64        D16, D16, D17
151BD6:  VADD.F64        D16, D8, D16
151BDA:  VCMP.F64        D16, #0.0
151BDE:  VMOV.I32        D17, #0
151BE2:  VMRS            APSR_nzcv, FPSCR
151BE6:  IT GT
151BE8:  VMOVGT.F64      D16, D17
151BEC:  VMOV            R2, R3, D16
151BF0:  LDR             R0, [R4,#4]
151BF2:  BL              sub_15DF60
151BF6:  B               loc_151C34
151BF8:  VMOV            S16, R5
151BFC:  BL              sub_17E2E4
151C00:  LDR             R2, [R4,#0x28]
151C02:  VCVT.F64.U32    D16, S16
151C06:  LDR             R1, [R4,#4]
151C08:  SUBS            R0, R0, R2
151C0A:  VMOV            S0, R0
151C0E:  VLDR            D17, =1000.0
151C12:  MOV             R0, R1
151C14:  VCVT.F64.U32    D18, S0
151C18:  VDIV.F64        D16, D16, D17
151C1C:  VDIV.F64        D17, D18, D17
151C20:  VSUB.F64        D16, D17, D16
151C24:  VMOV            R2, R3, D16
151C28:  BL              sub_15DF60
151C2C:  LDR             R0, [R4,#4]
151C2E:  LDR             R1, [R0]
151C30:  LDR             R1, [R1,#8]
151C32:  BLX             R1
151C34:  LDR             R0, [R4,#4]
151C36:  BL              sub_15DEFA
151C3A:  BL              sub_17E2E4
151C3E:  STR             R0, [R4,#0x2C]
151C40:  VPOP            {D8}
151C44:  POP.W           {R11}
151C48:  POP             {R4-R7,PC}
