; =========================================================
; Game Engine Function: png_free_data
; Address            : 0x1EDD0E - 0x1EE052
; =========================================================

1EDD0E:  PUSH            {R4-R7,LR}
1EDD10:  ADD             R7, SP, #0xC
1EDD12:  PUSH.W          {R8-R11}
1EDD16:  SUB             SP, SP, #4
1EDD18:  MOV             R11, R0
1EDD1A:  CMP.W           R11, #0
1EDD1E:  MOV             R6, R1
1EDD20:  MOV             R8, R3
1EDD22:  MOV             R10, R2
1EDD24:  IT NE
1EDD26:  CMPNE           R6, #0
1EDD28:  BEQ.W           loc_1EE04A
1EDD2C:  LDR.W           R1, [R6,#0x88]
1EDD30:  CBZ             R1, loc_1EDD64
1EDD32:  MOV             R9, R6
1EDD34:  LDR.W           R0, [R9,#0xF4]!
1EDD38:  AND.W           R0, R0, R10
1EDD3C:  LSLS            R0, R0, #0x11
1EDD3E:  BPL             loc_1EDD9E
1EDD40:  ADDS.W          R0, R8, #1
1EDD44:  BEQ             loc_1EDD6A
1EDD46:  RSB.W           R4, R8, R8,LSL#3
1EDD4A:  ADD.W           R0, R1, R4,LSL#2
1EDD4E:  LDR             R1, [R0,#4]; p
1EDD50:  MOV             R0, R11; int
1EDD52:  BLX             j_png_free
1EDD56:  LDR.W           R0, [R6,#0x88]
1EDD5A:  MOVS            R1, #0
1EDD5C:  ADD.W           R0, R0, R4,LSL#2
1EDD60:  STR             R1, [R0,#4]
1EDD62:  B               loc_1EDD9E
1EDD64:  ADD.W           R9, R6, #0xF4
1EDD68:  B               loc_1EDD9E
1EDD6A:  LDR.W           R0, [R6,#0x80]
1EDD6E:  CMP             R0, #1
1EDD70:  BLT             loc_1EDD8E
1EDD72:  MOVS            R4, #0
1EDD74:  MOVS            R5, #4
1EDD76:  LDR             R1, [R1,R5]; p
1EDD78:  MOV             R0, R11; int
1EDD7A:  BLX             j_png_free
1EDD7E:  LDR.W           R0, [R6,#0x80]
1EDD82:  ADDS            R4, #1
1EDD84:  LDR.W           R1, [R6,#0x88]; p
1EDD88:  ADDS            R5, #0x1C
1EDD8A:  CMP             R4, R0
1EDD8C:  BLT             loc_1EDD76
1EDD8E:  MOV             R0, R11; int
1EDD90:  BLX             j_png_free
1EDD94:  MOVS            R0, #0
1EDD96:  STRD.W          R0, R0, [R6,#0x80]
1EDD9A:  STR.W           R0, [R6,#0x88]
1EDD9E:  LDR.W           R0, [R9]
1EDDA2:  AND.W           R1, R10, R0
1EDDA6:  LSLS            R1, R1, #0x12
1EDDA8:  BPL             loc_1EDDC8
1EDDAA:  LDR             R0, [R6,#8]
1EDDAC:  LDR.W           R1, [R6,#0x9C]; p
1EDDB0:  BIC.W           R0, R0, #0x10
1EDDB4:  STR             R0, [R6,#8]
1EDDB6:  MOV             R0, R11; int
1EDDB8:  BLX             j_png_free
1EDDBC:  MOVS            R0, #0
1EDDBE:  STRH            R0, [R6,#0x16]
1EDDC0:  STR.W           R0, [R6,#0x9C]
1EDDC4:  LDR.W           R0, [R9]
1EDDC8:  AND.W           R1, R10, R0
1EDDCC:  LSLS            R1, R1, #0x17
1EDDCE:  BPL             loc_1EDDF6
1EDDD0:  LDR.W           R1, [R6,#0x10C]; p
1EDDD4:  MOV             R0, R11; int
1EDDD6:  BLX             j_png_free
1EDDDA:  LDR.W           R1, [R6,#0x110]; p
1EDDDE:  MOV             R0, R11; int
1EDDE0:  BLX             j_png_free
1EDDE4:  LDR             R0, [R6,#8]
1EDDE6:  MOVS            R1, #0
1EDDE8:  STRD.W          R1, R1, [R6,#0x10C]
1EDDEC:  BIC.W           R0, R0, #0x4000
1EDDF0:  STR             R0, [R6,#8]
1EDDF2:  LDR.W           R0, [R9]
1EDDF6:  AND.W           R1, R10, R0
1EDDFA:  LSLS            R1, R1, #0x18
1EDDFC:  BPL             loc_1EDE5C
1EDDFE:  LDR.W           R1, [R6,#0xDC]; p
1EDE02:  MOV             R0, R11; int
1EDE04:  BLX             j_png_free
1EDE08:  LDR.W           R1, [R6,#0xE8]; p
1EDE0C:  MOV             R0, R11; int
1EDE0E:  BLX             j_png_free
1EDE12:  LDR.W           R1, [R6,#0xEC]
1EDE16:  MOVS            R0, #0
1EDE18:  STR.W           R0, [R6,#0xE8]
1EDE1C:  CMP             R1, #0
1EDE1E:  STR.W           R0, [R6,#0xDC]
1EDE22:  BEQ             loc_1EDE50
1EDE24:  LDRB.W          R0, [R6,#0xF1]
1EDE28:  CBZ             R0, loc_1EDE44
1EDE2A:  MOVS            R4, #0
1EDE2C:  LDR.W           R1, [R1,R4,LSL#2]; p
1EDE30:  MOV             R0, R11; int
1EDE32:  BLX             j_png_free
1EDE36:  LDRB.W          R0, [R6,#0xF1]
1EDE3A:  ADDS            R4, #1
1EDE3C:  LDR.W           R1, [R6,#0xEC]; p
1EDE40:  CMP             R4, R0
1EDE42:  BLT             loc_1EDE2C
1EDE44:  MOV             R0, R11; int
1EDE46:  BLX             j_png_free
1EDE4A:  MOVS            R0, #0
1EDE4C:  STR.W           R0, [R6,#0xEC]
1EDE50:  LDR             R0, [R6,#8]
1EDE52:  BIC.W           R0, R0, #0x400
1EDE56:  STR             R0, [R6,#8]
1EDE58:  LDR.W           R0, [R9]
1EDE5C:  AND.W           R0, R0, R10
1EDE60:  LSLS            R0, R0, #0x1B
1EDE62:  BPL             loc_1EDE82
1EDE64:  LDR             R1, [R6,#0x74]; p
1EDE66:  MOV             R0, R11; int
1EDE68:  BLX             j_png_free
1EDE6C:  LDR             R1, [R6,#0x78]; p
1EDE6E:  MOV             R0, R11; int
1EDE70:  BLX             j_png_free
1EDE74:  LDR             R0, [R6,#8]
1EDE76:  MOVS            R1, #0
1EDE78:  STRD.W          R1, R1, [R6,#0x74]
1EDE7C:  BIC.W           R0, R0, #0x1000
1EDE80:  STR             R0, [R6,#8]
1EDE82:  LDR.W           R1, [R6,#0x100]
1EDE86:  CMP             R1, #0
1EDE88:  BEQ             loc_1EDF0E
1EDE8A:  LDR.W           R0, [R9]
1EDE8E:  AND.W           R0, R0, R10
1EDE92:  LSLS            R0, R0, #0x1A
1EDE94:  BPL             loc_1EDF0E
1EDE96:  ADDS.W          R0, R8, #1
1EDE9A:  BEQ             loc_1EDECC
1EDE9C:  MOV.W           R4, R8,LSL#4
1EDEA0:  MOV             R0, R11; int
1EDEA2:  LDR             R1, [R1,R4]; p
1EDEA4:  BLX             j_png_free
1EDEA8:  LDR.W           R0, [R6,#0x100]
1EDEAC:  ADD.W           R0, R0, R8,LSL#4
1EDEB0:  LDR             R1, [R0,#8]; p
1EDEB2:  MOV             R0, R11; int
1EDEB4:  BLX             j_png_free
1EDEB8:  LDR.W           R0, [R6,#0x100]
1EDEBC:  MOVS            R1, #0
1EDEBE:  STR             R1, [R0,R4]
1EDEC0:  LDR.W           R0, [R6,#0x100]
1EDEC4:  ADD.W           R0, R0, R8,LSL#4
1EDEC8:  STR             R1, [R0,#8]
1EDECA:  B               loc_1EDF0E
1EDECC:  LDR.W           R0, [R6,#0x104]
1EDED0:  CMP             R0, #1
1EDED2:  BLT             loc_1EDEFA
1EDED4:  MOVS            R4, #0
1EDED6:  MOVS            R5, #0
1EDED8:  LDR             R1, [R1,R4]; p
1EDEDA:  MOV             R0, R11; int
1EDEDC:  BLX             j_png_free
1EDEE0:  LDR.W           R0, [R6,#0x100]
1EDEE4:  ADD             R0, R4
1EDEE6:  LDR             R1, [R0,#8]; p
1EDEE8:  MOV             R0, R11; int
1EDEEA:  BLX             j_png_free
1EDEEE:  LDRD.W          R1, R0, [R6,#0x100]; p
1EDEF2:  ADDS            R5, #1
1EDEF4:  ADDS            R4, #0x10
1EDEF6:  CMP             R5, R0
1EDEF8:  BLT             loc_1EDED8
1EDEFA:  MOV             R0, R11; int
1EDEFC:  BLX             j_png_free
1EDF00:  LDR             R0, [R6,#8]
1EDF02:  MOVS            R1, #0
1EDF04:  STRD.W          R1, R1, [R6,#0x100]
1EDF08:  BIC.W           R0, R0, #0x2000
1EDF0C:  STR             R0, [R6,#8]
1EDF0E:  LDR.W           R1, [R6,#0xF8]
1EDF12:  CBZ             R1, loc_1EDF70
1EDF14:  LDR.W           R0, [R9]
1EDF18:  AND.W           R0, R0, R10
1EDF1C:  LSLS            R0, R0, #0x16
1EDF1E:  BPL             loc_1EDF70
1EDF20:  ADDS.W          R0, R8, #1
1EDF24:  BEQ             loc_1EDF44
1EDF26:  ADD.W           R4, R8, R8,LSL#2
1EDF2A:  ADD.W           R0, R1, R4,LSL#2
1EDF2E:  LDR             R1, [R0,#8]; p
1EDF30:  MOV             R0, R11; int
1EDF32:  BLX             j_png_free
1EDF36:  LDR.W           R0, [R6,#0xF8]
1EDF3A:  MOVS            R1, #0
1EDF3C:  ADD.W           R0, R0, R4,LSL#2
1EDF40:  STR             R1, [R0,#8]
1EDF42:  B               loc_1EDF70
1EDF44:  LDR.W           R0, [R6,#0xFC]
1EDF48:  CMP             R0, #1
1EDF4A:  BLT             loc_1EDF64
1EDF4C:  MOVS            R4, #0
1EDF4E:  MOVS            R5, #8
1EDF50:  LDR             R1, [R1,R5]; p
1EDF52:  MOV             R0, R11; int
1EDF54:  BLX             j_png_free
1EDF58:  LDRD.W          R1, R0, [R6,#0xF8]; p
1EDF5C:  ADDS            R4, #1
1EDF5E:  ADDS            R5, #0x14
1EDF60:  CMP             R4, R0
1EDF62:  BLT             loc_1EDF50
1EDF64:  MOV             R0, R11; int
1EDF66:  BLX             j_png_free
1EDF6A:  MOVS            R0, #0
1EDF6C:  STRD.W          R0, R0, [R6,#0xF8]
1EDF70:  LDR.W           R0, [R9]
1EDF74:  AND.W           R1, R10, R0
1EDF78:  LSLS            R1, R1, #0x10
1EDF7A:  BPL             loc_1EDFAC
1EDF7C:  LDR.W           R1, [R6,#0xD4]; p
1EDF80:  CBZ             R1, loc_1EDF8E
1EDF82:  MOV             R0, R11; int
1EDF84:  BLX             j_png_free
1EDF88:  MOVS            R0, #0
1EDF8A:  STR.W           R0, [R6,#0xD4]
1EDF8E:  LDR.W           R1, [R6,#0xD0]; p
1EDF92:  CBZ             R1, loc_1EDFA0
1EDF94:  MOV             R0, R11; int
1EDF96:  BLX             j_png_free
1EDF9A:  MOVS            R0, #0
1EDF9C:  STR.W           R0, [R6,#0xD0]
1EDFA0:  LDR             R0, [R6,#8]
1EDFA2:  BIC.W           R0, R0, #0x10000
1EDFA6:  STR             R0, [R6,#8]
1EDFA8:  LDR.W           R0, [R9]
1EDFAC:  AND.W           R1, R10, R0
1EDFB0:  LSLS            R1, R1, #0x1C
1EDFB2:  BPL             loc_1EDFD0
1EDFB4:  LDR.W           R1, [R6,#0xD8]; p
1EDFB8:  MOV             R0, R11; int
1EDFBA:  BLX             j_png_free
1EDFBE:  LDR             R0, [R6,#8]
1EDFC0:  MOVS            R1, #0
1EDFC2:  STR.W           R1, [R6,#0xD8]
1EDFC6:  BIC.W           R0, R0, #0x40 ; '@'
1EDFCA:  STR             R0, [R6,#8]
1EDFCC:  LDR.W           R0, [R9]
1EDFD0:  AND.W           R1, R10, R0
1EDFD4:  LSLS            R1, R1, #0x13
1EDFD6:  BPL             loc_1EDFF2
1EDFD8:  LDR             R1, [R6,#0x10]; p
1EDFDA:  MOV             R0, R11; int
1EDFDC:  BLX             j_png_free
1EDFE0:  LDR             R0, [R6,#8]
1EDFE2:  MOVS            R1, #0
1EDFE4:  STR             R1, [R6,#0x10]
1EDFE6:  STRH            R1, [R6,#0x14]
1EDFE8:  BIC.W           R0, R0, #8
1EDFEC:  STR             R0, [R6,#8]
1EDFEE:  LDR.W           R0, [R9]
1EDFF2:  AND.W           R1, R10, R0
1EDFF6:  LSLS            R1, R1, #0x19
1EDFF8:  BPL             loc_1EE034
1EDFFA:  LDR.W           R1, [R6,#0x114]
1EDFFE:  CBZ             R1, loc_1EE02C
1EE000:  LDR             R0, [R6,#4]
1EE002:  CBZ             R0, loc_1EE01C
1EE004:  MOVS            R4, #0
1EE006:  LDR.W           R1, [R1,R4,LSL#2]; p
1EE00A:  MOV             R0, R11; int
1EE00C:  BLX             j_png_free
1EE010:  LDR             R0, [R6,#4]
1EE012:  ADDS            R4, #1
1EE014:  LDR.W           R1, [R6,#0x114]; p
1EE018:  CMP             R4, R0
1EE01A:  BCC             loc_1EE006
1EE01C:  MOV             R0, R11; int
1EE01E:  BLX             j_png_free
1EE022:  MOVS            R0, #0
1EE024:  STR.W           R0, [R6,#0x114]
1EE028:  LDR.W           R0, [R9]
1EE02C:  LDR             R1, [R6,#8]
1EE02E:  BIC.W           R1, R1, #0x8000
1EE032:  STR             R1, [R6,#8]
1EE034:  ADDS.W          R2, R8, #1
1EE038:  MOVW            R1, #0x4220
1EE03C:  IT NE
1EE03E:  BICNE.W         R10, R10, R1
1EE042:  BIC.W           R0, R0, R10
1EE046:  STR.W           R0, [R9]
1EE04A:  ADD             SP, SP, #4
1EE04C:  POP.W           {R8-R11}
1EE050:  POP             {R4-R7,PC}
