; =========================================================
; Game Engine Function: sub_1ABD84
; Address            : 0x1ABD84 - 0x1ABED8
; =========================================================

1ABD84:  PUSH            {R4-R7,LR}
1ABD86:  ADD             R7, SP, #0xC
1ABD88:  PUSH.W          {R11}
1ABD8C:  MOV             R4, R0
1ABD8E:  MOV             R5, R1
1ABD90:  CMP             R4, #0
1ABD92:  BEQ.W           loc_1ABED0
1ABD96:  CMP             R3, #1
1ABD98:  BLT             loc_1ABE60
1ABD9A:  SUBS            R6, R3, #1
1ABD9C:  LDR             R0, [R4]
1ABD9E:  MOV             R1, R5
1ABDA0:  MOV             R3, R6
1ABDA2:  BL              sub_1ABD84
1ABDA6:  MOV             R2, R0
1ABDA8:  LDR             R0, [R4,#4]
1ABDAA:  MOV             R1, R5
1ABDAC:  MOV             R3, R6
1ABDAE:  BL              sub_1ABD84
1ABDB2:  MOV             R2, R0
1ABDB4:  LDR             R0, [R4,#8]
1ABDB6:  MOV             R1, R5
1ABDB8:  MOV             R3, R6
1ABDBA:  BL              sub_1ABD84
1ABDBE:  MOV             R2, R0
1ABDC0:  LDR             R0, [R4,#0xC]
1ABDC2:  MOV             R1, R5
1ABDC4:  MOV             R3, R6
1ABDC6:  BL              sub_1ABD84
1ABDCA:  MOV             R2, R0
1ABDCC:  LDR             R0, [R4,#0x10]
1ABDCE:  MOV             R1, R5
1ABDD0:  MOV             R3, R6
1ABDD2:  BL              sub_1ABD84
1ABDD6:  MOV             R2, R0
1ABDD8:  LDR             R0, [R4,#0x14]
1ABDDA:  MOV             R1, R5
1ABDDC:  MOV             R3, R6
1ABDDE:  BL              sub_1ABD84
1ABDE2:  MOV             R2, R0
1ABDE4:  LDR             R0, [R4,#0x18]
1ABDE6:  MOV             R1, R5
1ABDE8:  MOV             R3, R6
1ABDEA:  BL              sub_1ABD84
1ABDEE:  MOV             R2, R0
1ABDF0:  LDR             R0, [R4,#0x1C]
1ABDF2:  MOV             R1, R5
1ABDF4:  MOV             R3, R6
1ABDF6:  BL              sub_1ABD84
1ABDFA:  MOV             R2, R0
1ABDFC:  LDR             R0, [R4,#0x20]
1ABDFE:  MOV             R1, R5
1ABE00:  MOV             R3, R6
1ABE02:  BL              sub_1ABD84
1ABE06:  MOV             R2, R0
1ABE08:  LDR             R0, [R4,#0x24]
1ABE0A:  MOV             R1, R5
1ABE0C:  MOV             R3, R6
1ABE0E:  BL              sub_1ABD84
1ABE12:  MOV             R2, R0
1ABE14:  LDR             R0, [R4,#0x28]
1ABE16:  MOV             R1, R5
1ABE18:  MOV             R3, R6
1ABE1A:  BL              sub_1ABD84
1ABE1E:  MOV             R2, R0
1ABE20:  LDR             R0, [R4,#0x2C]
1ABE22:  MOV             R1, R5
1ABE24:  MOV             R3, R6
1ABE26:  BL              sub_1ABD84
1ABE2A:  MOV             R2, R0
1ABE2C:  LDR             R0, [R4,#0x30]
1ABE2E:  MOV             R1, R5
1ABE30:  MOV             R3, R6
1ABE32:  BL              sub_1ABD84
1ABE36:  MOV             R2, R0
1ABE38:  LDR             R0, [R4,#0x34]
1ABE3A:  MOV             R1, R5
1ABE3C:  MOV             R3, R6
1ABE3E:  BL              sub_1ABD84
1ABE42:  MOV             R2, R0
1ABE44:  LDR             R0, [R4,#0x38]
1ABE46:  MOV             R1, R5
1ABE48:  MOV             R3, R6
1ABE4A:  BL              sub_1ABD84
1ABE4E:  MOV             R2, R0
1ABE50:  LDR             R0, [R4,#0x3C]
1ABE52:  MOV             R1, R5
1ABE54:  MOV             R3, R6
1ABE56:  POP.W           {R11}
1ABE5A:  POP.W           {R4-R7,LR}
1ABE5E:  B               sub_1ABD84
1ABE60:  VLDR            S2, [R4]
1ABE64:  VLDR            S0, =256.0
1ABE68:  VCMPE.F32       S2, #0.0
1ABE6C:  VLDR            S4, [R4,#4]
1ABE70:  VDIV.F32        S0, S0, S2
1ABE74:  VMRS            APSR_nzcv, FPSCR
1ABE78:  VLDR            S6, =0.0
1ABE7C:  IT GT
1ABE7E:  VMOVGT.F32      S6, S0
1ABE82:  VMUL.F32        S0, S4, S6
1ABE86:  VCVT.S32.F32    S0, S0
1ABE8A:  VMOV            R0, S0
1ABE8E:  STRB.W          R0, [R5,R2,LSL#2]
1ABE92:  ADD.W           R0, R5, R2,LSL#2
1ABE96:  VLDR            S0, [R4,#8]
1ABE9A:  VMUL.F32        S0, S6, S0
1ABE9E:  VCVT.S32.F32    S0, S0
1ABEA2:  VMOV            R1, S0
1ABEA6:  STRB            R1, [R0,#1]
1ABEA8:  VLDR            S0, [R4,#0xC]
1ABEAC:  VMUL.F32        S0, S6, S0
1ABEB0:  VCVT.S32.F32    S0, S0
1ABEB4:  VMOV            R1, S0
1ABEB8:  STRB            R1, [R0,#2]
1ABEBA:  VLDR            S0, [R4,#0x10]
1ABEBE:  VMUL.F32        S0, S6, S0
1ABEC2:  VCVT.S32.F32    S0, S0
1ABEC6:  VMOV            R1, S0
1ABECA:  STRB            R1, [R0,#3]
1ABECC:  STRB            R2, [R4,#0x18]
1ABECE:  ADDS            R2, #1
1ABED0:  MOV             R0, R2
1ABED2:  POP.W           {R11}
1ABED6:  POP             {R4-R7,PC}
