; =========================================================
; Game Engine Function: _Z14_rwTextureOpenPvii
; Address            : 0x1DBDB0 - 0x1DBF62
; =========================================================

1DBDB0:  PUSH            {R4-R7,LR}
1DBDB2:  ADD             R7, SP, #0xC
1DBDB4:  PUSH.W          {R11}
1DBDB8:  SUB             SP, SP, #8
1DBDBA:  MOV             R4, R0
1DBDBC:  LDR             R0, =(textureTKList_ptr - 0x1DBDC4)
1DBDBE:  LDR             R2, =(dword_6825EC - 0x1DBDC8)
1DBDC0:  ADD             R0, PC; textureTKList_ptr
1DBDC2:  LDR             R5, =(dword_6825E8 - 0x1DBDCE)
1DBDC4:  ADD             R2, PC; dword_6825EC
1DBDC6:  LDR             R6, =(dword_6BCF84 - 0x1DBDD2)
1DBDC8:  LDR             R0, [R0]; textureTKList
1DBDCA:  ADD             R5, PC; dword_6825E8
1DBDCC:  LDR             R3, [R2]
1DBDCE:  ADD             R6, PC; dword_6BCF84
1DBDD0:  LDR             R2, [R5]
1DBDD2:  LDR             R0, [R0]
1DBDD4:  LDR             R5, =(unk_6BCF3C - 0x1DBDE0)
1DBDD6:  STR             R1, [R6]
1DBDD8:  MOV             R1, R2
1DBDDA:  MOVS            R2, #4
1DBDDC:  ADD             R5, PC; unk_6BCF3C
1DBDDE:  STR             R5, [SP,#0x18+var_18]
1DBDE0:  BLX             j__Z35RwFreeListCreateAndPreallocateSpaceiiiiP10RwFreeList; RwFreeListCreateAndPreallocateSpace(int,int,int,int,RwFreeList *)
1DBDE4:  LDR             R1, =(RwEngineInstance_ptr - 0x1DBDEC)
1DBDE6:  LDR             R2, [R6]
1DBDE8:  ADD             R1, PC; RwEngineInstance_ptr
1DBDEA:  LDR             R1, [R1]; RwEngineInstance
1DBDEC:  LDR             R3, [R1]
1DBDEE:  ADD             R3, R2
1DBDF0:  STR             R0, [R3,#8]
1DBDF2:  LDR             R0, [R1]
1DBDF4:  ADD             R0, R2
1DBDF6:  LDR             R0, [R0,#8]
1DBDF8:  CMP             R0, #0
1DBDFA:  BEQ.W           loc_1DBF0E
1DBDFE:  LDR             R0, =(texDictTKList_ptr - 0x1DBE06)
1DBE00:  LDR             R1, =(dword_6825F4 - 0x1DBE0A)
1DBE02:  ADD             R0, PC; texDictTKList_ptr
1DBE04:  LDR             R2, =(dword_6825F0 - 0x1DBE0E)
1DBE06:  ADD             R1, PC; dword_6825F4
1DBE08:  LDR             R0, [R0]; texDictTKList
1DBE0A:  ADD             R2, PC; dword_6825F0
1DBE0C:  LDR             R3, [R1]
1DBE0E:  LDR             R1, [R2]
1DBE10:  LDR             R2, =(unk_6BCF60 - 0x1DBE18)
1DBE12:  LDR             R0, [R0]
1DBE14:  ADD             R2, PC; unk_6BCF60
1DBE16:  STR             R2, [SP,#0x18+var_18]
1DBE18:  MOVS            R2, #4
1DBE1A:  BLX             j__Z35RwFreeListCreateAndPreallocateSpaceiiiiP10RwFreeList; RwFreeListCreateAndPreallocateSpace(int,int,int,int,RwFreeList *)
1DBE1E:  LDR             R1, =(RwEngineInstance_ptr - 0x1DBE26)
1DBE20:  LDR             R2, =(dword_6BCF84 - 0x1DBE28)
1DBE22:  ADD             R1, PC; RwEngineInstance_ptr
1DBE24:  ADD             R2, PC; dword_6BCF84
1DBE26:  LDR             R3, [R1]; RwEngineInstance
1DBE28:  LDR             R1, [R2]
1DBE2A:  LDR             R2, [R3]
1DBE2C:  ADD             R2, R1
1DBE2E:  STR             R0, [R2,#0xC]
1DBE30:  LDR             R0, [R3]
1DBE32:  ADD             R0, R1
1DBE34:  LDR             R2, [R0,#0xC]
1DBE36:  CMP             R2, #0
1DBE38:  BEQ             loc_1DBF12
1DBE3A:  LDR             R2, =(RwEngineInstance_ptr - 0x1DBE42)
1DBE3C:  STR             R0, [R0]
1DBE3E:  ADD             R2, PC; RwEngineInstance_ptr
1DBE40:  LDR             R3, =(dword_6BCF88 - 0x1DBE48)
1DBE42:  LDR             R2, [R2]; RwEngineInstance
1DBE44:  ADD             R3, PC; dword_6BCF88
1DBE46:  LDR             R0, [R2]
1DBE48:  ADD             R0, R1
1DBE4A:  STR             R0, [R0,#4]
1DBE4C:  LDR             R0, [R2]
1DBE4E:  LDR             R2, [R3]
1DBE50:  ADDS            R2, #1
1DBE52:  STR             R2, [R3]
1DBE54:  LDR.W           R2, [R0,#0x13C]
1DBE58:  ADD             R0, R1
1DBE5A:  LDR             R0, [R0,#0xC]
1DBE5C:  BLX             R2
1DBE5E:  MOV             R5, R0
1DBE60:  MOVS            R1, #0
1DBE62:  CBZ             R5, loc_1DBEA8
1DBE64:  LDR             R2, =(RwEngineInstance_ptr - 0x1DBE6C)
1DBE66:  LDR             R0, =(dword_6BCF84 - 0x1DBE74)
1DBE68:  ADD             R2, PC; RwEngineInstance_ptr
1DBE6A:  STRB            R1, [R5,#7]
1DBE6C:  STRH.W          R1, [R5,#5]
1DBE70:  ADD             R0, PC; dword_6BCF84
1DBE72:  STR.W           R1, [R5,#1]
1DBE76:  LDR             R1, [R2]; RwEngineInstance
1DBE78:  MOVS            R2, #6
1DBE7A:  STRB            R2, [R5]
1DBE7C:  LDR             R2, [R0]
1DBE7E:  LDR             R1, [R1]
1DBE80:  LDR             R3, =(texDictTKList_ptr - 0x1DBE8A)
1DBE82:  ADDS            R6, R1, R2
1DBE84:  LDR             R0, [R1,R2]
1DBE86:  ADD             R3, PC; texDictTKList_ptr
1DBE88:  STRD.W          R0, R6, [R5,#0x10]
1DBE8C:  LDR             R6, [R1,R2]
1DBE8E:  LDR             R0, [R3]; texDictTKList
1DBE90:  ADD.W           R3, R5, #0x10
1DBE94:  STR             R3, [R6,#4]
1DBE96:  STR             R3, [R1,R2]
1DBE98:  ADD.W           R1, R5, #8
1DBE9C:  STRD.W          R1, R1, [R5,#8]
1DBEA0:  MOV             R1, R5
1DBEA2:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
1DBEA6:  MOV             R1, R5
1DBEA8:  LDR             R0, =(RwEngineInstance_ptr - 0x1DBEB0)
1DBEAA:  LDR             R2, =(dword_6BCF84 - 0x1DBEB4)
1DBEAC:  ADD             R0, PC; RwEngineInstance_ptr
1DBEAE:  LDR             R6, =(dword_6BCF38 - 0x1DBEB8)
1DBEB0:  ADD             R2, PC; dword_6BCF84
1DBEB2:  LDR             R3, [R0]; RwEngineInstance
1DBEB4:  ADD             R6, PC; dword_6BCF38
1DBEB6:  LDR             R0, [R2]
1DBEB8:  STR             R1, [R6]
1DBEBA:  LDR             R2, [R3]
1DBEBC:  ADD             R2, R0
1DBEBE:  STR             R1, [R2,#0x10]
1DBEC0:  LDR             R1, [R3]
1DBEC2:  ADD             R1, R0
1DBEC4:  LDR             R2, [R1,#0x10]
1DBEC6:  CBZ             R2, loc_1DBF2C
1DBEC8:  LDR             R2, =(RwEngineInstance_ptr - 0x1DBED2)
1DBECA:  MOVS            R3, #0
1DBECC:  STR             R3, [R1,#0x1C]
1DBECE:  ADD             R2, PC; RwEngineInstance_ptr
1DBED0:  LDR             R6, =(sub_1DBFD8+1 - 0x1DBED8)
1DBED2:  LDR             R2, [R2]; RwEngineInstance
1DBED4:  ADD             R6, PC; sub_1DBFD8
1DBED6:  LDR             R1, [R2]
1DBED8:  ADD             R1, R0
1DBEDA:  STR             R3, [R1,#0x20]
1DBEDC:  LDR             R1, [R2]
1DBEDE:  ADD             R1, R0
1DBEE0:  STR             R6, [R1,#0x18]
1DBEE2:  LDR             R1, [R2]
1DBEE4:  LDR             R6, =(sub_1DC0CC+1 - 0x1DBEEC)
1DBEE6:  ADD             R1, R0
1DBEE8:  ADD             R6, PC; sub_1DC0CC
1DBEEA:  STR             R6, [R1,#0x14]
1DBEEC:  LDR             R1, [R2]
1DBEEE:  LDR             R6, =(sub_1DC994+1 - 0x1DBEF6)
1DBEF0:  ADD             R1, R0
1DBEF2:  ADD             R6, PC; sub_1DC994
1DBEF4:  STR             R6, [R1,#0x2C]
1DBEF6:  LDR             R1, [R2]
1DBEF8:  LDR             R6, =(sub_1DCB7C+1 - 0x1DBF00)
1DBEFA:  ADD             R1, R0
1DBEFC:  ADD             R6, PC; sub_1DCB7C
1DBEFE:  STR             R6, [R1,#0x30]
1DBF00:  LDR             R1, [R2]
1DBF02:  ADD             R1, R0
1DBF04:  STR             R3, [R1,#0x24]
1DBF06:  LDR             R1, [R2]
1DBF08:  ADD             R0, R1
1DBF0A:  STRH            R3, [R0,#0x28]
1DBF0C:  B               loc_1DBF58
1DBF0E:  MOVS            R4, #0
1DBF10:  B               loc_1DBF58
1DBF12:  LDR             R0, [R0,#8]
1DBF14:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
1DBF18:  LDR             R0, =(RwEngineInstance_ptr - 0x1DBF22)
1DBF1A:  MOVS            R4, #0
1DBF1C:  LDR             R1, =(dword_6BCF84 - 0x1DBF24)
1DBF1E:  ADD             R0, PC; RwEngineInstance_ptr
1DBF20:  ADD             R1, PC; dword_6BCF84
1DBF22:  LDR             R0, [R0]; RwEngineInstance
1DBF24:  LDR             R1, [R1]
1DBF26:  LDR             R0, [R0]
1DBF28:  ADD             R0, R1
1DBF2A:  B               loc_1DBF56
1DBF2C:  LDR             R0, [R1,#0xC]
1DBF2E:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
1DBF32:  LDR             R0, =(RwEngineInstance_ptr - 0x1DBF3C)
1DBF34:  MOVS            R4, #0
1DBF36:  LDR             R5, =(dword_6BCF84 - 0x1DBF3E)
1DBF38:  ADD             R0, PC; RwEngineInstance_ptr
1DBF3A:  ADD             R5, PC; dword_6BCF84
1DBF3C:  LDR             R6, [R0]; RwEngineInstance
1DBF3E:  LDR             R0, [R5]
1DBF40:  LDR             R1, [R6]
1DBF42:  ADD             R1, R0
1DBF44:  STR             R4, [R1,#0xC]
1DBF46:  LDR             R1, [R6]
1DBF48:  ADD             R0, R1
1DBF4A:  LDR             R0, [R0,#8]
1DBF4C:  BLX             j__Z17RwFreeListDestroyP10RwFreeList; RwFreeListDestroy(RwFreeList *)
1DBF50:  LDR             R0, [R5]
1DBF52:  LDR             R1, [R6]
1DBF54:  ADD             R0, R1
1DBF56:  STR             R4, [R0,#8]
1DBF58:  MOV             R0, R4
1DBF5A:  ADD             SP, SP, #8
1DBF5C:  POP.W           {R11}
1DBF60:  POP             {R4-R7,PC}
