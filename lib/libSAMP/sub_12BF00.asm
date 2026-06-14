; =========================================================
; Game Engine Function: sub_12BF00
; Address            : 0x12BF00 - 0x12C0B6
; =========================================================

12BF00:  PUSH            {R4-R7,LR}
12BF02:  ADD             R7, SP, #0xC
12BF04:  PUSH.W          {R8,R9,R11}
12BF08:  VPUSH           {D8-D9}
12BF0C:  SUB             SP, SP, #8
12BF0E:  MOV             R4, R2
12BF10:  MOV             R9, R1
12BF12:  MOV             R6, R0
12BF14:  CMP             R2, #2
12BF16:  BEQ             loc_12BF86
12BF18:  CMP             R4, #1
12BF1A:  BEQ             loc_12BFF8
12BF1C:  CMP             R4, #0
12BF1E:  BNE.W           loc_12C040
12BF22:  LDRB.W          R0, [R6,#0x50]
12BF26:  CBZ             R0, loc_12BF74
12BF28:  VLDR            S0, [R6,#0x2C]
12BF2C:  VLDR            S2, [R9]
12BF30:  VSUB.F32        S0, S2, S0
12BF34:  VCMP.F32        S0, #0.0
12BF38:  VMRS            APSR_nzcv, FPSCR
12BF3C:  ITTTT GE
12BF3E:  VLDRGE          S2, [R6,#0x30]
12BF42:  VLDRGE          S4, [R9,#4]
12BF46:  VSUBGE.F32      S2, S4, S2
12BF4A:  VCMPGE.F32      S2, #0.0
12BF4E:  IT GE
12BF50:  VMRSGE          APSR_nzcv, FPSCR
12BF54:  BLT             loc_12BF74
12BF56:  VLDR            S4, [R6,#0x14]
12BF5A:  VCMP.F32        S0, S4
12BF5E:  VMRS            APSR_nzcv, FPSCR
12BF62:  ITTT MI
12BF64:  VLDRMI          S0, [R6,#0x18]
12BF68:  VCMPMI.F32      S2, S0
12BF6C:  VMRSMI          APSR_nzcv, FPSCR
12BF70:  BMI.W           loc_12C074
12BF74:  LDR             R0, [R6]
12BF76:  MOVS            R1, #0
12BF78:  STRB.W          R1, [R6,#0x52]
12BF7C:  MOVS            R1, #0
12BF7E:  LDR             R2, [R0,#0x18]
12BF80:  MOV             R0, R6
12BF82:  BLX             R2
12BF84:  B               loc_12C040
12BF86:  LDR             R0, [R6]
12BF88:  MOVS            R1, #0
12BF8A:  LDRB.W          R8, [R6,#0x51]
12BF8E:  STRB.W          R1, [R6,#0x51]
12BF92:  MOVS            R1, #0
12BF94:  LDR             R2, [R0,#0x1C]
12BF96:  MOV             R0, R6
12BF98:  BLX             R2
12BF9A:  LDRB.W          R0, [R6,#0x50]
12BF9E:  CBZ             R0, loc_12BFEA
12BFA0:  VLDR            S0, [R6,#0x2C]
12BFA4:  VLDR            S2, [R9]
12BFA8:  VSUB.F32        S0, S2, S0
12BFAC:  VCMP.F32        S0, #0.0
12BFB0:  VMRS            APSR_nzcv, FPSCR
12BFB4:  ITTTT GE
12BFB6:  VLDRGE          S2, [R6,#0x30]
12BFBA:  VLDRGE          S4, [R9,#4]
12BFBE:  VSUBGE.F32      S2, S4, S2
12BFC2:  VCMPGE.F32      S2, #0.0
12BFC6:  IT GE
12BFC8:  VMRSGE          APSR_nzcv, FPSCR
12BFCC:  BLT             loc_12BFEA
12BFCE:  VLDR            S4, [R6,#0x14]
12BFD2:  VCMP.F32        S0, S4
12BFD6:  VMRS            APSR_nzcv, FPSCR
12BFDA:  ITTT MI
12BFDC:  VLDRMI          S0, [R6,#0x18]
12BFE0:  VCMPMI.F32      S2, S0
12BFE4:  VMRSMI          APSR_nzcv, FPSCR
12BFE8:  BMI             loc_12C096
12BFEA:  VMOV.I32        Q8, #0
12BFEE:  ADD.W           R0, R6, #0x34 ; '4'
12BFF2:  VST1.32         {D16-D17}, [R0]
12BFF6:  B               loc_12C040
12BFF8:  VLDR            S0, [R6,#0x34]
12BFFC:  VLDR            S4, [R9]
12C000:  VLDR            S2, [R6,#0x38]
12C004:  VLDR            S6, [R9,#4]
12C008:  VSUB.F32        S18, S4, S0
12C00C:  LDRB.W          R0, [R6,#0x51]
12C010:  VSUB.F32        S16, S6, S2
12C014:  CBZ             R0, loc_12C038
12C016:  VLDR            S0, [R6,#0x3C]
12C01A:  MOV             R1, SP
12C01C:  VLDR            S2, [R6,#0x40]
12C020:  VSUB.F32        S0, S18, S0
12C024:  LDR             R0, [R6]
12C026:  VSUB.F32        S2, S16, S2
12C02A:  LDR             R2, [R0,#0x10]
12C02C:  MOV             R0, R6
12C02E:  VSTR            S0, [SP,#0x30+var_30]
12C032:  VSTR            S2, [SP,#0x30+var_2C]
12C036:  BLX             R2
12C038:  VSTR            S18, [R6,#0x3C]
12C03C:  VSTR            S16, [R6,#0x40]
12C040:  LDRD.W          R5, R6, [R6,#0x44]
12C044:  CMP             R5, R6
12C046:  BEQ             loc_12C062
12C048:  LDR             R0, [R5]
12C04A:  CBZ             R0, loc_12C05E
12C04C:  LDRB.W          R1, [R0,#0x50]
12C050:  CBZ             R1, loc_12C05E
12C052:  LDR             R1, [R0]
12C054:  MOV             R2, R4
12C056:  LDR             R3, [R1]
12C058:  MOV             R1, R9
12C05A:  BLX             R3
12C05C:  CBNZ            R0, loc_12C070
12C05E:  ADDS            R5, #4
12C060:  B               loc_12C044
12C062:  MOVS            R0, #0
12C064:  ADD             SP, SP, #8
12C066:  VPOP            {D8-D9}
12C06A:  POP.W           {R8,R9,R11}
12C06E:  POP             {R4-R7,PC}
12C070:  MOVS            R0, #1
12C072:  B               loc_12C064
12C074:  LDR             R0, [R6]
12C076:  MOVS            R1, #1
12C078:  STRB.W          R1, [R6,#0x51]
12C07C:  MOVS            R1, #1
12C07E:  LDR             R2, [R0,#0x1C]
12C080:  MOV             R0, R6
12C082:  BLX             R2
12C084:  LDR             R2, [R6]
12C086:  LDRD.W          R0, R1, [R9]
12C08A:  STRD.W          R0, R1, [R6,#0x34]
12C08E:  MOV             R0, R6
12C090:  LDR             R1, [R2,#0xC]
12C092:  BLX             R1
12C094:  B               loc_12C040
12C096:  CMP.W           R8, #0
12C09A:  BEQ             loc_12BFEA
12C09C:  LDR             R0, [R6]
12C09E:  MOVS            R1, #1
12C0A0:  STRB.W          R1, [R6,#0x52]
12C0A4:  MOVS            R1, #1
12C0A6:  LDR             R2, [R0,#0x18]
12C0A8:  MOV             R0, R6
12C0AA:  BLX             R2
12C0AC:  LDR             R0, [R6]
12C0AE:  LDR             R1, [R0,#0x14]
12C0B0:  MOV             R0, R6
12C0B2:  BLX             R1
12C0B4:  B               loc_12BFEA
