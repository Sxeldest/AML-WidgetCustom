; =========================================================
; Game Engine Function: sub_15CDCC
; Address            : 0x15CDCC - 0x15CF00
; =========================================================

15CDCC:  PUSH            {R4-R7,LR}
15CDCE:  ADD             R7, SP, #0xC
15CDD0:  PUSH.W          {R8-R11}
15CDD4:  SUB             SP, SP, #4
15CDD6:  MOV             R4, R0
15CDD8:  CMP             R1, #0
15CDDA:  BEQ             loc_15CE5A
15CDDC:  MOV             R10, R1
15CDDE:  CMP.W           R1, #0x40000000
15CDE2:  BCS.W           loc_15CEF8
15CDE6:  MOV.W           R0, R10,LSL#2; unsigned int
15CDEA:  BLX             j__Znwj; operator new(uint)
15CDEE:  MOV             R1, R0
15CDF0:  LDR             R0, [R4]; void *
15CDF2:  STR             R1, [R4]
15CDF4:  CBZ             R0, loc_15CDFA
15CDF6:  BLX             j__ZdlPv; operator delete(void *)
15CDFA:  MOVS            R0, #0
15CDFC:  MOVS            R1, #0
15CDFE:  STR.W           R10, [R4,#4]
15CE02:  LDR             R2, [R4]
15CE04:  STR.W           R0, [R2,R1,LSL#2]
15CE08:  ADDS            R1, #1
15CE0A:  CMP             R10, R1
15CE0C:  BNE             loc_15CE02
15CE0E:  MOV             R6, R4
15CE10:  LDR.W           R11, [R6,#8]!
15CE14:  CMP.W           R11, #0
15CE18:  BEQ             loc_15CEF0
15CE1A:  MOV.W           R0, #0x55555555
15CE1E:  MOV.W           R1, #0x33333333
15CE22:  AND.W           R0, R0, R10,LSR#1
15CE26:  LDR.W           R8, [R11,#4]
15CE2A:  SUB.W           R0, R10, R0
15CE2E:  AND.W           R1, R1, R0,LSR#2
15CE32:  BIC.W           R0, R0, #0xCCCCCCCC
15CE36:  ADD             R0, R1
15CE38:  MOV.W           R1, #0x1010101
15CE3C:  ADD.W           R0, R0, R0,LSR#4
15CE40:  BIC.W           R0, R0, #0xF0F0F0F0
15CE44:  MULS            R0, R1
15CE46:  MOV.W           R9, R0,LSR#24
15CE4A:  CMP.W           R9, #1
15CE4E:  BHI             loc_15CE6A
15CE50:  SUB.W           R0, R10, #1
15CE54:  AND.W           R8, R8, R0
15CE58:  B               loc_15CE78
15CE5A:  LDR             R0, [R4]; void *
15CE5C:  MOVS            R5, #0
15CE5E:  STR             R5, [R4]
15CE60:  CBZ             R0, loc_15CE66
15CE62:  BLX             j__ZdlPv; operator delete(void *)
15CE66:  STR             R5, [R4,#4]
15CE68:  B               loc_15CEF0
15CE6A:  CMP             R8, R10
15CE6C:  BCC             loc_15CE78
15CE6E:  MOV             R0, R8
15CE70:  MOV             R1, R10
15CE72:  BLX             sub_221798
15CE76:  MOV             R8, R1
15CE78:  LDR             R0, [R4]
15CE7A:  STR.W           R6, [R0,R8,LSL#2]
15CE7E:  LDR.W           R6, [R11]
15CE82:  CBZ             R6, loc_15CEF0
15CE84:  SUB.W           R12, R10, #1
15CE88:  LDR             R0, [R6,#4]
15CE8A:  CMP.W           R9, #1
15CE8E:  BHI             loc_15CE96
15CE90:  AND.W           R0, R0, R12
15CE94:  B               loc_15CEA6
15CE96:  CMP             R0, R10
15CE98:  BCC             loc_15CEA6
15CE9A:  MOV             R1, R10
15CE9C:  MOV             R5, R12
15CE9E:  BLX             sub_221798
15CEA2:  MOV             R12, R5
15CEA4:  MOV             R0, R1
15CEA6:  CMP             R0, R8
15CEA8:  BNE             loc_15CEAE
15CEAA:  MOV             R11, R6
15CEAC:  B               loc_15CEE8
15CEAE:  LDR             R1, [R4]
15CEB0:  LDR.W           R2, [R1,R0,LSL#2]
15CEB4:  CMP             R2, #0
15CEB6:  MOV             R2, R6
15CEB8:  BEQ             loc_15CEE0
15CEBA:  MOV             R1, R2
15CEBC:  LDR             R2, [R2]
15CEBE:  CBZ             R2, loc_15CEC8
15CEC0:  LDR             R3, [R2,#8]
15CEC2:  LDR             R5, [R6,#8]
15CEC4:  CMP             R5, R3
15CEC6:  BEQ             loc_15CEBA
15CEC8:  STR.W           R2, [R11]
15CECC:  LDR             R2, [R4]
15CECE:  LDR.W           R2, [R2,R0,LSL#2]
15CED2:  LDR             R2, [R2]
15CED4:  STR             R2, [R1]
15CED6:  LDR             R1, [R4]
15CED8:  LDR.W           R0, [R1,R0,LSL#2]
15CEDC:  STR             R6, [R0]
15CEDE:  B               loc_15CEE8
15CEE0:  STR.W           R11, [R1,R0,LSL#2]
15CEE4:  MOV             R11, R6
15CEE6:  MOV             R8, R0
15CEE8:  LDR.W           R6, [R11]
15CEEC:  CMP             R6, #0
15CEEE:  BNE             loc_15CE88
15CEF0:  ADD             SP, SP, #4
15CEF2:  POP.W           {R8-R11}
15CEF6:  POP             {R4-R7,PC}
15CEF8:  LDR             R0, =(aAllocatorTAllo - 0x15CEFE); "allocator<T>::allocate(size_t n) 'n' ex"... ...
15CEFA:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
15CEFC:  BL              sub_DC8D4
