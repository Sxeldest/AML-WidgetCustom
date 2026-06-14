; =========================================================
; Game Engine Function: sub_1DBFD8
; Address            : 0x1DBFD8 - 0x1DC0C2
; =========================================================

1DBFD8:  PUSH            {R4-R7,LR}
1DBFDA:  ADD             R7, SP, #0xC
1DBFDC:  PUSH.W          {R8}
1DBFE0:  LDR             R1, =(RwEngineInstance_ptr - 0x1DBFE8)
1DBFE2:  LDR             R2, =(dword_6BCF84 - 0x1DBFEA)
1DBFE4:  ADD             R1, PC; RwEngineInstance_ptr
1DBFE6:  ADD             R2, PC; dword_6BCF84
1DBFE8:  LDR             R1, [R1]; RwEngineInstance
1DBFEA:  LDR             R2, [R2]
1DBFEC:  LDR             R1, [R1]
1DBFEE:  ADD.W           R12, R1, R2
1DBFF2:  LDR.W           LR, [R12,#0x10]
1DBFF6:  CMP.W           LR, #0
1DBFFA:  BEQ             loc_1DC048
1DBFFC:  LDR.W           R1, [LR,#8]!
1DC000:  CMP             R1, LR
1DC002:  BNE             loc_1DC010
1DC004:  B               loc_1DC0A6
1DC006:  CMP             R5, #0
1DC008:  BEQ             loc_1DC0B8
1DC00A:  LDR             R1, [R1]
1DC00C:  CMP             R1, LR
1DC00E:  BEQ             loc_1DC0A6
1DC010:  ADD.W           R3, R1, #8
1DC014:  MOV             R2, R0
1DC016:  LDRB            R4, [R3]
1DC018:  LDRB            R5, [R2]
1DC01A:  CMP             R4, #0
1DC01C:  BEQ             loc_1DC006
1DC01E:  CMP             R5, #0
1DC020:  BEQ             loc_1DC00A
1DC022:  SUB.W           R6, R5, #0x61 ; 'a'
1DC026:  ADDS            R2, #1
1DC028:  ADDS            R3, #1
1DC02A:  UXTB            R6, R6
1DC02C:  CMP             R6, #0x1A
1DC02E:  IT CC
1DC030:  ADDCC           R5, #0xE0
1DC032:  UXTB            R6, R5
1DC034:  SUB.W           R5, R4, #0x61 ; 'a'
1DC038:  UXTB            R5, R5
1DC03A:  CMP             R5, #0x1A
1DC03C:  IT CC
1DC03E:  ADDCC           R4, #0xE0
1DC040:  UXTB            R5, R4
1DC042:  CMP             R5, R6
1DC044:  BEQ             loc_1DC016
1DC046:  B               loc_1DC00A
1DC048:  LDR.W           LR, [R12]
1DC04C:  CMP             LR, R12
1DC04E:  BNE             loc_1DC05A
1DC050:  B               loc_1DC0A6
1DC052:  LDR.W           LR, [LR]
1DC056:  CMP             LR, R12
1DC058:  BEQ             loc_1DC0A6
1DC05A:  MOV             R8, LR
1DC05C:  LDR.W           R3, [R8,#-8]!
1DC060:  CMP             R3, R8
1DC062:  BNE             loc_1DC06E
1DC064:  B               loc_1DC052
1DC066:  CBZ             R6, loc_1DC0AE
1DC068:  LDR             R3, [R3]
1DC06A:  CMP             R3, R8
1DC06C:  BEQ             loc_1DC052
1DC06E:  ADD.W           R1, R3, #8
1DC072:  MOV             R4, R0
1DC074:  LDRB            R5, [R1]
1DC076:  LDRB            R6, [R4]
1DC078:  CMP             R5, #0
1DC07A:  BEQ             loc_1DC066
1DC07C:  CMP             R6, #0
1DC07E:  BEQ             loc_1DC068
1DC080:  SUB.W           R2, R6, #0x61 ; 'a'
1DC084:  ADDS            R4, #1
1DC086:  ADDS            R1, #1
1DC088:  UXTB            R2, R2
1DC08A:  CMP             R2, #0x1A
1DC08C:  IT CC
1DC08E:  ADDCC           R6, #0xE0
1DC090:  UXTB            R2, R6
1DC092:  SUB.W           R6, R5, #0x61 ; 'a'
1DC096:  UXTB            R6, R6
1DC098:  CMP             R6, #0x1A
1DC09A:  IT CC
1DC09C:  ADDCC           R5, #0xE0
1DC09E:  UXTB            R5, R5
1DC0A0:  CMP             R5, R2
1DC0A2:  BEQ             loc_1DC074
1DC0A4:  B               loc_1DC068
1DC0A6:  MOVS            R0, #0
1DC0A8:  POP.W           {R8}
1DC0AC:  POP             {R4-R7,PC}
1DC0AE:  SUB.W           R0, R3, #8
1DC0B2:  POP.W           {R8}
1DC0B6:  POP             {R4-R7,PC}
1DC0B8:  SUB.W           R0, R1, #8
1DC0BC:  POP.W           {R8}
1DC0C0:  POP             {R4-R7,PC}
