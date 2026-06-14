; =========================================================
; Game Engine Function: alSourceQueueBuffers
; Address            : 0x1CDCB0 - 0x1CE028
; =========================================================

1CDCB0:  PUSH            {R4-R11,LR}
1CDCB4:  ADD             R11, SP, #0x1C
1CDCB8:  SUB             SP, SP, #0x24
1CDCBC:  MOV             R7, R1
1CDCC0:  MOV             R4, R2
1CDCC4:  MOV             R6, R0
1CDCC8:  CMP             R7, #0
1CDCCC:  BEQ             loc_1CDD38
1CDCD0:  BL              j_GetContextRef
1CDCD4:  MOV             R9, R0
1CDCD8:  CMP             R9, #0
1CDCDC:  BEQ             loc_1CDD38
1CDCE0:  CMP             R7, #0
1CDCE4:  BLT             loc_1CDD40
1CDCE8:  ADD             R0, R9, #0x7C ; '|'
1CDCEC:  MOV             R1, R6
1CDCF0:  BL              j_LookupUIntMapKey
1CDCF4:  MOV             R8, R0
1CDCF8:  CMP             R8, #0
1CDCFC:  BEQ             loc_1CDD50
1CDD00:  LDR             R0, [R9,#0xFC]
1CDD04:  ADD             R0, R0, #8; mutex
1CDD08:  BL              j_EnterCriticalSection
1CDD0C:  LDR             R0, [R8,#0xCC]
1CDD10:  MOVW            R2, #0x1028
1CDD14:  LDR             R1, [R9,#0xFC]
1CDD18:  CMP             R0, R2
1CDD1C:  BNE             loc_1CDD60
1CDD20:  ADD             R0, R1, #8; mutex
1CDD24:  BL              j_LeaveCriticalSection
1CDD28:  MOV             R0, R9
1CDD2C:  MOVW            R1, #0xA004
1CDD30:  BL              j_alSetError
1CDD34:  B               loc_1CE018
1CDD38:  SUB             SP, R11, #0x1C
1CDD3C:  POP             {R4-R11,PC}
1CDD40:  MOV             R0, R9
1CDD44:  MOVW            R1, #0xA003
1CDD48:  BL              j_alSetError
1CDD4C:  B               loc_1CE018
1CDD50:  MOV             R0, R9
1CDD54:  MOVW            R1, #0xA001
1CDD58:  BL              j_alSetError
1CDD5C:  B               loc_1CE018
1CDD60:  STR             R4, [SP,#0x40+var_24]
1CDD64:  MOV             R10, R8
1CDD68:  LDR             R0, [R10,#0x6C]!
1CDD6C:  CMP             R0, #0
1CDD70:  BEQ             loc_1CDDA8
1CDD74:  MOV             R4, R0
1CDD78:  LDR             R5, [R4]
1CDD7C:  CMP             R5, #0
1CDD80:  BNE             loc_1CDD98
1CDD84:  LDR             R4, [R4,#4]
1CDD88:  CMP             R4, #0
1CDD8C:  BNE             loc_1CDD78
1CDD90:  MOV             R4, #0
1CDD94:  MOV             R5, #0
1CDD98:  CMP             R7, #1
1CDD9C:  BGE             loc_1CDDB0
1CDDA0:  MOV             R6, #0
1CDDA4:  B               loc_1CDF44
1CDDA8:  MOV             R5, #0
1CDDAC:  MOV             R4, #0
1CDDB0:  MOVW            R0, #0x1F9C
1CDDB4:  STR             R7, [SP,#0x40+var_28]
1CDDB8:  ADD             R0, R8, R0
1CDDBC:  STR             R9, [SP,#0x40+var_40]
1CDDC0:  STR             R0, [SP,#0x40+var_34]
1CDDC4:  MOVW            R0, #0x1FA0
1CDDC8:  ADD             R0, R8, R0
1CDDCC:  STR             R8, [SP,#0x40+var_30]
1CDDD0:  STR             R0, [SP,#0x40+var_38]
1CDDD4:  ADD             R0, R1, #0x3C ; '<'
1CDDD8:  STR             R0, [SP,#0x40+var_2C]
1CDDDC:  MOV             R6, #0
1CDDE0:  LDR             R0, =(CalcNonAttnSourceParams_ptr - 0x1CDDF4)
1CDDE4:  MOV             R8, #0
1CDDE8:  MOV             R9, #0
1CDDEC:  LDR             R0, [PC,R0]; CalcNonAttnSourceParams
1CDDF0:  STR             R0, [SP,#0x40+var_3C]
1CDDF4:  LDR             R0, [SP,#0x40+var_24]
1CDDF8:  LDR             R1, [R0,R9,LSL#2]
1CDDFC:  CMP             R1, #0
1CDE00:  BEQ             loc_1CDE1C
1CDE04:  LDR             R0, [SP,#0x40+var_2C]
1CDE08:  BL              j_LookupUIntMapKey
1CDE0C:  MOV             R7, R0
1CDE10:  CMP             R7, #0
1CDE14:  BNE             loc_1CDE20
1CDE18:  B               loc_1CDFB4
1CDE1C:  MOV             R7, #0
1CDE20:  MOV             R0, #0xC; size
1CDE24:  BL              malloc
1CDE28:  CMP             R6, #0
1CDE2C:  BEQ             loc_1CDE4C
1CDE30:  MOV             R1, #0
1CDE34:  STR             R0, [R4,#4]
1CDE38:  STR             R7, [R0]
1CDE3C:  STR             R1, [R0,#4]
1CDE40:  LDR             R0, [R4,#4]
1CDE44:  STR             R4, [R0,#8]
1CDE48:  B               loc_1CDE64
1CDE4C:  MOV             R1, #0
1CDE50:  STR             R7, [R0]
1CDE54:  STR             R1, [R0,#4]
1CDE58:  MOV             R8, R0
1CDE5C:  STR             R1, [R0,#8]
1CDE60:  MOV             R6, R0
1CDE64:  MOV             R4, R0
1CDE68:  CMP             R7, #0
1CDE6C:  BEQ             loc_1CDF24
1CDE70:  ADD             R0, R7, #0x2C ; ','
1CDE74:  DMB             ISH
1CDE78:  LDREX           R1, [R0]
1CDE7C:  ADD             R1, R1, #1
1CDE80:  STREX           R2, R1, [R0]
1CDE84:  CMP             R2, #0
1CDE88:  BNE             loc_1CDE78
1CDE8C:  ADD             R0, R7, #0x30 ; '0'
1CDE90:  DMB             ISH
1CDE94:  STR             R0, [SP,#0x40+var_20]
1CDE98:  BL              j_ReadLock
1CDE9C:  CMP             R5, #0
1CDEA0:  BEQ             loc_1CDED4
1CDEA4:  LDR             R0, [R7,#4]
1CDEA8:  LDR             R1, [R5,#4]
1CDEAC:  CMP             R1, R0
1CDEB0:  LDREQ           R0, [R7,#0x18]
1CDEB4:  LDREQ           R1, [R5,#0x18]
1CDEB8:  CMPEQ           R1, R0
1CDEBC:  BNE             loc_1CDF8C
1CDEC0:  LDR             R0, [R7,#0x1C]
1CDEC4:  LDR             R1, [R5,#0x1C]
1CDEC8:  CMP             R1, R0
1CDECC:  BEQ             loc_1CDF1C
1CDED0:  B               loc_1CDF8C
1CDED4:  LDR             R0, [R7,#0x10]
1CDED8:  BL              j_ChannelsFromFmt
1CDEDC:  LDR             R5, [SP,#0x40+var_30]
1CDEE0:  STR             R0, [R5,#0xD0]
1CDEE4:  LDR             R0, [R7,#0x14]
1CDEE8:  BL              j_BytesFromFmt
1CDEEC:  STR             R0, [R5,#0xD4]
1CDEF0:  MOV             R5, R7
1CDEF4:  LDR             R0, [R7,#0x10]
1CDEF8:  LDR             R1, =(CalcSourceParams_ptr - 0x1CDF0C)
1CDEFC:  CMP             R0, #0x1500
1CDF00:  LDR             R0, [SP,#0x40+var_3C]
1CDF04:  LDREQ           R0, [PC,R1]; CalcSourceParams
1CDF08:  LDR             R1, [SP,#0x40+var_38]
1CDF0C:  STR             R0, [R1]
1CDF10:  MOV             R1, #1
1CDF14:  LDR             R0, [SP,#0x40+var_34]
1CDF18:  STR             R1, [R0]
1CDF1C:  LDR             R0, [SP,#0x40+var_20]
1CDF20:  BL              j_ReadUnlock
1CDF24:  LDR             R0, [SP,#0x40+var_28]
1CDF28:  ADD             R9, R9, #1
1CDF2C:  CMP             R9, R0
1CDF30:  BLT             loc_1CDDF4
1CDF34:  LDR             R0, [R10]
1CDF38:  LDR             R9, [SP,#0x40+var_40]
1CDF3C:  LDR             R7, [SP,#0x40+var_28]
1CDF40:  LDR             R8, [SP,#0x40+var_30]
1CDF44:  MOVW            R1, #0x1029
1CDF48:  CMP             R0, #0
1CDF4C:  STR             R1, [R8,#0xCC]
1CDF50:  BEQ             loc_1CDF6C
1CDF54:  MOV             R1, R0
1CDF58:  MOV             R10, R1
1CDF5C:  LDR             R0, [R10,#4]!
1CDF60:  CMP             R0, #0
1CDF64:  BNE             loc_1CDF54
1CDF68:  STR             R1, [R6,#8]
1CDF6C:  STR             R6, [R10]
1CDF70:  LDR             R0, [R8,#0x70]
1CDF74:  ADD             R0, R0, R7
1CDF78:  STR             R0, [R8,#0x70]
1CDF7C:  LDR             R0, [R9,#0xFC]
1CDF80:  ADD             R0, R0, #8; mutex
1CDF84:  BL              j_LeaveCriticalSection
1CDF88:  B               loc_1CE018
1CDF8C:  LDR             R0, [SP,#0x40+var_20]
1CDF90:  BL              j_ReadUnlock
1CDF94:  LDR             R9, [SP,#0x40+var_40]
1CDF98:  LDR             R0, [R9,#0xFC]
1CDF9C:  ADD             R0, R0, #8; mutex
1CDFA0:  BL              j_LeaveCriticalSection
1CDFA4:  MOV             R0, R9
1CDFA8:  MOVW            R1, #0xA004
1CDFAC:  BL              j_alSetError
1CDFB0:  B               loc_1CDFD8
1CDFB4:  LDR             R9, [SP,#0x40+var_40]
1CDFB8:  LDR             R0, [R9,#0xFC]
1CDFBC:  ADD             R0, R0, #8; mutex
1CDFC0:  BL              j_LeaveCriticalSection
1CDFC4:  MOV             R0, R9
1CDFC8:  MOVW            R1, #0xA001
1CDFCC:  BL              j_alSetError
1CDFD0:  CMP             R6, #0
1CDFD4:  BEQ             loc_1CE018
1CDFD8:  LDM             R6, {R0,R6}
1CDFDC:  CMP             R0, #0
1CDFE0:  BEQ             loc_1CE004
1CDFE4:  ADD             R0, R0, #0x2C ; ','
1CDFE8:  DMB             ISH
1CDFEC:  LDREX           R1, [R0]
1CDFF0:  SUB             R1, R1, #1
1CDFF4:  STREX           R2, R1, [R0]
1CDFF8:  CMP             R2, #0
1CDFFC:  BNE             loc_1CDFEC
1CE000:  DMB             ISH
1CE004:  MOV             R0, R8; ptr
1CE008:  BL              free
1CE00C:  CMP             R6, #0
1CE010:  MOV             R8, R6
1CE014:  BNE             loc_1CDFD8
1CE018:  MOV             R0, R9
1CE01C:  SUB             SP, R11, #0x1C
1CE020:  POP             {R4-R11,LR}
1CE024:  B               j_ALCcontext_DecRef
