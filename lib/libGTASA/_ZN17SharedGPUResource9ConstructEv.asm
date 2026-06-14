; =========================================================
; Game Engine Function: _ZN17SharedGPUResource9ConstructEv
; Address            : 0x1BCCA0 - 0x1BCDE4
; =========================================================

1BCCA0:  PUSH            {R4-R7,LR}
1BCCA2:  ADD             R7, SP, #0xC
1BCCA4:  PUSH.W          {R8-R11}
1BCCA8:  SUB             SP, SP, #0xC
1BCCAA:  STR             R0, [SP,#0x28+var_20]
1BCCAC:  LDR             R6, [R0,#0x10]
1BCCAE:  CBZ             R6, loc_1BCCD2
1BCCB0:  MOV.W           R8, #0
1BCCB4:  MOV             R0, R6
1BCCB6:  MOV.W           R11, #0
1BCCBA:  LDR             R1, [R0,#8]
1BCCBC:  LDR             R2, [R0,#0x14]
1BCCBE:  ADD             R11, R1
1BCCC0:  LDR             R0, [R0,#0x28]
1BCCC2:  ADD.W           R1, R2, #0xF
1BCCC6:  BIC.W           R1, R1, #0xF
1BCCCA:  CMP             R0, #0
1BCCCC:  ADD             R8, R1
1BCCCE:  BNE             loc_1BCCBA
1BCCD0:  B               loc_1BCCDA
1BCCD2:  MOV.W           R11, #0
1BCCD6:  MOV.W           R8, #0
1BCCDA:  AND.W           R0, R11, #1
1BCCDE:  ADD.W           R5, R0, R11
1BCCE2:  MOV             R0, R8; byte_count
1BCCE4:  BLX             malloc
1BCCE8:  STR             R0, [SP,#0x28+var_24]
1BCCEA:  LSLS            R0, R5, #1; byte_count
1BCCEC:  BLX             malloc
1BCCF0:  CMP             R6, #0
1BCCF2:  STR             R0, [SP,#0x28+var_28]
1BCCF4:  BEQ             loc_1BCDB0
1BCCF6:  MOV             R10, R11
1BCCF8:  MOV             R5, R8
1BCCFA:  LDR             R0, [R6,#0x18]
1BCCFC:  LDR.W           R9, [R6,#8]
1BCD00:  CBZ             R0, loc_1BCD50
1BCD02:  LDRD.W          R1, R2, [R6,#0x10]; size_t
1BCD06:  ADD.W           R0, R2, #0xF
1BCD0A:  BIC.W           R0, R0, #0xF
1BCD0E:  SUBS            R5, R5, R0
1BCD10:  LDR             R0, [SP,#0x28+var_24]
1BCD12:  ADD             R0, R5; void *
1BCD14:  BLX             memcpy_1
1BCD18:  LDR             R0, [R6,#0x3C]
1BCD1A:  LDR             R1, [R6,#0x50]
1BCD1C:  LDR             R2, [R6,#0x64]
1BCD1E:  ADD             R0, R5
1BCD20:  LDR             R3, [R6,#0x78]
1BCD22:  LDR.W           R4, [R6,#0x8C]
1BCD26:  LDR.W           R12, [R6,#0xA0]
1BCD2A:  STR             R0, [R6,#0x3C]
1BCD2C:  ADDS            R0, R1, R5
1BCD2E:  LDR.W           R1, [R6,#0xB4]
1BCD32:  STR             R0, [R6,#0x50]
1BCD34:  ADDS            R0, R2, R5
1BCD36:  STR             R0, [R6,#0x64]
1BCD38:  ADDS            R0, R3, R5
1BCD3A:  STR             R0, [R6,#0x78]
1BCD3C:  ADDS            R0, R4, R5
1BCD3E:  STR.W           R0, [R6,#0x8C]
1BCD42:  ADD.W           R0, R12, R5
1BCD46:  STR.W           R0, [R6,#0xA0]
1BCD4A:  ADDS            R0, R1, R5
1BCD4C:  STR.W           R0, [R6,#0xB4]
1BCD50:  LDR             R1, [R6]; void *
1BCD52:  SUB.W           R10, R10, R9
1BCD56:  CBZ             R1, loc_1BCD6C
1BCD58:  LDR             R2, [R6,#8]
1BCD5A:  LDR             R0, [SP,#0x28+var_28]
1BCD5C:  ADD.W           R0, R0, R10,LSL#1; void *
1BCD60:  LSLS            R2, R2, #1; size_t
1BCD62:  BLX             memcpy_1
1BCD66:  MOV.W           R0, R10,LSL#1
1BCD6A:  STR             R0, [R6,#0x2C]
1BCD6C:  LDR             R0, [R6,#0x38]
1BCD6E:  CBNZ            R0, loc_1BCD86
1BCD70:  LDR             R0, [R6,#0x1C]
1BCD72:  STR             R0, [R6,#0x38]
1BCD74:  STR             R0, [R6,#0x4C]
1BCD76:  STR             R0, [R6,#0x60]
1BCD78:  STR             R0, [R6,#0x74]
1BCD7A:  STR.W           R0, [R6,#0x88]
1BCD7E:  STR.W           R0, [R6,#0x9C]
1BCD82:  STR.W           R0, [R6,#0xB0]
1BCD86:  LDRB.W          R0, [R6,#0x20]
1BCD8A:  LDR             R1, [SP,#0x28+var_20]
1BCD8C:  CMP             R0, #0
1BCD8E:  STR             R1, [R6,#0x24]
1BCD90:  BEQ             loc_1BCDAA
1BCD92:  LDR             R0, [R6]; p
1BCD94:  CBZ             R0, loc_1BCD9E
1BCD96:  BLX             free
1BCD9A:  MOVS            R0, #0
1BCD9C:  STR             R0, [R6]
1BCD9E:  LDR             R0, [R6,#0x10]; p
1BCDA0:  CBZ             R0, loc_1BCDAA
1BCDA2:  BLX             free
1BCDA6:  MOVS            R0, #0
1BCDA8:  STR             R0, [R6,#0x10]
1BCDAA:  LDR             R6, [R6,#0x28]
1BCDAC:  CMP             R6, #0
1BCDAE:  BNE             loc_1BCCFA
1BCDB0:  LDR             R4, [SP,#0x28+var_20]
1BCDB2:  MOV.W           R2, R11,LSL#1; unsigned int
1BCDB6:  LDR             R6, [SP,#0x28+var_28]
1BCDB8:  LDR             R0, [R4,#0xC]; this
1BCDBA:  MOV             R1, R6; void *
1BCDBC:  BLX             j__ZN13RQIndexBuffer6UpdateEPKvj; RQIndexBuffer::Update(void const*,uint)
1BCDC0:  LDR             R5, [SP,#0x28+var_24]
1BCDC2:  MOV             R2, R8; unsigned int
1BCDC4:  LDR             R0, [R4,#8]; this
1BCDC6:  MOV             R1, R5; void *
1BCDC8:  BLX             j__ZN14RQVertexBuffer6UpdateEPKvj; RQVertexBuffer::Update(void const*,uint)
1BCDCC:  MOV             R0, R5; p
1BCDCE:  BLX             free
1BCDD2:  MOV             R0, R6; p
1BCDD4:  BLX             free
1BCDD8:  MOVS            R0, #0
1BCDDA:  STR             R0, [R4,#0x10]
1BCDDC:  ADD             SP, SP, #0xC
1BCDDE:  POP.W           {R8-R11}
1BCDE2:  POP             {R4-R7,PC}
