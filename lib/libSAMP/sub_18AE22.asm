; =========================================================
; Game Engine Function: sub_18AE22
; Address            : 0x18AE22 - 0x18B064
; =========================================================

18AE22:  PUSH            {R4-R7,LR}
18AE24:  ADD             R7, SP, #0xC
18AE26:  PUSH.W          {R8-R11}
18AE2A:  SUB             SP, SP, #4
18AE2C:  MOV             R10, R2
18AE2E:  MOV             R11, R1
18AE30:  MOV             LR, R0
18AE32:  CMP             R1, #1
18AE34:  BLT             loc_18AE74
18AE36:  SUB.W           R9, R11, #1
18AE3A:  ADD.W           R0, R10, R9,LSL#2
18AE3E:  LDR.W           R4, [R0,#0xD0]
18AE42:  LDR             R0, [R4,#4]
18AE44:  CMP             R0, #0x11
18AE46:  BLT             loc_18AE74
18AE48:  ADD.W           R0, R10, R11,LSL#2
18AE4C:  LDR.W           R5, [R0,#0xD0]
18AE50:  MOV             R0, LR
18AE52:  MOV             R1, R5
18AE54:  BL              sub_18B064
18AE58:  LDRB            R1, [R5]
18AE5A:  LDR             R0, [R4,#4]
18AE5C:  CMP             R1, #0
18AE5E:  BEQ.W           loc_18B000
18AE62:  SUBS            R0, #1
18AE64:  ADD.W           R1, R4, R0,LSL#2
18AE68:  ADD.W           R0, R4, R0,LSL#1
18AE6C:  LDR             R1, [R1,#0x48]
18AE6E:  LDRH            R0, [R0,#8]
18AE70:  STR             R1, [R5,#0x48]
18AE72:  B               loc_18B012
18AE74:  LDR.W           R0, [R10,#4]
18AE78:  LDR             R5, [R7,#arg_0]
18AE7A:  CMP             R0, R11
18AE7C:  BLE             loc_18AEB6
18AE7E:  ADD.W           R2, R10, R11,LSL#2
18AE82:  LDR.W           R1, [R2,#0xD4]
18AE86:  LDR             R6, [R1,#4]
18AE88:  CMP             R6, #0x11
18AE8A:  BLT             loc_18AEB6
18AE8C:  LDR.W           R0, [R2,#0xD0]
18AE90:  LDRB            R2, [R0]
18AE92:  CMP             R2, #0
18AE94:  BEQ.W           loc_18B028
18AE98:  LDR             R2, [R0,#4]
18AE9A:  LDRH            R6, [R1,#8]
18AE9C:  LDR             R3, [R1,#0x48]
18AE9E:  ADD.W           R5, R0, R2,LSL#1
18AEA2:  STRH            R6, [R5,#8]
18AEA4:  ADD.W           R6, R0, R2,LSL#2
18AEA8:  ADDS            R2, #1
18AEAA:  STR             R3, [R6,#0x48]
18AEAC:  ADD.W           R3, R10, R11,LSL#1
18AEB0:  LDRH            R6, [R1,#0xA]
18AEB2:  STRH            R6, [R3,#8]
18AEB4:  B               loc_18B052
18AEB6:  SUB.W           R1, R11, #1
18AEBA:  ADD.W           R2, R10, #0xD0
18AEBE:  CMP             R0, R11
18AEC0:  MOV             R0, R1
18AEC2:  IT GT
18AEC4:  MOVGT           R0, R11
18AEC6:  LDR.W           R8, [R2,R0,LSL#2]
18AECA:  MOV             R0, R11
18AECC:  IT GT
18AECE:  ADDGT           R0, #1
18AED0:  LDR.W           R9, [R2,R0,LSL#2]
18AED4:  LDRB.W          R0, [R8]
18AED8:  CBZ             R0, loc_18AF14
18AEDA:  LDR.W           R0, [R9,#4]
18AEDE:  CMP             R0, #1
18AEE0:  BLT             loc_18AF6C
18AEE2:  LDR.W           R2, [R8,#4]
18AEE6:  MOVS            R0, #0
18AEE8:  ADD.W           R6, R9, R0,LSL#1
18AEEC:  ADD.W           R4, R8, R2,LSL#1
18AEF0:  ADDS            R3, R2, #1
18AEF2:  STR.W           R3, [R8,#4]
18AEF6:  LDRH            R6, [R6,#8]
18AEF8:  ADD.W           R2, R8, R2,LSL#2
18AEFC:  STRH            R6, [R4,#8]
18AEFE:  ADD.W           R6, R9, R0,LSL#2
18AF02:  LDR.W           R5, [R9,#4]
18AF06:  ADDS            R0, #1
18AF08:  LDR             R6, [R6,#0x48]
18AF0A:  STR             R6, [R2,#0x48]
18AF0C:  CMP             R0, R5
18AF0E:  MOV             R2, R3
18AF10:  BLT             loc_18AEE8
18AF12:  B               loc_18AF6C
18AF14:  LDR.W           R0, [R8,#4]
18AF18:  LDR.W           R6, [R9,#0xD0]
18AF1C:  ADDS            R5, R0, #1
18AF1E:  STR.W           R5, [R8,#4]
18AF22:  ADD.W           R2, R8, R0,LSL#1
18AF26:  LDR.W           R4, [R9,#4]
18AF2A:  STRH            R3, [R2,#8]
18AF2C:  ADD.W           R3, R8, R5,LSL#2
18AF30:  CMP             R4, #1
18AF32:  STR.W           R6, [R3,#0xD0]
18AF36:  BLT             loc_18AF6C
18AF38:  ADD.W           R3, R8, R0,LSL#2
18AF3C:  ADDS            R6, R0, #2
18AF3E:  ADD.W           R12, R3, #0xD8
18AF42:  ADDS            R2, #0xA
18AF44:  ADD.W           R3, R9, #0xD4
18AF48:  MOVS            R0, #0
18AF4A:  LDR.W           R5, [R3,R0,LSL#2]
18AF4E:  ADDS            R4, R6, R0
18AF50:  STR.W           R4, [R8,#4]
18AF54:  STR.W           R5, [R12,R0,LSL#2]
18AF58:  ADD.W           R5, R9, R0,LSL#1
18AF5C:  LDRH            R5, [R5,#8]
18AF5E:  LDR.W           R4, [R9,#4]
18AF62:  STRH.W          R5, [R2,R0,LSL#1]
18AF66:  ADDS            R0, #1
18AF68:  CMP             R0, R4
18AF6A:  BLT             loc_18AF4A
18AF6C:  LDR.W           R0, [R10,#4]
18AF70:  CMP             R0, R11
18AF72:  BLE             loc_18AF84
18AF74:  MOV             R0, LR
18AF76:  MOV             R1, R11
18AF78:  MOV             R2, R10
18AF7A:  MOV             R4, LR
18AF7C:  BL              sub_18AC28
18AF80:  MOV             LR, R4
18AF82:  B               loc_18AF98
18AF84:  CMP.W           R11, #1
18AF88:  BLT             loc_18AF98
18AF8A:  MOV             R0, LR
18AF8C:  MOV             R2, R10
18AF8E:  MOV             R4, LR
18AF90:  BL              sub_18AC28
18AF94:  MOV             LR, R4
18AF96:  B               loc_18AFB0
18AF98:  CMP.W           R11, #0
18AF9C:  BNE             loc_18AFB0
18AF9E:  LDRB.W          R0, [R8]
18AFA2:  CBZ             R0, loc_18AFB0
18AFA4:  LDR             R2, [R7,#arg_0]
18AFA6:  MOVS            R0, #3
18AFA8:  LDRH.W          R1, [R8,#8]
18AFAC:  STR             R0, [R2,#4]
18AFAE:  STRH            R1, [R2]
18AFB0:  LDR.W           R0, [LR,#0x14]
18AFB4:  CMP             R9, R0
18AFB6:  ITT EQ
18AFB8:  LDREQ.W         R0, [R9,#0xC8]
18AFBC:  STREQ.W         R0, [LR,#0x14]
18AFC0:  LDRB.W          R0, [R9]
18AFC4:  CBZ             R0, loc_18AFDE
18AFC6:  LDR.W           R0, [R9,#0xCC]
18AFCA:  CBZ             R0, loc_18AFD4
18AFCC:  LDR.W           R1, [R9,#0xC8]
18AFD0:  STR.W           R1, [R0,#0xC8]
18AFD4:  LDR.W           R1, [R9,#0xC8]
18AFD8:  CBZ             R1, loc_18AFDE
18AFDA:  STR.W           R0, [R1,#0xCC]
18AFDE:  ADD.W           R0, LR, #4
18AFE2:  MOV             R1, R9
18AFE4:  BL              sub_18A206
18AFE8:  MOV             R0, R9; int
18AFEA:  MOV.W           R1, #0x154; n
18AFEE:  BLX             sub_22178C
18AFF2:  LDR.W           R1, [R10,#4]
18AFF6:  MOVS            R0, #0
18AFF8:  CMP             R1, #0x10
18AFFA:  IT LT
18AFFC:  MOVLT           R0, #1
18AFFE:  B               loc_18B05C
18B000:  ADD.W           R0, R4, R0,LSL#2
18B004:  LDR.W           R1, [R0,#0xD0]
18B008:  ADD.W           R0, R10, R9,LSL#1
18B00C:  STR.W           R1, [R5,#0xD0]
18B010:  LDRH            R0, [R0,#8]
18B012:  STRH            R0, [R5,#8]
18B014:  ADD.W           R1, R10, R9,LSL#1
18B018:  LDR             R0, [R4,#4]
18B01A:  SUBS            R0, #1
18B01C:  STR             R0, [R4,#4]
18B01E:  ADD.W           R0, R4, R0,LSL#1
18B022:  LDRH            R0, [R0,#8]
18B024:  STRH            R0, [R1,#8]
18B026:  B               loc_18B05A
18B028:  LDR             R2, [R5,#4]
18B02A:  CBNZ            R2, loc_18B034
18B02C:  LDRH            R6, [R0,#8]
18B02E:  MOVS            R2, #3
18B030:  STR             R2, [R5,#4]
18B032:  STRH            R6, [R5]
18B034:  LDR             R2, [R0,#4]
18B036:  LDR.W           R6, [R1,#0xD0]
18B03A:  ADD.W           R5, R0, R2,LSL#1
18B03E:  ADDS            R2, #1
18B040:  STRH            R3, [R5,#8]
18B042:  ADD.W           R3, R0, R2,LSL#2
18B046:  STR.W           R6, [R3,#0xD0]
18B04A:  ADD.W           R6, R10, R11,LSL#1
18B04E:  LDRH            R3, [R1,#8]
18B050:  STRH            R3, [R6,#8]
18B052:  STR             R2, [R0,#4]
18B054:  MOV             R0, LR
18B056:  BL              sub_18B0BA
18B05A:  MOVS            R0, #0
18B05C:  ADD             SP, SP, #4
18B05E:  POP.W           {R8-R11}
18B062:  POP             {R4-R7,PC}
