; =========================================================
; Game Engine Function: sub_15BA20
; Address            : 0x15BA20 - 0x15BB54
; =========================================================

15BA20:  PUSH            {R4-R7,LR}
15BA22:  ADD             R7, SP, #0xC
15BA24:  PUSH.W          {R8-R11}
15BA28:  SUB             SP, SP, #4
15BA2A:  MOV             R4, R0
15BA2C:  CMP             R1, #0
15BA2E:  BEQ             loc_15BAAE
15BA30:  MOV             R10, R1
15BA32:  CMP.W           R1, #0x40000000
15BA36:  BCS.W           loc_15BB4C
15BA3A:  MOV.W           R0, R10,LSL#2; unsigned int
15BA3E:  BLX             j__Znwj; operator new(uint)
15BA42:  MOV             R1, R0
15BA44:  LDR             R0, [R4]; void *
15BA46:  STR             R1, [R4]
15BA48:  CBZ             R0, loc_15BA4E
15BA4A:  BLX             j__ZdlPv; operator delete(void *)
15BA4E:  MOVS            R0, #0
15BA50:  MOVS            R1, #0
15BA52:  STR.W           R10, [R4,#4]
15BA56:  LDR             R2, [R4]
15BA58:  STR.W           R0, [R2,R1,LSL#2]
15BA5C:  ADDS            R1, #1
15BA5E:  CMP             R10, R1
15BA60:  BNE             loc_15BA56
15BA62:  MOV             R6, R4
15BA64:  LDR.W           R11, [R6,#8]!
15BA68:  CMP.W           R11, #0
15BA6C:  BEQ             loc_15BB44
15BA6E:  MOV.W           R0, #0x55555555
15BA72:  MOV.W           R1, #0x33333333
15BA76:  AND.W           R0, R0, R10,LSR#1
15BA7A:  LDR.W           R8, [R11,#4]
15BA7E:  SUB.W           R0, R10, R0
15BA82:  AND.W           R1, R1, R0,LSR#2
15BA86:  BIC.W           R0, R0, #0xCCCCCCCC
15BA8A:  ADD             R0, R1
15BA8C:  MOV.W           R1, #0x1010101
15BA90:  ADD.W           R0, R0, R0,LSR#4
15BA94:  BIC.W           R0, R0, #0xF0F0F0F0
15BA98:  MULS            R0, R1
15BA9A:  MOV.W           R9, R0,LSR#24
15BA9E:  CMP.W           R9, #1
15BAA2:  BHI             loc_15BABE
15BAA4:  SUB.W           R0, R10, #1
15BAA8:  AND.W           R8, R8, R0
15BAAC:  B               loc_15BACC
15BAAE:  LDR             R0, [R4]; void *
15BAB0:  MOVS            R5, #0
15BAB2:  STR             R5, [R4]
15BAB4:  CBZ             R0, loc_15BABA
15BAB6:  BLX             j__ZdlPv; operator delete(void *)
15BABA:  STR             R5, [R4,#4]
15BABC:  B               loc_15BB44
15BABE:  CMP             R8, R10
15BAC0:  BCC             loc_15BACC
15BAC2:  MOV             R0, R8
15BAC4:  MOV             R1, R10
15BAC6:  BLX             sub_221798
15BACA:  MOV             R8, R1
15BACC:  LDR             R0, [R4]
15BACE:  STR.W           R6, [R0,R8,LSL#2]
15BAD2:  LDR.W           R6, [R11]
15BAD6:  CBZ             R6, loc_15BB44
15BAD8:  SUB.W           R12, R10, #1
15BADC:  LDR             R0, [R6,#4]
15BADE:  CMP.W           R9, #1
15BAE2:  BHI             loc_15BAEA
15BAE4:  AND.W           R0, R0, R12
15BAE8:  B               loc_15BAFA
15BAEA:  CMP             R0, R10
15BAEC:  BCC             loc_15BAFA
15BAEE:  MOV             R1, R10
15BAF0:  MOV             R5, R12
15BAF2:  BLX             sub_221798
15BAF6:  MOV             R12, R5
15BAF8:  MOV             R0, R1
15BAFA:  CMP             R0, R8
15BAFC:  BNE             loc_15BB02
15BAFE:  MOV             R11, R6
15BB00:  B               loc_15BB3C
15BB02:  LDR             R1, [R4]
15BB04:  LDR.W           R2, [R1,R0,LSL#2]
15BB08:  CMP             R2, #0
15BB0A:  MOV             R2, R6
15BB0C:  BEQ             loc_15BB34
15BB0E:  MOV             R1, R2
15BB10:  LDR             R2, [R2]
15BB12:  CBZ             R2, loc_15BB1C
15BB14:  LDRB            R3, [R2,#8]
15BB16:  LDRB            R5, [R6,#8]
15BB18:  CMP             R5, R3
15BB1A:  BEQ             loc_15BB0E
15BB1C:  STR.W           R2, [R11]
15BB20:  LDR             R2, [R4]
15BB22:  LDR.W           R2, [R2,R0,LSL#2]
15BB26:  LDR             R2, [R2]
15BB28:  STR             R2, [R1]
15BB2A:  LDR             R1, [R4]
15BB2C:  LDR.W           R0, [R1,R0,LSL#2]
15BB30:  STR             R6, [R0]
15BB32:  B               loc_15BB3C
15BB34:  STR.W           R11, [R1,R0,LSL#2]
15BB38:  MOV             R11, R6
15BB3A:  MOV             R8, R0
15BB3C:  LDR.W           R6, [R11]
15BB40:  CMP             R6, #0
15BB42:  BNE             loc_15BADC
15BB44:  ADD             SP, SP, #4
15BB46:  POP.W           {R8-R11}
15BB4A:  POP             {R4-R7,PC}
15BB4C:  LDR             R0, =(aAllocatorTAllo - 0x15BB52); "allocator<T>::allocate(size_t n) 'n' ex"... ...
15BB4E:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
15BB50:  BL              sub_DC8D4
