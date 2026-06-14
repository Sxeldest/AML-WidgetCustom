; =========================================================
; Game Engine Function: sub_A2DDC
; Address            : 0xA2DDC - 0xA2F0C
; =========================================================

A2DDC:  PUSH            {R4-R7,LR}
A2DDE:  ADD             R7, SP, #0xC
A2DE0:  PUSH.W          {R8-R10}
A2DE4:  VPUSH           {D8-D15}
A2DE8:  MOV             R4, R0
A2DEA:  LDRD.W          R6, R0, [R0,#0x20]
A2DEE:  VLDR            S26, [R7,#arg_18]
A2DF2:  VMOV            S30, R3
A2DF6:  ADDS            R5, R6, #1
A2DF8:  VLDR            S16, [R7,#arg_14]
A2DFC:  VLDR            S20, [R7,#arg_10]
A2E00:  VMOV            S17, R2
A2E04:  VLDR            S18, [R7,#arg_C]
A2E08:  MOV             R9, R1
A2E0A:  VLDR            S22, [R7,#arg_8]
A2E0E:  MOV             R10, R5
A2E10:  VLDR            S24, [R7,#arg_4]
A2E14:  CMP             R0, R6
A2E16:  VLDR            S28, [R7,#arg_0]
A2E1A:  BGT             loc_A2E5C
A2E1C:  CMP             R0, #0
A2E1E:  ITTE NE
A2E20:  ADDNE.W         R1, R0, R0,LSR#31
A2E24:  ADDNE.W         R1, R0, R1,ASR#1
A2E28:  MOVEQ           R1, #8
A2E2A:  CMP             R1, R5
A2E2C:  IT GT
A2E2E:  MOVGT           R5, R1
A2E30:  CMP             R0, R5
A2E32:  BGE             loc_A2E5C
A2E34:  ADD.W           R0, R5, R5,LSL#2
A2E38:  LSLS            R0, R0, #3
A2E3A:  BL              sub_885E4
A2E3E:  LDR             R1, [R4,#0x28]; src
A2E40:  MOV             R8, R0
A2E42:  CBZ             R1, loc_A2E58
A2E44:  LDR             R0, [R4,#0x20]
A2E46:  ADD.W           R0, R0, R0,LSL#2
A2E4A:  LSLS            R2, R0, #3; n
A2E4C:  MOV             R0, R8; dest
A2E4E:  BLX             j_memcpy
A2E52:  LDR             R0, [R4,#0x28]
A2E54:  BL              sub_88614
A2E58:  STRD.W          R5, R8, [R4,#0x24]
A2E5C:  LDR             R1, [R4,#0x3C]
A2E5E:  ADD.W           R2, R6, R6,LSL#2
A2E62:  LDR             R0, [R4,#0x28]
A2E64:  VSUB.F32        S4, S20, S22
A2E68:  STR.W           R10, [R4,#0x20]
A2E6C:  VSUB.F32        S6, S16, S18
A2E70:  VLDR            S0, [R1,#0x20]
A2E74:  STRH.W          R9, [R0,R2,LSL#3]
A2E78:  ADD.W           R0, R0, R2,LSL#3
A2E7C:  VADD.F32        S0, S0, S26
A2E80:  LDRB            R3, [R1,#0x1C]
A2E82:  VSTR            S16, [R0,#0x24]
A2E86:  VSTR            S17, [R0,#8]
A2E8A:  CMP             R3, #0
A2E8C:  VSTR            S30, [R0,#0xC]
A2E90:  VSTR            S28, [R0,#0x10]
A2E94:  VSTR            S24, [R0,#0x14]
A2E98:  VSTR            S0, [R0,#4]
A2E9C:  VSTR            S22, [R0,#0x18]
A2EA0:  VSTR            S18, [R0,#0x1C]
A2EA4:  VSTR            S20, [R0,#0x20]
A2EA8:  ITTTT NE
A2EAA:  ADDNE           R0, #4
A2EAC:  VMOVNE.F32      S2, #0.5
A2EB0:  VADDNE.F32      S0, S0, S2
A2EB4:  VCVTNE.S32.F32  S0, S0
A2EB8:  ITT NE
A2EBA:  VCVTNE.F32.S32  S0, S0
A2EBE:  VSTRNE          S0, [R0]
A2EC2:  VLDR            S8, =1.99
A2EC6:  LDR             R0, [R4,#0x38]
A2EC8:  VMOV.F32        S10, S8
A2ECC:  LDR             R1, [R4,#0x50]
A2ECE:  VLDR            S0, [R0,#0x1C]
A2ED2:  VLDR            S2, [R0,#0x20]
A2ED6:  VCVT.F32.S32    S0, S0
A2EDA:  VCVT.F32.S32    S2, S2
A2EDE:  VMLA.F32        S10, S4, S0
A2EE2:  VMLA.F32        S8, S6, S2
A2EE6:  VCVT.S32.F32    S0, S10
A2EEA:  VCVT.S32.F32    S2, S8
A2EEE:  VMOV            R0, S0
A2EF2:  VMOV            R2, S2
A2EF6:  MLA.W           R0, R2, R0, R1
A2EFA:  MOVS            R1, #1
A2EFC:  STRB.W          R1, [R4,#0x54]
A2F00:  STR             R0, [R4,#0x50]
A2F02:  VPOP            {D8-D15}
A2F06:  POP.W           {R8-R10}
A2F0A:  POP             {R4-R7,PC}
