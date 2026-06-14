; =========================================================
; Game Engine Function: gzseek
; Address            : 0x20CEF2 - 0x20D028
; =========================================================

20CEF2:  PUSH            {R4-R7,LR}
20CEF4:  ADD             R7, SP, #0xC
20CEF6:  PUSH.W          {R11}
20CEFA:  MOV             R4, R0
20CEFC:  CMP             R4, #0
20CEFE:  MOV             R6, R1
20CF00:  MOV.W           R5, #0xFFFFFFFF
20CF04:  IT NE
20CF06:  CMPNE           R2, #2
20CF08:  BEQ             loc_20CF18
20CF0A:  LDR             R0, [R4,#0x38]
20CF0C:  ORR.W           R0, R0, #2
20CF10:  ADDS            R0, #1
20CF12:  BNE             loc_20CF20
20CF14:  MOV.W           R5, #0xFFFFFFFF
20CF18:  MOV             R0, R5
20CF1A:  POP.W           {R11}
20CF1E:  POP             {R4-R7,PC}
20CF20:  LDRB.W          R0, [R4,#0x5C]
20CF24:  CMP             R0, #0x77 ; 'w'
20CF26:  BNE             loc_20CF6E
20CF28:  CMP             R2, #0
20CF2A:  ITT EQ
20CF2C:  LDREQ           R0, [R4,#8]
20CF2E:  SUBEQ           R6, R6, R0
20CF30:  CMP             R6, #0
20CF32:  BLT             loc_20CF14
20CF34:  LDR             R0, [R4,#0x44]
20CF36:  CBNZ            R0, loc_20CF4A
20CF38:  MOV.W           R0, #0x4000; byte_count
20CF3C:  BLX             malloc
20CF40:  MOV.W           R1, #0x4000
20CF44:  STR             R0, [R4,#0x44]
20CF46:  BLX             j___aeabi_memclr8_1
20CF4A:  MOV.W           R5, #0xFFFFFFFF
20CF4E:  CMP             R6, #1
20CF50:  BLT             loc_20CF9C
20CF52:  LDR             R1, [R4,#0x44]
20CF54:  CMP.W           R6, #0x4000
20CF58:  MOV             R2, R6
20CF5A:  MOV             R0, R4
20CF5C:  IT GE
20CF5E:  MOVGE.W         R2, #0x4000
20CF62:  BLX             j_gzwrite
20CF66:  SUBS            R6, R6, R0
20CF68:  CMP             R0, #0
20CF6A:  BNE             loc_20CF4E
20CF6C:  B               loc_20CF18
20CF6E:  CMP             R2, #1
20CF70:  ITTE EQ
20CF72:  LDREQ           R1, [R4,#0x14]
20CF74:  ADDEQ           R5, R1, R6
20CF76:  MOVNE           R5, R6
20CF78:  CMP             R5, #0
20CF7A:  BLT             loc_20CF14
20CF7C:  LDR             R1, [R4,#0x58]
20CF7E:  CBZ             R1, loc_20CFA0
20CF80:  LDRD.W          R0, R1, [R4,#0x40]; stream
20CF84:  MOVS            R2, #0
20CF86:  STRD.W          R1, R2, [R4]
20CF8A:  MOV             R1, R5; off
20CF8C:  MOVS            R2, #0; whence
20CF8E:  BLX             fseek
20CF92:  CMP             R0, #0
20CF94:  BLT             loc_20CF14
20CF96:  STR             R5, [R4,#8]
20CF98:  STR             R5, [R4,#0x14]
20CF9A:  B               loc_20CF18
20CF9C:  LDR             R5, [R4,#8]
20CF9E:  B               loc_20CF18
20CFA0:  LDR             R1, [R4,#0x14]
20CFA2:  CMP             R5, R1
20CFA4:  BCS             loc_20CFDC
20CFA6:  CMP             R0, #0x72 ; 'r'
20CFA8:  BNE             loc_20CF14
20CFAA:  LDR             R0, [R4,#0x44]
20CFAC:  MOVS            R1, #0
20CFAE:  STRD.W          R1, R1, [R4,#0x38]
20CFB2:  MOVS            R2, #0
20CFB4:  STRD.W          R0, R1, [R4]
20CFB8:  MOVS            R0, #0
20CFBA:  MOVS            R1, #0
20CFBC:  BLX             j_crc32
20CFC0:  LDR             R1, [R4,#0x60]
20CFC2:  STR             R0, [R4,#0x4C]
20CFC4:  CBZ             R1, loc_20CFF2
20CFC6:  MOV             R0, R4
20CFC8:  BLX             j_inflateReset
20CFCC:  LDR             R0, [R4,#0x40]; stream
20CFCE:  MOVS            R2, #0; whence
20CFD0:  LDR             R1, [R4,#0x60]; off
20CFD2:  BLX             fseek
20CFD6:  CMP             R0, #0
20CFD8:  BGE             loc_20CFDE
20CFDA:  B               loc_20CF14
20CFDC:  SUBS            R5, R5, R1
20CFDE:  CBZ             R5, loc_20CFFC
20CFE0:  LDR             R0, [R4,#0x48]
20CFE2:  CBNZ            R0, loc_20CFEE
20CFE4:  MOV.W           R0, #0x4000; byte_count
20CFE8:  BLX             malloc
20CFEC:  STR             R0, [R4,#0x48]
20CFEE:  MOV             R6, R5
20CFF0:  B               loc_20CFFE
20CFF2:  LDR             R0, [R4,#0x40]; stream
20CFF4:  BLX             rewind
20CFF8:  CMP             R5, #0
20CFFA:  BNE             loc_20CFE0
20CFFC:  MOVS            R6, #0
20CFFE:  MOV.W           R5, #0xFFFFFFFF
20D002:  CMP             R6, #1
20D004:  BLT             loc_20D024
20D006:  LDR             R1, [R4,#0x48]; ptr
20D008:  CMP.W           R6, #0x4000
20D00C:  MOV             R2, R6
20D00E:  MOV             R0, R4; int
20D010:  IT GE
20D012:  MOVGE.W         R2, #0x4000; size_t
20D016:  BLX             j_gzread
20D01A:  CMP             R0, #1
20D01C:  IT GE
20D01E:  SUBGE           R6, R6, R0
20D020:  BGE             loc_20D002
20D022:  B               loc_20CF18
20D024:  LDR             R5, [R4,#0x14]
20D026:  B               loc_20CF18
