; =========================================================
; Game Engine Function: alSourcePausev
; Address            : 0x25AA40 - 0x25AB66
; =========================================================

25AA40:  PUSH            {R4-R7,LR}
25AA42:  ADD             R7, SP, #0xC
25AA44:  PUSH.W          {R8-R11}
25AA48:  SUB             SP, SP, #4
25AA4A:  MOV             R5, R1
25AA4C:  MOV             R6, R0
25AA4E:  BLX             j_GetContextRef
25AA52:  MOV             R8, R0
25AA54:  CMP.W           R8, #0
25AA58:  BEQ             loc_25AAE0
25AA5A:  CMP             R6, #0
25AA5C:  BLT             loc_25AAE8
25AA5E:  BEQ             loc_25AA7A
25AA60:  ADD.W           R9, R8, #8
25AA64:  MOVS            R4, #0
25AA66:  LDR.W           R1, [R5,R4,LSL#2]
25AA6A:  MOV             R0, R9
25AA6C:  BLX             j_LookupUIntMapKey
25AA70:  CMP             R0, #0
25AA72:  BEQ             loc_25AB1C
25AA74:  ADDS            R4, #1
25AA76:  CMP             R4, R6
25AA78:  BLT             loc_25AA66
25AA7A:  LDR.W           R0, [R8,#0x88]
25AA7E:  MOV             R9, #0x161AC
25AA86:  LDR.W           R1, [R0,R9]
25AA8A:  LDR             R1, [R1,#0x2C]
25AA8C:  BLX             R1
25AA8E:  CMP             R6, #1
25AA90:  BLT             loc_25AAD2
25AA92:  ADD.W           R4, R8, #8
25AA96:  MOVW            R10, #0x1012
25AA9A:  MOVW            R11, #0x1013
25AA9E:  LDR             R1, [R5]
25AAA0:  MOV             R0, R4
25AAA2:  BLX             j_LookupUIntMapKey
25AAA6:  LDR.W           R1, [R8,#0x6C]
25AAAA:  CBZ             R1, loc_25AAB4
25AAAC:  MOVW            R1, #0x1013
25AAB0:  MOVS            R2, #0x84
25AAB2:  B               loc_25AAC8
25AAB4:  LDR.W           R1, [R0,#0x80]
25AAB8:  CMP             R1, R10
25AABA:  BNE             loc_25AACA
25AABC:  MOVS            R1, #0
25AABE:  MOVS            R2, #0xE4
25AAC0:  STRB.W          R1, [R0,#0xE0]
25AAC4:  STR.W           R11, [R0,#0x80]
25AAC8:  STR             R1, [R0,R2]
25AACA:  SUBS            R6, #1
25AACC:  ADD.W           R5, R5, #4
25AAD0:  BNE             loc_25AA9E
25AAD2:  LDR.W           R0, [R8,#0x88]
25AAD6:  LDR.W           R1, [R0,R9]
25AADA:  LDR             R1, [R1,#0x30]
25AADC:  BLX             R1
25AADE:  B               loc_25AB56
25AAE0:  ADD             SP, SP, #4
25AAE2:  POP.W           {R8-R11}
25AAE6:  POP             {R4-R7,PC}
25AAE8:  LDR             R0, =(TrapALError_ptr - 0x25AAEE)
25AAEA:  ADD             R0, PC; TrapALError_ptr
25AAEC:  LDR             R0, [R0]; TrapALError
25AAEE:  LDRB            R0, [R0]
25AAF0:  CMP             R0, #0
25AAF2:  ITT NE
25AAF4:  MOVNE           R0, #5; sig
25AAF6:  BLXNE           raise
25AAFA:  LDREX.W         R0, [R8,#0x50]
25AAFE:  CBNZ            R0, loc_25AB4E
25AB00:  ADD.W           R0, R8, #0x50 ; 'P'
25AB04:  MOVW            R1, #0xA003
25AB08:  DMB.W           ISH
25AB0C:  STREX.W         R2, R1, [R0]
25AB10:  CBZ             R2, loc_25AB52
25AB12:  LDREX.W         R2, [R0]
25AB16:  CMP             R2, #0
25AB18:  BEQ             loc_25AB0C
25AB1A:  B               loc_25AB4E
25AB1C:  LDR             R0, =(TrapALError_ptr - 0x25AB22)
25AB1E:  ADD             R0, PC; TrapALError_ptr
25AB20:  LDR             R0, [R0]; TrapALError
25AB22:  LDRB            R0, [R0]
25AB24:  CMP             R0, #0
25AB26:  ITT NE
25AB28:  MOVNE           R0, #5; sig
25AB2A:  BLXNE           raise
25AB2E:  LDREX.W         R0, [R8,#0x50]
25AB32:  CBNZ            R0, loc_25AB4E
25AB34:  ADD.W           R0, R8, #0x50 ; 'P'
25AB38:  MOVW            R1, #0xA001
25AB3C:  DMB.W           ISH
25AB40:  STREX.W         R2, R1, [R0]
25AB44:  CBZ             R2, loc_25AB52
25AB46:  LDREX.W         R2, [R0]
25AB4A:  CMP             R2, #0
25AB4C:  BEQ             loc_25AB40
25AB4E:  CLREX.W
25AB52:  DMB.W           ISH
25AB56:  MOV             R0, R8
25AB58:  ADD             SP, SP, #4
25AB5A:  POP.W           {R8-R11}
25AB5E:  POP.W           {R4-R7,LR}
25AB62:  B.W             ALCcontext_DecRef
