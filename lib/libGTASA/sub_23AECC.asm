; =========================================================
; Game Engine Function: sub_23AECC
; Address            : 0x23AECC - 0x23B106
; =========================================================

23AECC:  PUSH            {R4-R7,LR}
23AECE:  ADD             R7, SP, #0xC
23AED0:  PUSH.W          {R8-R11}
23AED4:  SUB             SP, SP, #0x14
23AED6:  MOV             R11, R0
23AED8:  STRD.W          R2, R1, [SP,#0x30+var_24]
23AEDC:  ADD             R0, SP, #0x30+var_20
23AEDE:  ADD             R1, SP, #0x30+var_24
23AEE0:  MOV             R9, R3
23AEE2:  BL              sub_23B180
23AEE6:  LDR.W           LR, [SP,#0x30+var_24]
23AEEA:  ADDS            R0, #1
23AEEC:  MOV.W           R8, #0
23AEF0:  MOV.W           R6, #0
23AEF4:  ITE NE
23AEF6:  MOVNE           R6, #1
23AEF8:  MOVEQ.W         R8, #1
23AEFC:  BIC.W           R1, LR, #1
23AF00:  CBZ             R1, loc_23AF6A
23AF02:  LDR             R2, [SP,#0x30+var_20]
23AF04:  MOV.W           R10, #2
23AF08:  CMP             R0, #0
23AF0A:  MOV.W           R5, #0
23AF0E:  IT EQ
23AF10:  MOVEQ.W         R10, #3
23AF14:  MOV.W           R12, #0xD800
23AF18:  MOVS            R4, #0
23AF1A:  ADD.W           R0, R5, R8
23AF1E:  ADDS            R3, R5, R6
23AF20:  LDRB            R0, [R2,R0]
23AF22:  LDRB            R3, [R2,R3]
23AF24:  ORR.W           R3, R3, R0,LSL#8
23AF28:  AND.W           R0, R12, R0,LSL#8
23AF2C:  CMP.W           R0, #0xD800
23AF30:  BNE             loc_23AF4C
23AF32:  ADDS            R0, R5, #3
23AF34:  CMP             R0, LR
23AF36:  BCS             loc_23AF78
23AF38:  ADD.W           R0, R10, R5
23AF3C:  LDRB            R0, [R2,R0]
23AF3E:  AND.W           R0, R0, #0xDC
23AF42:  CMP             R0, #0xDC
23AF44:  BNE             loc_23AF78
23AF46:  ADDS            R5, #2
23AF48:  MOVS            R0, #4
23AF4A:  B               loc_23AF5E
23AF4C:  CMP.W           R3, #0x800
23AF50:  MOV.W           R0, #3
23AF54:  IT CC
23AF56:  MOVCC           R0, #2
23AF58:  CMP             R3, #0x80
23AF5A:  IT CC
23AF5C:  MOVCC           R0, #1
23AF5E:  ADDS            R5, #2
23AF60:  ADD             R4, R0
23AF62:  CMP             R5, R1
23AF64:  BCC             loc_23AF1A
23AF66:  MOV             R5, R1
23AF68:  B               loc_23AF80
23AF6A:  MOV             R2, R11
23AF6C:  MOVS            R5, #0
23AF6E:  LDR.W           R1, [R2,#4]!
23AF72:  MOV.W           R9, #1
23AF76:  B               loc_23AF8E
23AF78:  CMP.W           R9, #0
23AF7C:  BNE.W           loc_23B0EC
23AF80:  MOV             R2, R11
23AF82:  ADDS.W          R9, R4, #1
23AF86:  LDR.W           R1, [R2,#4]!
23AF8A:  BEQ.W           loc_23B08E
23AF8E:  LDR.W           R0, [R11]; ptr
23AF92:  CMP             R1, R9
23AF94:  STR             R2, [SP,#0x30+var_28]
23AF96:  BEQ             loc_23AFAE
23AF98:  CMP             R0, #0
23AF9A:  BEQ.W           loc_23B0CC
23AF9E:  MOV             R1, R9; size
23AFA0:  BLX             realloc
23AFA4:  CMP             R0, #0
23AFA6:  BEQ.W           loc_23B0D8
23AFAA:  STRD.W          R0, R9, [R11]
23AFAE:  CMP             R5, #0
23AFB0:  BEQ.W           loc_23B0B4
23AFB4:  MOVS            R1, #2
23AFB6:  MOV.W           R9, #0
23AFBA:  STR.W           R11, [SP,#0x30+var_2C]
23AFBE:  LDR             R3, [SP,#0x30+var_20]
23AFC0:  ADD.W           R4, R9, R8
23AFC4:  ADD.W           R2, R9, R6
23AFC8:  LDRB            R4, [R3,R4]
23AFCA:  LDRB            R2, [R3,R2]
23AFCC:  ORR.W           R11, R2, R4,LSL#8
23AFD0:  MOV.W           R2, #0xD800
23AFD4:  AND.W           R2, R2, R4,LSL#8
23AFD8:  CMP.W           R2, #0xD800
23AFDC:  BNE             loc_23B026
23AFDE:  ADD.W           R9, R9, #2
23AFE2:  ADD.W           LR, R0, #2
23AFE6:  ADD.W           R2, R9, R8
23AFEA:  ADD.W           R4, R9, R6
23AFEE:  MOV.W           R10, #3
23AFF2:  LDRB            R2, [R3,R2]
23AFF4:  LDRB            R3, [R3,R4]
23AFF6:  MOV.W           R4, #0x300
23AFFA:  AND.W           R2, R4, R2,LSL#8
23AFFE:  BFI.W           R3, R11, #0xA, #0xA
23B002:  ORRS            R2, R3
23B004:  MOVS            R4, #4
23B006:  ADD.W           R11, R2, #0x10000
23B00A:  MOV.W           R2, R11,LSR#12
23B00E:  MOV.W           R12, R11,LSR#6
23B012:  BFI.W           R2, R1, #6, #0x1A
23B016:  BFI.W           R12, R1, #6, #0x1A
23B01A:  STRB            R2, [R0,#1]
23B01C:  MOVS            R2, #0xF0
23B01E:  ORR.W           R2, R2, R11,LSR#18
23B022:  STRB            R2, [R0]
23B024:  B               loc_23B064
23B026:  CMP.W           R11, #0x80
23B02A:  BCS             loc_23B032
23B02C:  MOVS            R4, #1
23B02E:  MOV             R3, R0
23B030:  B               loc_23B070
23B032:  MOVS            R2, #0
23B034:  CMP.W           R2, R11,LSR#11
23B038:  BNE             loc_23B04A
23B03A:  MOVS            R2, #0xC0
23B03C:  ORR.W           R12, R2, R11,LSR#6
23B040:  MOVS            R4, #2
23B042:  MOV.W           R10, #1
23B046:  MOV             LR, R0
23B048:  B               loc_23B064
23B04A:  MOVS            R2, #0xE0
23B04C:  MOV.W           R12, R11,LSR#6
23B050:  MOV.W           R10, #2
23B054:  MOV             LR, R0
23B056:  ORR.W           R2, R2, R4,LSR#4
23B05A:  BFI.W           R12, R10, #6, #0x1A
23B05E:  STRB.W          R2, [LR],#1
23B062:  MOVS            R4, #3
23B064:  BFI.W           R11, R1, #6, #0x1A
23B068:  ADD.W           R3, R0, R10
23B06C:  STRB.W          R12, [LR]
23B070:  ADD.W           R9, R9, #2
23B074:  ADD             R0, R4
23B076:  CMP             R9, R5
23B078:  STRB.W          R11, [R3]
23B07C:  BCC             loc_23AFBE
23B07E:  LDR             R2, [SP,#0x30+var_28]
23B080:  LDR.W           R11, [SP,#0x30+var_2C]
23B084:  LDR.W           R9, [R2]
23B088:  LDR.W           R0, [R11]
23B08C:  B               loc_23B0B6
23B08E:  CMP             R1, #0
23B090:  STR             R2, [SP,#0x30+var_28]
23B092:  BEQ             loc_23B0A0
23B094:  LDR.W           R0, [R11]; p
23B098:  CMP             R0, #0
23B09A:  IT NE
23B09C:  BLXNE           free
23B0A0:  MOV.W           R9, #0
23B0A4:  MOVS            R0, #0
23B0A6:  STRD.W          R9, R9, [R11]
23B0AA:  STR.W           R9, [R11,#8]
23B0AE:  CMP             R5, #0
23B0B0:  BNE.W           loc_23AFB4
23B0B4:  LDR             R2, [SP,#0x30+var_28]
23B0B6:  ADD             R0, R9
23B0B8:  MOVS            R1, #0
23B0BA:  STRB.W          R1, [R0,#-1]
23B0BE:  LDR             R0, [R2]
23B0C0:  STR.W           R0, [R11,#8]
23B0C4:  ADD             SP, SP, #0x14
23B0C6:  POP.W           {R8-R11}
23B0CA:  POP             {R4-R7,PC}
23B0CC:  MOV             R0, R9; byte_count
23B0CE:  BLX             malloc
23B0D2:  CMP             R0, #0
23B0D4:  BNE.W           loc_23AFAA
23B0D8:  LDR.W           R0, [R11]; p
23B0DC:  CMP             R0, #0
23B0DE:  IT NE
23B0E0:  BLXNE           free
23B0E4:  MOVS            R0, #0
23B0E6:  STRD.W          R0, R0, [R11]
23B0EA:  B               loc_23B0C0
23B0EC:  LDR             R0, =(off_677664 - 0x23B0F8)
23B0EE:  MOV.W           R2, #0x3AC
23B0F2:  LDR             R1, =(aCProjectsOswra_58 - 0x23B0FC); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23B0F4:  ADD             R0, PC; off_677664
23B0F6:  STR             R3, [SP,#0x30+var_30]
23B0F8:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23B0FA:  MOV             R3, R5
23B0FC:  LDR             R0, [R0]
23B0FE:  LDR             R0, [R0]; stream
23B100:  BLX             fprintf
23B104:  B               loc_23AF80
