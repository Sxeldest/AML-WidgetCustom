; =========================================================
; Game Engine Function: sub_17AD64
; Address            : 0x17AD64 - 0x17B19E
; =========================================================

17AD64:  PUSH            {R4-R7,LR}
17AD66:  ADD             R7, SP, #0xC
17AD68:  PUSH.W          {R8-R11}
17AD6C:  SUB             SP, SP, #0x1C
17AD6E:  MOV             R4, R0
17AD70:  LDR             R0, =(off_234E80 - 0x17AD7C)
17AD72:  MOV             R6, R2
17AD74:  LDR.W           R8, [R7,#arg_0]
17AD78:  ADD             R0, PC; off_234E80
17AD7A:  MOV             R11, R1
17AD7C:  MOV             R10, R3
17AD7E:  MOVS            R1, #1
17AD80:  LDR             R0, [R0]; dword_381B58
17AD82:  LDR             R2, [R0]
17AD84:  MOVW            R0, #0x19AC
17AD88:  STR             R2, [SP,#0x38+var_20]
17AD8A:  ADD.W           R9, R2, R0
17AD8E:  LDR             R5, [R2,R0]
17AD90:  MOVS.W          R0, R8,LSL#23
17AD94:  STRB.W          R1, [R5,#0x7C]
17AD98:  BMI             loc_17ADE8
17AD9A:  LDR.W           R0, [R9,#4]
17AD9E:  TST.W           R8, #0x1E
17ADA2:  STR             R0, [SP,#0x38+var_30]
17ADA4:  IT EQ
17ADA6:  ORREQ.W         R8, R8, #2
17ADAA:  ANDS.W          R0, R8, #0x20 ; ' '
17ADAE:  STR             R0, [SP,#0x38+var_2C]
17ADB0:  BEQ             loc_17ADBE
17ADB2:  LDR.W           R0, [R9,#8]
17ADB6:  CMP             R0, R5
17ADB8:  IT EQ
17ADBA:  STREQ.W         R5, [R9,#4]
17ADBE:  MOV             R0, R4
17ADC0:  MOV             R1, R11
17ADC2:  BL              sub_167664
17ADC6:  LDRB.W          R1, [R9,#0x36C]
17ADCA:  STR             R4, [SP,#0x38+var_34]
17ADCC:  STRD.W          R10, R5, [SP,#0x38+var_28]
17ADD0:  CBZ             R0, loc_17AE0A
17ADD2:  CBZ             R1, loc_17AE10
17ADD4:  LDR.W           R0, [R9,#0x384]
17ADD8:  CMP             R0, R11
17ADDA:  BNE             loc_17AE1A
17ADDC:  LDRB.W          R0, [R9,#0x370]
17ADE0:  MOVS            R1, #1
17ADE2:  UBFX.W          R10, R0, #1, #1
17ADE6:  B               loc_17AE20
17ADE8:  CBZ             R6, loc_17ADEE
17ADEA:  MOVS            R0, #0
17ADEC:  STRB            R0, [R6]
17ADEE:  CMP.W           R10, #0
17ADF2:  ITT NE
17ADF4:  MOVNE           R0, #0
17ADF6:  STRBNE.W        R0, [R10]
17ADFA:  LDR.W           R0, [R9,#0x24]
17ADFE:  CMP             R0, R11
17AE00:  BNE             loc_17AE06
17AE02:  BL              sub_166FD0
17AE06:  MOVS            R2, #0
17AE08:  B               loc_17B0E0
17AE0A:  MOV.W           R10, #0
17AE0E:  B               loc_17AE20
17AE10:  MOVS            R2, #0
17AE12:  MOV.W           R10, #1
17AE16:  LDR             R4, [SP,#0x38+var_20]
17AE18:  B               loc_17AE8A
17AE1A:  MOVS            R1, #1
17AE1C:  MOV.W           R10, #1
17AE20:  LDR             R4, [SP,#0x38+var_20]
17AE22:  MOVS.W          R0, R8,LSL#19
17AE26:  MOV.W           R2, #0
17AE2A:  BPL             loc_17AE8A
17AE2C:  CBZ             R1, loc_17AE8A
17AE2E:  LDRB.W          R0, [R9,#0x370]
17AE32:  LSLS            R0, R0, #0x1D
17AE34:  BMI             loc_17AE88
17AE36:  MOVS            R0, #0x20 ; ' '
17AE38:  BL              sub_1675A8
17AE3C:  CBZ             R0, loc_17AE88
17AE3E:  MOV             R0, R11
17AE40:  BL              sub_167004
17AE44:  VLDR            S0, =0.0001
17AE48:  MOVW            R2, #0xD70A
17AE4C:  VLDR            S2, [R9,#0x1C]
17AE50:  MOVW            R3, #0x3333
17AE54:  MOVT            R2, #0x3C23
17AE58:  MOVT            R3, #0x3F33
17AE5C:  VADD.F32        S0, S2, S0
17AE60:  VLDR            S2, [R4,#0x18]
17AE64:  VSUB.F32        S2, S0, S2
17AE68:  VMOV            R0, S0
17AE6C:  VMOV            R1, S2
17AE70:  BL              sub_16E950
17AE74:  CMP             R0, #0
17AE76:  BEQ.W           loc_17B150
17AE7A:  LDR             R0, [SP,#0x38+var_24]
17AE7C:  BL              sub_168010
17AE80:  MOV.W           R10, #1
17AE84:  MOVS            R2, #1
17AE86:  B               loc_17AE8A
17AE88:  MOVS            R2, #0
17AE8A:  LDR             R1, [SP,#0x38+var_2C]
17AE8C:  ADD.W           R0, R4, #0x408
17AE90:  STR             R0, [SP,#0x38+var_2C]
17AE92:  CBZ             R1, loc_17AEA4
17AE94:  LDR.W           R0, [R9,#8]
17AE98:  LDR             R1, [SP,#0x38+var_24]
17AE9A:  CMP             R0, R1
17AE9C:  ITT EQ
17AE9E:  LDREQ           R0, [SP,#0x38+var_30]
17AEA0:  STREQ.W         R0, [R9,#4]
17AEA4:  AND.W           R0, R8, #0x40 ; '@'
17AEA8:  MOVS            R1, #1
17AEAA:  EOR.W           R0, R1, R0,LSR#6
17AEAE:  EOR.W           R1, R10, #1
17AEB2:  ORRS            R0, R1
17AEB4:  BNE             loc_17AF24
17AEB6:  LDR.W           R0, [R9,#0x18]
17AEBA:  MOV             R3, R6
17AEBC:  LDR             R6, [SP,#0x38+var_24]
17AEBE:  CMP             R0, R11
17AEC0:  IT NE
17AEC2:  CMPNE           R0, #0
17AEC4:  BNE             loc_17AF2E
17AEC6:  MOVS.W          R0, R8,LSL#21
17AECA:  BMI             loc_17AF32
17AECC:  MOVS.W          R0, R8,LSL#30
17AED0:  MOV             R5, R3
17AED2:  BPL             loc_17AEFC
17AED4:  LDRB.W          R0, [R4,#0x3D8]
17AED8:  CBZ             R0, loc_17AEFC
17AEDA:  MOV             R0, R11
17AEDC:  MOV             R1, R6
17AEDE:  MOV             R10, R2
17AEE0:  BL              sub_166ECC
17AEE4:  MOVS.W          R0, R8,LSL#18
17AEE8:  BMI             loc_17AEF2
17AEEA:  MOV             R0, R11
17AEEC:  MOV             R1, R6
17AEEE:  BL              sub_166F3C
17AEF2:  MOV             R0, R6
17AEF4:  BL              sub_168010
17AEF8:  MOV             R2, R10
17AEFA:  MOV             R3, R5
17AEFC:  MOVS.W          R0, R8,LSL#29
17AF00:  BPL             loc_17AF08
17AF02:  LDRB.W          R0, [R4,#0x3D8]
17AF06:  CBNZ            R0, loc_17AF14
17AF08:  MOVS.W          R0, R8,LSL#27
17AF0C:  BPL             loc_17AF58
17AF0E:  LDRB.W          R0, [R4,#0x3DD]
17AF12:  CBZ             R0, loc_17AF58
17AF14:  MOVS.W          R0, R8,LSL#20
17AF18:  BMI             loc_17AF4A
17AF1A:  MOV             R0, R11
17AF1C:  MOV             R1, R6
17AF1E:  BL              sub_166ECC
17AF22:  B               loc_17AF4E
17AF24:  MOV             R3, R6
17AF26:  LDR             R6, [SP,#0x38+var_24]
17AF28:  CMP.W           R10, #0
17AF2C:  BNE             loc_17AEC6
17AF2E:  MOVS            R5, #0
17AF30:  B               loc_17AFCE
17AF32:  LDRB.W          R0, [R4,#0xF8]
17AF36:  CMP             R0, #0
17AF38:  BNE             loc_17AFC2
17AF3A:  LDRB.W          R0, [R4,#0xF9]
17AF3E:  CMP             R0, #0
17AF40:  BNE             loc_17AFC2
17AF42:  LDRB.W          R0, [R4,#0xFA]
17AF46:  CBNZ            R0, loc_17AFC2
17AF48:  B               loc_17AECC
17AF4A:  BL              sub_166FD0
17AF4E:  MOV             R0, R6
17AF50:  BL              sub_168010
17AF54:  MOVS            R2, #1
17AF56:  MOV             R3, R5
17AF58:  MOVS.W          R0, R8,LSL#28
17AF5C:  BPL             loc_17AF8E
17AF5E:  LDRB.W          R0, [R4,#0x3E2]
17AF62:  CBZ             R0, loc_17AF8E
17AF64:  MOVS.W          R0, R8,LSL#31
17AF68:  BNE             loc_17AF6E
17AF6A:  MOVS            R2, #1
17AF6C:  B               loc_17AF84
17AF6E:  LDR             R0, [SP,#0x38+var_2C]
17AF70:  VLDR            S0, [R4,#0x88]
17AF74:  VLDR            S2, [R0]
17AF78:  VCMP.F32        S2, S0
17AF7C:  VMRS            APSR_nzcv, FPSCR
17AF80:  IT LT
17AF82:  MOVLT           R2, #1
17AF84:  MOV             R10, R2
17AF86:  BL              sub_166FD0
17AF8A:  MOV             R2, R10
17AF8C:  MOV             R3, R5
17AF8E:  MOVS.W          R0, R8,LSL#31
17AF92:  BEQ             loc_17AFC2
17AF94:  LDR.W           R0, [R9,#0x24]
17AF98:  CMP             R0, R11
17AF9A:  BNE             loc_17AFC2
17AF9C:  VLDR            S0, [R4,#0x3F4]
17AFA0:  VCMP.F32        S0, #0.0
17AFA4:  VMRS            APSR_nzcv, FPSCR
17AFA8:  BLE             loc_17AFC2
17AFAA:  MOVS            R0, #0
17AFAC:  MOVS            R1, #1
17AFAE:  MOV             R10, R2
17AFB0:  BL              sub_16EA84
17AFB4:  MOV             R3, R5
17AFB6:  ORRS.W          R0, R0, R10
17AFBA:  BNE             loc_17AFC6
17AFBC:  MOVS            R2, #0
17AFBE:  MOVS            R5, #1
17AFC0:  B               loc_17AFCE
17AFC2:  CMP             R2, #0
17AFC4:  BEQ             loc_17AFBC
17AFC6:  MOVS            R5, #1
17AFC8:  MOVS            R2, #1
17AFCA:  STRB.W          R5, [R9,#0x16A]
17AFCE:  LDR.W           R0, [R9,#0x10C]
17AFD2:  CMP             R0, R11
17AFD4:  ITT EQ
17AFD6:  LDRBEQ.W        R0, [R9,#0x16A]
17AFDA:  CMPEQ           R0, #0
17AFDC:  BEQ.W           loc_17B0EA
17AFE0:  LDR.W           R0, [R9,#0x114]
17AFE4:  CMP             R0, R11
17AFE6:  BNE             loc_17B066
17AFE8:  MOVS.W          R0, R8,LSL#31
17AFEC:  MOV.W           R1, #3
17AFF0:  MOV.W           R0, #0
17AFF4:  STR             R5, [SP,#0x38+var_38]
17AFF6:  MOV             R5, R6
17AFF8:  STR             R3, [SP,#0x38+var_30]
17AFFA:  IT EQ
17AFFC:  MOVEQ           R1, #1
17AFFE:  MOV             R10, R2
17B000:  LDR.W           R4, [R9,#0x110]
17B004:  MOVS            R6, #0
17B006:  BL              sub_1706F8
17B00A:  VMOV            S0, R0
17B00E:  SUB.W           R0, R4, R11
17B012:  CLZ.W           R0, R0
17B016:  VCMP.F32        S0, #0.0
17B01A:  VMRS            APSR_nzcv, FPSCR
17B01E:  IT GT
17B020:  MOVGT           R6, #1
17B022:  LSRS            R0, R0, #5
17B024:  ORRS.W          R4, R0, R6
17B028:  BNE             loc_17B032
17B02A:  LDR.W           R0, [R9,#0x24]
17B02E:  CMP             R0, R11
17B030:  BNE             loc_17B05E
17B032:  MOV             R0, R11
17B034:  MOV             R1, R5
17B036:  ORR.W           R10, R10, R4
17B03A:  STR.W           R11, [R9,#0x110]
17B03E:  BL              sub_166ECC
17B042:  AND.W           R0, R8, #0x2000
17B046:  EOR.W           R1, R4, #1
17B04A:  ORR.W           R0, R1, R0,LSR#13
17B04E:  CBNZ            R0, loc_17B058
17B050:  MOV             R0, R11
17B052:  MOV             R1, R5
17B054:  BL              sub_166F3C
17B058:  MOVS            R0, #0xF
17B05A:  STR.W           R0, [R9,#0x38]
17B05E:  LDR             R3, [SP,#0x38+var_30]
17B060:  MOV             R2, R10
17B062:  LDR             R4, [SP,#0x38+var_20]
17B064:  LDR             R5, [SP,#0x38+var_38]
17B066:  LDR.W           R0, [R9,#0x24]
17B06A:  CMP             R0, R11
17B06C:  BNE             loc_17B0D4
17B06E:  CBZ             R2, loc_17B076
17B070:  MOVS            R0, #1
17B072:  STRB.W          R0, [R9,#0x32]
17B076:  LDR.W           R0, [R9,#0x4C]
17B07A:  CMP             R0, #2
17B07C:  BEQ             loc_17B0C0
17B07E:  CMP             R0, #1
17B080:  BNE             loc_17B0D4
17B082:  LDRB.W          R0, [R9,#0x30]
17B086:  CBZ             R0, loc_17B0AA
17B088:  LDR             R0, [SP,#0x38+var_34]
17B08A:  VLDR            S4, [R4,#0xE0]
17B08E:  VLDR            S6, [R4,#0xE4]
17B092:  VLDR            S0, [R0]
17B096:  VLDR            S2, [R0,#4]
17B09A:  VSUB.F32        S0, S4, S0
17B09E:  VSUB.F32        S2, S6, S2
17B0A2:  VSTR            S0, [R9,#0x40]
17B0A6:  VSTR            S2, [R9,#0x44]
17B0AA:  LDRB.W          R6, [R4,#0xE8]
17B0AE:  CMP             R6, #0
17B0B0:  IT NE
17B0B2:  MOVNE           R6, #1
17B0B4:  BEQ             loc_17B110
17B0B6:  MOV             R11, R2
17B0B8:  B               loc_17B134
17B0BA:  ALIGN 4
17B0BC:  DCD off_234E80 - 0x17AD7C
17B0C0:  LDR.W           R0, [R9,#0x114]
17B0C4:  CMP             R0, R11
17B0C6:  BEQ             loc_17B0D4
17B0C8:  MOV             R4, R2
17B0CA:  MOV             R6, R3
17B0CC:  BL              sub_166FD0
17B0D0:  MOV             R3, R6
17B0D2:  MOV             R2, R4
17B0D4:  MOVS            R6, #0
17B0D6:  CBZ             R3, loc_17B0DA
17B0D8:  STRB            R5, [R3]
17B0DA:  LDR             R5, [SP,#0x38+var_28]
17B0DC:  CBZ             R5, loc_17B0E0
17B0DE:  STRB            R6, [R5]
17B0E0:  MOV             R0, R2
17B0E2:  ADD             SP, SP, #0x1C
17B0E4:  POP.W           {R8-R11}
17B0E8:  POP             {R4-R7,PC}
17B0EA:  LDRB.W          R0, [R9,#0x16B]
17B0EE:  CMP             R0, #0
17B0F0:  BEQ.W           loc_17AFE0
17B0F4:  LDR.W           R0, [R9,#0x24]
17B0F8:  CBZ             R0, loc_17B144
17B0FA:  CMP             R0, R11
17B0FC:  BEQ             loc_17B144
17B0FE:  MOVS.W          R1, R8,LSL#17
17B102:  BMI.W           loc_17AFE0
17B106:  LDR             R1, [R6,#0x50]
17B108:  CMP             R0, R1
17B10A:  IT EQ
17B10C:  MOVEQ           R5, #1
17B10E:  B               loc_17AFE0
17B110:  AND.W           R0, R8, #2
17B114:  MOVS            R1, #1
17B116:  EOR.W           R0, R1, R0,LSR#1
17B11A:  EOR.W           R1, R5, #1
17B11E:  ORRS            R0, R1
17B120:  ITT EQ
17B122:  LDRBEQ.W        R0, [R9,#0x36C]
17B126:  CMPEQ           R0, #0
17B128:  BEQ             loc_17B158
17B12A:  MOV             R4, R3
17B12C:  MOV             R11, R2
17B12E:  BL              sub_166FD0
17B132:  MOV             R3, R4
17B134:  MOVS.W          R0, R8,LSL#18
17B138:  ITT PL
17B13A:  MOVPL           R0, #1
17B13C:  STRBPL.W        R0, [R9,#0x16A]
17B140:  MOV             R2, R11
17B142:  B               loc_17B0D6
17B144:  MOVS.W          R0, R8,LSL#17
17B148:  BMI.W           loc_17AFE0
17B14C:  MOVS            R5, #1
17B14E:  B               loc_17AFE0
17B150:  MOVS            R2, #0
17B152:  MOV.W           R10, #1
17B156:  B               loc_17AE8A
17B158:  MOV             R11, R2
17B15A:  MOVS.W          R0, R8,LSL#27
17B15E:  BMI             loc_17B164
17B160:  MOVS            R0, #0
17B162:  B               loc_17B16E
17B164:  LDRB.W          R0, [R4,#0x3EC]
17B168:  CMP             R0, #0
17B16A:  IT NE
17B16C:  MOVNE           R0, #1
17B16E:  MOVS.W          R1, R8,LSL#31
17B172:  MOV             R2, R11
17B174:  BNE             loc_17B17A
17B176:  MOVS            R1, #1
17B178:  B               loc_17B192
17B17A:  LDR             R1, [SP,#0x38+var_2C]
17B17C:  VLDR            S0, [R4,#0x88]
17B180:  VLDR            S2, [R1]
17B184:  MOVS            R1, #0
17B186:  VCMP.F32        S2, S0
17B18A:  VMRS            APSR_nzcv, FPSCR
17B18E:  IT LT
17B190:  MOVLT           R1, #1
17B192:  MOV             R4, R3
17B194:  CMP             R0, #0
17B196:  BNE             loc_17B12E
17B198:  ORR.W           R11, R1, R2
17B19C:  B               loc_17B12E
