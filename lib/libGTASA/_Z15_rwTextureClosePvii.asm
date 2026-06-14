; =========================================================
; Game Engine Function: _Z15_rwTextureClosePvii
; Address            : 0x1DBC80 - 0x1DBD4C
; =========================================================

1DBC80:  PUSH            {R4-R7,LR}
1DBC82:  ADD             R7, SP, #0xC
1DBC84:  PUSH.W          {R8}
1DBC88:  MOV             R8, R0
1DBC8A:  LDR             R0, =(RwEngineInstance_ptr - 0x1DBC92)
1DBC8C:  LDR             R1, =(dword_6BCF84 - 0x1DBC94)
1DBC8E:  ADD             R0, PC; RwEngineInstance_ptr
1DBC90:  ADD             R1, PC; dword_6BCF84
1DBC92:  LDR             R0, [R0]; RwEngineInstance
1DBC94:  LDR             R2, [R1]
1DBC96:  LDR             R3, [R0]
1DBC98:  ADDS            R0, R3, R2
1DBC9A:  LDR             R0, [R0,#0x24]
1DBC9C:  CBZ             R0, loc_1DBCC0
1DBC9E:  LDR.W           R1, [R3,#0x130]
1DBCA2:  BLX             R1
1DBCA4:  LDR             R0, =(RwEngineInstance_ptr - 0x1DBCAE)
1DBCA6:  MOVS            R3, #0
1DBCA8:  LDR             R1, =(dword_6BCF84 - 0x1DBCB0)
1DBCAA:  ADD             R0, PC; RwEngineInstance_ptr
1DBCAC:  ADD             R1, PC; dword_6BCF84
1DBCAE:  LDR             R0, [R0]; RwEngineInstance
1DBCB0:  LDR             R2, [R1]
1DBCB2:  LDR             R1, [R0]
1DBCB4:  ADD             R1, R2
1DBCB6:  STR             R3, [R1,#0x24]
1DBCB8:  LDR             R1, [R0]
1DBCBA:  ADD             R1, R2
1DBCBC:  STRH            R3, [R1,#0x28]
1DBCBE:  LDR             R3, [R0]
1DBCC0:  ADDS            R5, R3, R2
1DBCC2:  LDR             R0, [R5,#8]
1DBCC4:  CBZ             R0, loc_1DBD1C
1DBCC6:  LDR             R1, [R5,#0xC]
1DBCC8:  CBZ             R1, loc_1DBD02
1DBCCA:  LDR             R1, =(dword_6BCF38 - 0x1DBCD2)
1DBCCC:  MOV             R4, R5
1DBCCE:  ADD             R1, PC; dword_6BCF38
1DBCD0:  LDR             R1, [R1]
1DBCD2:  LDR             R4, [R4]
1DBCD4:  CMP             R4, R5
1DBCD6:  BEQ             loc_1DBD00
1DBCD8:  SUB.W           R6, R4, #0x10
1DBCDC:  CMP             R1, R6
1DBCDE:  BNE             loc_1DBCD2
1DBCE0:  MOV             R0, R1
1DBCE2:  BLX             j__Z22RwTexDictionaryDestroyP15RwTexDictionary; RwTexDictionaryDestroy(RwTexDictionary *)
1DBCE6:  LDR             R0, =(RwEngineInstance_ptr - 0x1DBCEE)
1DBCE8:  LDR             R1, =(dword_6BCF84 - 0x1DBCF2)
1DBCEA:  ADD             R0, PC; RwEngineInstance_ptr
1DBCEC:  LDR             R6, =(dword_6BCF38 - 0x1DBCF6)
1DBCEE:  ADD             R1, PC; dword_6BCF84
1DBCF0:  LDR             R0, [R0]; RwEngineInstance
1DBCF2:  ADD             R6, PC; dword_6BCF38
1DBCF4:  LDR             R2, [R1]
1DBCF6:  LDR             R3, [R0]
1DBCF8:  MOVS            R0, #0
1DBCFA:  STR             R0, [R6]
1DBCFC:  ADDS            R0, R3, R2
1DBCFE:  LDR             R0, [R0,#8]
1DBD00:  CBZ             R0, loc_1DBD1C
1DBD02:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
1DBD06:  LDR             R0, =(RwEngineInstance_ptr - 0x1DBD10)
1DBD08:  MOVS            R3, #0
1DBD0A:  LDR             R1, =(dword_6BCF84 - 0x1DBD12)
1DBD0C:  ADD             R0, PC; RwEngineInstance_ptr
1DBD0E:  ADD             R1, PC; dword_6BCF84
1DBD10:  LDR             R0, [R0]; RwEngineInstance
1DBD12:  LDR             R2, [R1]
1DBD14:  LDR             R1, [R0]
1DBD16:  ADD             R1, R2
1DBD18:  STR             R3, [R1,#8]
1DBD1A:  LDR             R3, [R0]
1DBD1C:  ADDS            R0, R3, R2
1DBD1E:  LDR             R0, [R0,#0xC]
1DBD20:  CBZ             R0, loc_1DBD3A
1DBD22:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
1DBD26:  LDR             R0, =(RwEngineInstance_ptr - 0x1DBD2E)
1DBD28:  LDR             R1, =(dword_6BCF84 - 0x1DBD30)
1DBD2A:  ADD             R0, PC; RwEngineInstance_ptr
1DBD2C:  ADD             R1, PC; dword_6BCF84
1DBD2E:  LDR             R0, [R0]; RwEngineInstance
1DBD30:  LDR             R1, [R1]
1DBD32:  LDR             R0, [R0]
1DBD34:  ADD             R0, R1
1DBD36:  MOVS            R1, #0
1DBD38:  STR             R1, [R0,#0xC]
1DBD3A:  LDR             R0, =(dword_6BCF88 - 0x1DBD40)
1DBD3C:  ADD             R0, PC; dword_6BCF88
1DBD3E:  LDR             R1, [R0]
1DBD40:  SUBS            R1, #1
1DBD42:  STR             R1, [R0]
1DBD44:  MOV             R0, R8
1DBD46:  POP.W           {R8}
1DBD4A:  POP             {R4-R7,PC}
