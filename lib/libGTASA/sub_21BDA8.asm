; =========================================================
; Game Engine Function: sub_21BDA8
; Address            : 0x21BDA8 - 0x21BFE6
; =========================================================

21BDA8:  PUSH            {R4-R7,LR}
21BDAA:  ADD             R7, SP, #0xC
21BDAC:  PUSH.W          {R8-R11}
21BDB0:  SUB             SP, SP, #0x14
21BDB2:  STR             R1, [SP,#0x30+var_20]
21BDB4:  MOV             R4, R0
21BDB6:  LDR             R0, [R4]
21BDB8:  CMP             R0, #0
21BDBA:  BEQ.W           loc_21BFDE
21BDBE:  LDR             R0, =(RwEngineInstance_ptr - 0x21BDC6)
21BDC0:  LDR             R1, =(meshModule_ptr - 0x21BDC8)
21BDC2:  ADD             R0, PC; RwEngineInstance_ptr
21BDC4:  ADD             R1, PC; meshModule_ptr
21BDC6:  LDR             R0, [R0]; RwEngineInstance
21BDC8:  LDR             R1, [R1]; meshModule
21BDCA:  LDR             R0, [R0]
21BDCC:  LDR             R1, [R1]
21BDCE:  LDR.W           R2, [R0,#0x13C]
21BDD2:  ADD             R0, R1
21BDD4:  LDR             R0, [R0,#4]
21BDD6:  BLX             R2
21BDD8:  MOV             R6, R0
21BDDA:  MOVS            R0, #0
21BDDC:  STRD.W          R0, R0, [R6,#4]
21BDE0:  LDR             R1, [R4]
21BDE2:  CBZ             R1, loc_21BDF6
21BDE4:  MOVS            R0, #0
21BDE6:  LDR             R2, [R1,#4]
21BDE8:  ADD             R0, R2
21BDEA:  ADDS            R0, #6
21BDEC:  STR             R0, [R6,#8]
21BDEE:  LDR             R1, [R1,#0xC]
21BDF0:  CMP             R1, #0
21BDF2:  BNE             loc_21BDE6
21BDF4:  LSLS            R0, R0, #2
21BDF6:  LDR             R1, =(RwEngineInstance_ptr - 0x21BDFC)
21BDF8:  ADD             R1, PC; RwEngineInstance_ptr
21BDFA:  LDR             R1, [R1]; RwEngineInstance
21BDFC:  LDR             R1, [R1]
21BDFE:  LDR.W           R1, [R1,#0x12C]
21BE02:  BLX             R1
21BE04:  STR             R0, [R6]
21BE06:  STR             R4, [SP,#0x30+var_2C]
21BE08:  LDR             R5, [R4]
21BE0A:  LDR             R1, [R5,#4]
21BE0C:  CBZ             R1, loc_21BE40
21BE0E:  LDR             R1, [R5]
21BE10:  LDR             R2, [R6,#4]
21BE12:  LDRH            R1, [R1]
21BE14:  STRH.W          R1, [R0,R2,LSL#1]
21BE18:  LDR             R0, [R6,#4]
21BE1A:  ADDS            R0, #1
21BE1C:  STR             R0, [R6,#4]
21BE1E:  LDR             R1, [R5,#4]
21BE20:  CMP             R1, #2
21BE22:  BCC             loc_21BE40
21BE24:  MOVS            R1, #1
21BE26:  LDR             R2, [R5]
21BE28:  LDR             R3, [R6]
21BE2A:  LDRH.W          R2, [R2,R1,LSL#1]
21BE2E:  ADDS            R1, #1
21BE30:  STRH.W          R2, [R3,R0,LSL#1]
21BE34:  LDR             R0, [R6,#4]
21BE36:  ADDS            R0, #1
21BE38:  STR             R0, [R6,#4]
21BE3A:  LDR             R2, [R5,#4]
21BE3C:  CMP             R1, R2
21BE3E:  BCC             loc_21BE26
21BE40:  LDR             R0, =(RwEngineInstance_ptr - 0x21BE46)
21BE42:  ADD             R0, PC; RwEngineInstance_ptr
21BE44:  LDR             R4, [R0]; RwEngineInstance
21BE46:  LDR             R0, [R5]
21BE48:  LDR             R1, [R4]
21BE4A:  LDR.W           R1, [R1,#0x130]
21BE4E:  BLX             R1
21BE50:  LDR             R0, =(meshModule_ptr - 0x21BE5A)
21BE52:  MOVS            R1, #0
21BE54:  STR             R1, [R5]
21BE56:  ADD             R0, PC; meshModule_ptr
21BE58:  LDR             R1, [R4]
21BE5A:  LDR.W           R9, [R5,#0xC]
21BE5E:  LDR             R0, [R0]; meshModule
21BE60:  LDR.W           R2, [R1,#0x140]
21BE64:  LDR             R0, [R0]
21BE66:  ADD             R0, R1
21BE68:  MOV             R1, R5
21BE6A:  LDR             R0, [R0,#4]
21BE6C:  BLX             R2
21BE6E:  CMP.W           R9, #0
21BE72:  BEQ.W           loc_21BFD6
21BE76:  LDR             R0, =(RwEngineInstance_ptr - 0x21BE7E)
21BE78:  LDR             R1, =(meshModule_ptr - 0x21BE80)
21BE7A:  ADD             R0, PC; RwEngineInstance_ptr
21BE7C:  ADD             R1, PC; meshModule_ptr
21BE7E:  LDR.W           R11, [R0]; RwEngineInstance
21BE82:  LDR             R0, =(RwEngineInstance_ptr - 0x21BE88)
21BE84:  ADD             R0, PC; RwEngineInstance_ptr
21BE86:  LDR             R0, [R0]; RwEngineInstance
21BE88:  STR             R0, [SP,#0x30+var_24]
21BE8A:  LDR             R0, [R1]; meshModule
21BE8C:  LDR             R1, =(meshModule_ptr - 0x21BE96)
21BE8E:  STR             R0, [SP,#0x30+var_28]
21BE90:  LDR             R0, =(RwEngineInstance_ptr - 0x21BE98)
21BE92:  ADD             R1, PC; meshModule_ptr
21BE94:  ADD             R0, PC; RwEngineInstance_ptr
21BE96:  LDR.W           R10, [R1]; meshModule
21BE9A:  LDR.W           R8, [R0]; RwEngineInstance
21BE9E:  CMP.W           R9, #0
21BEA2:  BNE             loc_21BEC4
21BEA4:  B               loc_21BEF6
21BEA6:  LDR             R0, [R5,#0xC]
21BEA8:  STR             R0, [R1,#0xC]
21BEAA:  LDR.W           R0, [R8]
21BEAE:  LDR.W           R1, [R10]
21BEB2:  LDR.W           R2, [R0,#0x140]
21BEB6:  ADD             R0, R1
21BEB8:  MOV             R1, R5
21BEBA:  LDR             R0, [R0,#4]
21BEBC:  BLX             R2
21BEBE:  CMP.W           R9, #0
21BEC2:  BEQ             loc_21BEF6
21BEC4:  LDRD.W          R2, R0, [R6]
21BEC8:  MOV             R5, R9
21BECA:  ADD.W           R1, R2, R0,LSL#1
21BECE:  LDRH.W          R3, [R1,#-2]
21BED2:  LDR             R4, [R5]
21BED4:  LDRH            R4, [R4]
21BED6:  CMP             R3, R4
21BED8:  BEQ             loc_21BF3A
21BEDA:  LDR             R5, [R5,#0xC]
21BEDC:  CMP             R5, #0
21BEDE:  BNE             loc_21BED2
21BEE0:  LDRH.W          R1, [R1,#-4]
21BEE4:  MOV             R5, R9
21BEE6:  LDR             R3, [R5]
21BEE8:  LDRH            R3, [R3]
21BEEA:  CMP             R1, R3
21BEEC:  BEQ             loc_21BF4E
21BEEE:  LDR             R5, [R5,#0xC]
21BEF0:  CMP             R5, #0
21BEF2:  BNE             loc_21BEE6
21BEF4:  B               loc_21BEFA
21BEF6:  LDRD.W          R2, R0, [R6]
21BEFA:  ADD.W           R1, R2, R0,LSL#1
21BEFE:  LDRH.W          R1, [R1,#-2]
21BF02:  STRH.W          R1, [R2,R0,LSL#1]
21BF06:  LDRD.W          R1, R2, [R6]
21BF0A:  LDR.W           R3, [R9]
21BF0E:  ADD.W           R1, R1, R2,LSL#1
21BF12:  LDRH            R3, [R3]
21BF14:  STRH            R3, [R1,#2]
21BF16:  MOVS            R1, #2
21BF18:  LDR             R2, [SP,#0x30+var_20]
21BF1A:  CBZ             R2, loc_21BF36
21BF1C:  ANDS.W          R0, R0, #1
21BF20:  MOV             R5, R9
21BF22:  BEQ             loc_21BF6E
21BF24:  LDRD.W          R0, R1, [R6]
21BF28:  LDR.W           R2, [R9]
21BF2C:  ADD.W           R0, R0, R1,LSL#1
21BF30:  MOVS            R1, #3
21BF32:  LDRH            R2, [R2]
21BF34:  STRH            R2, [R0,#4]
21BF36:  MOV             R5, R9
21BF38:  B               loc_21BF6E
21BF3A:  LDR             R4, [SP,#0x30+var_20]
21BF3C:  MOVS            R1, #0
21BF3E:  CBZ             R4, loc_21BF6E
21BF40:  ANDS.W          R4, R0, #1
21BF44:  ITT NE
21BF46:  STRHNE.W        R3, [R2,R0,LSL#1]
21BF4A:  MOVNE           R1, #1
21BF4C:  B               loc_21BF6E
21BF4E:  STRH.W          R1, [R2,R0,LSL#1]
21BF52:  MOVS            R1, #1
21BF54:  LDR             R2, [SP,#0x30+var_20]
21BF56:  CBZ             R2, loc_21BF6E
21BF58:  ANDS.W          R0, R0, #1
21BF5C:  BNE             loc_21BF6E
21BF5E:  LDRD.W          R0, R1, [R6]
21BF62:  LDR             R2, [R5]
21BF64:  ADD.W           R0, R0, R1,LSL#1
21BF68:  MOVS            R1, #2
21BF6A:  LDRH            R2, [R2]
21BF6C:  STRH            R2, [R0,#2]
21BF6E:  LDR             R0, [R6,#4]
21BF70:  ADD             R0, R1
21BF72:  STR             R0, [R6,#4]
21BF74:  LDR             R1, [R5,#4]
21BF76:  CMP             R1, #0
21BF78:  BEQ             loc_21BF96
21BF7A:  MOVS            R1, #0
21BF7C:  LDR             R2, [R5]
21BF7E:  LDR             R3, [R6]
21BF80:  LDRH.W          R2, [R2,R1,LSL#1]
21BF84:  ADDS            R1, #1
21BF86:  STRH.W          R2, [R3,R0,LSL#1]
21BF8A:  LDR             R0, [R6,#4]
21BF8C:  ADDS            R0, #1
21BF8E:  STR             R0, [R6,#4]
21BF90:  LDR             R2, [R5,#4]
21BF92:  CMP             R1, R2
21BF94:  BCC             loc_21BF7C
21BF96:  LDR.W           R1, [R11]
21BF9A:  LDR             R0, [R5]
21BF9C:  LDR.W           R1, [R1,#0x130]
21BFA0:  BLX             R1
21BFA2:  MOVS            R0, #0
21BFA4:  CMP             R9, R5
21BFA6:  STR             R0, [R5]
21BFA8:  MOV             R0, R9
21BFAA:  BEQ             loc_21BFB6
21BFAC:  MOV             R1, R0
21BFAE:  LDR             R0, [R1,#0xC]
21BFB0:  CMP             R0, R5
21BFB2:  BNE             loc_21BFAC
21BFB4:  B               loc_21BEA6
21BFB6:  LDR             R0, [SP,#0x30+var_24]
21BFB8:  LDR             R1, [SP,#0x30+var_28]
21BFBA:  LDR.W           R4, [R9,#0xC]
21BFBE:  LDR             R0, [R0]
21BFC0:  LDR             R1, [R1]
21BFC2:  LDR.W           R2, [R0,#0x140]
21BFC6:  ADD             R0, R1
21BFC8:  MOV             R1, R9
21BFCA:  LDR             R0, [R0,#4]
21BFCC:  BLX             R2
21BFCE:  CMP             R4, #0
21BFD0:  MOV             R9, R4
21BFD2:  BNE.W           loc_21BEBE
21BFD6:  LDR             R0, [SP,#0x30+var_2C]
21BFD8:  STR             R6, [R0]
21BFDA:  MOVS            R0, #0
21BFDC:  STR             R0, [R6,#0xC]
21BFDE:  ADD             SP, SP, #0x14
21BFE0:  POP.W           {R8-R11}
21BFE4:  POP             {R4-R7,PC}
