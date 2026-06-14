; =========================================================
; Game Engine Function: _ZN9CShopping11FindSectionEjPKc
; Address            : 0x35FB64 - 0x35FC00
; =========================================================

35FB64:  PUSH            {R4-R7,LR}
35FB66:  ADD             R7, SP, #0xC
35FB68:  PUSH.W          {R8-R11}
35FB6C:  SUB             SP, SP, #4
35FB6E:  MOV             R8, R1
35FB70:  MOV             R5, R0
35FB72:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
35FB76:  MOV             R4, R0
35FB78:  CBZ             R4, loc_35FBF2
35FB7A:  LDR.W           R10, =(aSection - 0x35FB8A); "section"
35FB7E:  ADR.W           R9, dword_35FC04
35FB82:  MOV.W           R11, #0
35FB86:  ADD             R10, PC; "section"
35FB88:  LDRB            R6, [R4]
35FB8A:  CMP             R6, #0
35FB8C:  IT NE
35FB8E:  CMPNE           R6, #0x23 ; '#'
35FB90:  BEQ             loc_35FBE6
35FB92:  MOV             R0, R4; char *
35FB94:  MOV             R1, R10; char *
35FB96:  MOVS            R2, #7; size_t
35FB98:  BLX             strncmp
35FB9C:  CBZ             R0, loc_35FBBA
35FB9E:  CMP             R6, #0x65 ; 'e'
35FBA0:  ITT EQ
35FBA2:  LDRBEQ          R0, [R4,#1]
35FBA4:  CMPEQ           R0, #0x6E ; 'n'
35FBA6:  BNE             loc_35FBE6
35FBA8:  LDRB            R0, [R4,#2]
35FBAA:  CMP             R0, #0x64 ; 'd'
35FBAC:  BNE             loc_35FBE6
35FBAE:  CMP.W           R11, #0
35FBB2:  BLE             loc_35FBF2
35FBB4:  SUB.W           R11, R11, #1
35FBB8:  B               loc_35FBE6
35FBBA:  MOV             R0, R4; char *
35FBBC:  MOV             R1, R9; char *
35FBBE:  BLX             strtok
35FBC2:  MOVS            R0, #0; char *
35FBC4:  MOV             R1, R9; char *
35FBC6:  BLX             strtok
35FBCA:  ADD.W           R4, R11, #1
35FBCE:  MOV             R1, R0; char *
35FBD0:  CMP.W           R11, #0
35FBD4:  BEQ             loc_35FBDA
35FBD6:  MOV             R11, R4
35FBD8:  B               loc_35FBE6
35FBDA:  MOV             R0, R8; char *
35FBDC:  BLX             strcasecmp
35FBE0:  CMP             R0, #0
35FBE2:  MOV             R11, R4
35FBE4:  BEQ             loc_35FBFC
35FBE6:  MOV             R0, R5; this
35FBE8:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
35FBEC:  MOV             R4, R0
35FBEE:  CMP             R4, #0
35FBF0:  BNE             loc_35FB88
35FBF2:  MOVS            R0, #0
35FBF4:  ADD             SP, SP, #4
35FBF6:  POP.W           {R8-R11}
35FBFA:  POP             {R4-R7,PC}
35FBFC:  MOVS            R0, #1
35FBFE:  B               loc_35FBF4
