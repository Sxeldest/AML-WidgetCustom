; =========================================================
; Game Engine Function: sub_AED88
; Address            : 0xAED88 - 0xAEFD0
; =========================================================

AED88:  PUSH            {R4-R7,LR}
AED8A:  ADD             R7, SP, #0xC
AED8C:  PUSH.W          {R8-R11}
AED90:  SUB             SP, SP, #4
AED92:  LDR             R6, [R1,#4]
AED94:  CMP             R6, R2
AED96:  BNE             loc_AEDFA
AED98:  CMP             R3, #0
AED9A:  BEQ.W           loc_AEF18
AED9E:  LDR             R3, =(off_114D5C - 0xAEDAA)
AEDA0:  MOVW            R5, #0x18C4
AEDA4:  LDR             R1, [R1,#0x14]
AEDA6:  ADD             R3, PC; off_114D5C
AEDA8:  LDR             R3, [R3]; dword_1ACF68
AEDAA:  LDR             R6, [R3]
AEDAC:  LDR             R3, [R6,R5]
AEDAE:  ADD             R6, R5
AEDB0:  VLDR            S0, [R6,#4]
AEDB4:  ADD.W           R6, R1, R2,LSL#1
AEDB8:  ADD.W           R12, R3, #0xC
AEDBC:  VLDR            S2, [R3,#0x10]
AEDC0:  VDIV.F32        S6, S0, S2
AEDC4:  VLDR            S2, =0.0
AEDC8:  VMOV.F32        S4, S2
AEDCC:  CMP             R1, R6
AEDCE:  BCS.W           loc_AEF56
AEDD2:  LDRH.W          R4, [R1],#2
AEDD6:  CMP             R4, #0xD
AEDD8:  BEQ             loc_AEDCC
AEDDA:  CMP             R4, #0xA
AEDDC:  BEQ.W           loc_AEF60
AEDE0:  LDR             R5, [R3]
AEDE2:  LDR.W           LR, [R3,#8]
AEDE6:  CMP             R5, R4
AEDE8:  MOV             R5, R12
AEDEA:  IT GT
AEDEC:  ADDGT.W         R5, LR, R4,LSL#2
AEDF0:  VLDR            S8, [R5]
AEDF4:  VMLA.F32        S4, S6, S8
AEDF8:  B               loc_AEDCC
AEDFA:  LDR             R3, =(off_114D5C - 0xAEE0C)
AEDFC:  MOVW            R5, #0x18C4
AEE00:  VLDR            S4, =0.0
AEE04:  MOV.W           R12, #0
AEE08:  ADD             R3, PC; off_114D5C
AEE0A:  LDR.W           R8, [R1,#0x14]
AEE0E:  VMOV.F32        S10, S4
AEE12:  VLDR            S8, =-0.0
AEE16:  LDR             R3, [R3]; dword_1ACF68
AEE18:  LDR             R3, [R3]
AEE1A:  LDR.W           LR, [R3,R5]
AEE1E:  ADD             R3, R5
AEE20:  ADD.W           R5, R8, R6,LSL#1
AEE24:  VLDR            S2, [R3,#4]
AEE28:  ADD.W           R1, LR, #0xC
AEE2C:  STR             R1, [SP,#0x20+var_20]
AEE2E:  VLDR            S0, [LR,#0x10]
AEE32:  VADD.F32        S6, S2, S4
AEE36:  MOVS            R1, #0
AEE38:  VDIV.F32        S0, S2, S0
AEE3C:  VMOV.F32        S12, S4
AEE40:  ADD.W           R4, R8, R1,LSL#1
AEE44:  MOV             R9, R1
AEE46:  VSTR            S10, [R0,#4]
AEE4A:  MOV             R1, R4
AEE4C:  CMP             R1, R5
AEE4E:  BCS             loc_AEE78
AEE50:  LDRH.W          R6, [R1],#2
AEE54:  CMP             R6, #0xD
AEE56:  BEQ             loc_AEE4C
AEE58:  CMP             R6, #0xA
AEE5A:  BEQ             loc_AEE7E
AEE5C:  LDR.W           R10, [LR]
AEE60:  LDR             R3, [SP,#0x20+var_20]
AEE62:  LDR.W           R11, [LR,#8]
AEE66:  CMP             R10, R6
AEE68:  IT GT
AEE6A:  ADDGT.W         R3, R11, R6,LSL#2
AEE6E:  VLDR            S14, [R3]
AEE72:  VMLA.F32        S12, S0, S14
AEE76:  B               loc_AEE4C
AEE78:  VMOV.F32        S14, S4
AEE7C:  B               loc_AEE86
AEE7E:  VMOV.F32        S14, S6
AEE82:  VMOV.F32        S12, S4
AEE86:  VCMP.F32        S14, #0.0
AEE8A:  SUBS            R6, R1, R4
AEE8C:  VMOV.F32        S1, S8
AEE90:  VMRS            APSR_nzcv, FPSCR
AEE94:  IT EQ
AEE96:  VMOVEQ.F32      S1, S2
AEE9A:  VCMP.F32        S12, #0.0
AEE9E:  VMRS            APSR_nzcv, FPSCR
AEEA2:  IT GT
AEEA4:  VMOVGT.F32      S1, S2
AEEA8:  VADD.F32        S12, S14, S1
AEEAC:  ADD.W           R1, R9, R6,ASR#1
AEEB0:  CMP             R1, R2
AEEB2:  BGT             loc_AEEBC
AEEB4:  VADD.F32        S10, S10, S12
AEEB8:  MOV             R12, R9
AEEBA:  B               loc_AEE3C
AEEBC:  ASRS            R1, R6, #1
AEEBE:  CMP             R9, R2
AEEC0:  STRD.W          R9, R1, [R0,#0xC]
AEEC4:  MOV.W           R1, #0
AEEC8:  STR.W           R12, [R0,#0x14]
AEECC:  VSTR            S12, [R0,#8]
AEED0:  STR             R1, [R0]
AEED2:  BGE             loc_AEFC8
AEED4:  VMOV.F32        S4, #-1.0
AEED8:  VLDR            S2, =0.0
AEEDC:  SUB.W           R1, R2, R9
AEEE0:  B               loc_AEEF2
AEEE2:  VADD.F32        S2, S6, S2
AEEE6:  SUBS            R1, #1
AEEE8:  ADD.W           R4, R4, #2
AEEEC:  VSTR            S2, [R0]
AEEF0:  BEQ             loc_AEFC8
AEEF2:  VMOV.F32        S6, S4
AEEF6:  LDRH            R2, [R4]
AEEF8:  CMP             R2, #0xA
AEEFA:  BEQ             loc_AEEE2
AEEFC:  LDR.W           R3, [LR]
AEF00:  LDR.W           R6, [LR,#8]
AEF04:  CMP             R3, R2
AEF06:  LDR             R3, [SP,#0x20+var_20]
AEF08:  IT GT
AEF0A:  ADDGT.W         R3, R6, R2,LSL#2
AEF0E:  VLDR            S6, [R3]
AEF12:  VMUL.F32        S6, S0, S6
AEF16:  B               loc_AEEE2
AEF18:  MOV.W           R3, #0x3F800000
AEF1C:  MOV.W           R12, #0
AEF20:  CMP             R2, #1
AEF22:  STRD.W          R12, R12, [R0]
AEF26:  STR             R3, [R0,#8]
AEF28:  BLT             loc_AEFBE
AEF2A:  LDR.W           LR, [R1,#0x14]
AEF2E:  MOVS            R3, #0
AEF30:  ADD.W           R5, LR, R2,LSL#1
AEF34:  B               loc_AEF40
AEF36:  SUBS            R3, R4, R3
AEF38:  ADD.W           R3, R1, R3,ASR#1
AEF3C:  CMP             R3, R2
AEF3E:  BGE             loc_AEFC2
AEF40:  MOV             R1, R3
AEF42:  ADD.W           R3, LR, R3,LSL#1
AEF46:  MOV             R4, R3
AEF48:  CMP             R4, R5
AEF4A:  BCS             loc_AEF36
AEF4C:  LDRH.W          R6, [R4],#2
AEF50:  CMP             R6, #0xA
AEF52:  BNE             loc_AEF48
AEF54:  B               loc_AEF36
AEF56:  VMOV.F32        S6, S2
AEF5A:  VMOV.F32        S8, S4
AEF5E:  B               loc_AEF7A
AEF60:  VLDR            S8, =0.0
AEF64:  VCMP.F32        S4, #0.0
AEF68:  VMRS            APSR_nzcv, FPSCR
AEF6C:  IT LS
AEF6E:  VMOVLS.F32      S4, S8
AEF72:  VADD.F32        S2, S0, S8
AEF76:  VMOV.F32        S6, S4
AEF7A:  VCMP.F32        S2, #0.0
AEF7E:  VLDR            S4, =-0.0
AEF82:  VMRS            APSR_nzcv, FPSCR
AEF86:  IT EQ
AEF88:  VMOVEQ.F32      S4, S0
AEF8C:  VCMP.F32        S8, #0.0
AEF90:  MOVS            R1, #0
AEF92:  VMRS            APSR_nzcv, FPSCR
AEF96:  IT GT
AEF98:  VMOVGT.F32      S4, S0
AEF9C:  VADD.F32        S0, S2, S4
AEFA0:  VCMP.F32        S6, S8
AEFA4:  VMRS            APSR_nzcv, FPSCR
AEFA8:  IT MI
AEFAA:  VMOVMI.F32      S6, S8
AEFAE:  STRD.W          R1, R2, [R0,#0xC]
AEFB2:  STR             R1, [R0,#4]
AEFB4:  VSTR            S6, [R0]
AEFB8:  VSTR            S0, [R0,#8]
AEFBC:  B               loc_AEFC8
AEFBE:  MOVS            R3, #0
AEFC0:  MOVS            R1, #0
AEFC2:  STRD.W          R3, R12, [R0,#0xC]
AEFC6:  STR             R1, [R0,#0x14]
AEFC8:  ADD             SP, SP, #4
AEFCA:  POP.W           {R8-R11}
AEFCE:  POP             {R4-R7,PC}
