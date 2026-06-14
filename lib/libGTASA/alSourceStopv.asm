; =========================================================
; Game Engine Function: alSourceStopv
; Address            : 0x25AB84 - 0x25ACC2
; =========================================================

25AB84:  PUSH            {R4-R7,LR}
25AB86:  ADD             R7, SP, #0xC
25AB88:  PUSH.W          {R8-R11}
25AB8C:  SUB             SP, SP, #4
25AB8E:  MOV             R5, R1
25AB90:  MOV             R6, R0
25AB92:  BLX             j_GetContextRef
25AB96:  MOV             R9, R0
25AB98:  CMP.W           R9, #0
25AB9C:  BEQ             loc_25AC3C
25AB9E:  CMP             R6, #0
25ABA0:  BLT             loc_25AC44
25ABA2:  BEQ             loc_25ABBE
25ABA4:  ADD.W           R8, R9, #8
25ABA8:  MOVS            R4, #0
25ABAA:  LDR.W           R1, [R5,R4,LSL#2]
25ABAE:  MOV             R0, R8
25ABB0:  BLX             j_LookupUIntMapKey
25ABB4:  CMP             R0, #0
25ABB6:  BEQ             loc_25AC78
25ABB8:  ADDS            R4, #1
25ABBA:  CMP             R4, R6
25ABBC:  BLT             loc_25ABAA
25ABBE:  STR.W           R9, [SP,#0x20+var_20]
25ABC2:  MOVW            R1, #:lower16:(elf_hash_chain+0x6044)
25ABC6:  LDR.W           R0, [R9,#0x88]
25ABCA:  MOVT            R1, #:upper16:(elf_hash_chain+0x6044)
25ABCE:  LDR             R1, [R0,R1]
25ABD0:  LDR             R1, [R1,#0x2C]
25ABD2:  BLX             R1
25ABD4:  CMP             R6, #1
25ABD6:  BLT             loc_25AC24
25ABD8:  LDR             R0, [SP,#0x20+var_20]
25ABDA:  MOVW            R9, #0
25ABDE:  MOVS            R4, #0
25ABE0:  MOVW            R11, #0x1011
25ABE4:  ADD.W           R10, R0, #8
25ABE8:  MOVT            R9, #0xBFF0
25ABEC:  MOVW            R8, #0x1014
25ABF0:  LDR             R1, [R5]
25ABF2:  MOV             R0, R10
25ABF4:  BLX             j_LookupUIntMapKey
25ABF8:  LDR.W           R1, [R0,#0x80]
25ABFC:  STR.W           R4, [R0,#0x84]
25AC00:  CMP             R1, R11
25AC02:  BEQ             loc_25AC18
25AC04:  STR.W           R8, [R0,#0x80]
25AC08:  LDR.W           R1, [R0,#0x94]
25AC0C:  STRB.W          R4, [R0,#0xE0]
25AC10:  STR.W           R4, [R0,#0xE4]
25AC14:  STR.W           R1, [R0,#0x98]
25AC18:  SUBS            R6, #1
25AC1A:  ADD.W           R5, R5, #4
25AC1E:  STRD.W          R4, R9, [R0,#0x70]
25AC22:  BNE             loc_25ABF0
25AC24:  LDR.W           R9, [SP,#0x20+var_20]
25AC28:  MOV             R1, #0x161AC
25AC30:  LDR.W           R0, [R9,#0x88]
25AC34:  LDR             R1, [R0,R1]
25AC36:  LDR             R1, [R1,#0x30]
25AC38:  BLX             R1
25AC3A:  B               loc_25ACB2
25AC3C:  ADD             SP, SP, #4
25AC3E:  POP.W           {R8-R11}
25AC42:  POP             {R4-R7,PC}
25AC44:  LDR             R0, =(TrapALError_ptr - 0x25AC4A)
25AC46:  ADD             R0, PC; TrapALError_ptr
25AC48:  LDR             R0, [R0]; TrapALError
25AC4A:  LDRB            R0, [R0]
25AC4C:  CMP             R0, #0
25AC4E:  ITT NE
25AC50:  MOVNE           R0, #5; sig
25AC52:  BLXNE           raise
25AC56:  LDREX.W         R0, [R9,#0x50]
25AC5A:  CBNZ            R0, loc_25ACAA
25AC5C:  ADD.W           R0, R9, #0x50 ; 'P'
25AC60:  MOVW            R1, #0xA003
25AC64:  DMB.W           ISH
25AC68:  STREX.W         R2, R1, [R0]
25AC6C:  CBZ             R2, loc_25ACAE
25AC6E:  LDREX.W         R2, [R0]
25AC72:  CMP             R2, #0
25AC74:  BEQ             loc_25AC68
25AC76:  B               loc_25ACAA
25AC78:  LDR             R0, =(TrapALError_ptr - 0x25AC7E)
25AC7A:  ADD             R0, PC; TrapALError_ptr
25AC7C:  LDR             R0, [R0]; TrapALError
25AC7E:  LDRB            R0, [R0]
25AC80:  CMP             R0, #0
25AC82:  ITT NE
25AC84:  MOVNE           R0, #5; sig
25AC86:  BLXNE           raise
25AC8A:  LDREX.W         R0, [R9,#0x50]
25AC8E:  CBNZ            R0, loc_25ACAA
25AC90:  ADD.W           R0, R9, #0x50 ; 'P'
25AC94:  MOVW            R1, #0xA001
25AC98:  DMB.W           ISH
25AC9C:  STREX.W         R2, R1, [R0]
25ACA0:  CBZ             R2, loc_25ACAE
25ACA2:  LDREX.W         R2, [R0]
25ACA6:  CMP             R2, #0
25ACA8:  BEQ             loc_25AC9C
25ACAA:  CLREX.W
25ACAE:  DMB.W           ISH
25ACB2:  MOV             R0, R9
25ACB4:  ADD             SP, SP, #4
25ACB6:  POP.W           {R8-R11}
25ACBA:  POP.W           {R4-R7,LR}
25ACBE:  B.W             ALCcontext_DecRef
