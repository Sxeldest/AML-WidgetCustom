; =========================================================
; Game Engine Function: _ZN9CShopping14GetNextSectionEj
; Address            : 0x35FC08 - 0x35FC74
; =========================================================

35FC08:  PUSH            {R4-R7,LR}
35FC0A:  ADD             R7, SP, #0xC
35FC0C:  PUSH.W          {R8}
35FC10:  MOV             R4, R0
35FC12:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
35FC16:  MOV             R5, R0
35FC18:  CBZ             R5, loc_35FC52
35FC1A:  LDR.W           R8, =(aSection - 0x35FC22); "section"
35FC1E:  ADD             R8, PC; "section"
35FC20:  LDRB            R6, [R5]
35FC22:  CMP             R6, #0
35FC24:  IT NE
35FC26:  CMPNE           R6, #0x23 ; '#'
35FC28:  BEQ             loc_35FC46
35FC2A:  MOV             R0, R5; char *
35FC2C:  MOV             R1, R8; char *
35FC2E:  MOVS            R2, #7; size_t
35FC30:  BLX             strncmp
35FC34:  CBZ             R0, loc_35FC5A
35FC36:  CMP             R6, #0x65 ; 'e'
35FC38:  ITT EQ
35FC3A:  LDRBEQ          R0, [R5,#1]
35FC3C:  CMPEQ           R0, #0x6E ; 'n'
35FC3E:  BNE             loc_35FC46
35FC40:  LDRB            R0, [R5,#2]
35FC42:  CMP             R0, #0x64 ; 'd'
35FC44:  BEQ             loc_35FC52
35FC46:  MOV             R0, R4; this
35FC48:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
35FC4C:  MOV             R5, R0
35FC4E:  CMP             R5, #0
35FC50:  BNE             loc_35FC20
35FC52:  MOVS            R0, #0
35FC54:  POP.W           {R8}
35FC58:  POP             {R4-R7,PC}
35FC5A:  ADR             R4, dword_35FC78
35FC5C:  MOV             R0, R5; char *
35FC5E:  MOV             R1, R4; char *
35FC60:  BLX             strtok
35FC64:  MOVS            R0, #0; char *
35FC66:  MOV             R1, R4; char *
35FC68:  POP.W           {R8}
35FC6C:  POP.W           {R4-R7,LR}
35FC70:  B.W             sub_19F900
