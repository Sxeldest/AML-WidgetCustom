; =========================================================
; Game Engine Function: _Z14RwRasterCreateiiii
; Address            : 0x1DAA50 - 0x1DAADC
; =========================================================

1DAA50:  PUSH            {R4-R7,LR}
1DAA52:  ADD             R7, SP, #0xC
1DAA54:  PUSH.W          {R8,R9,R11}
1DAA58:  MOV             R6, R0
1DAA5A:  LDR             R0, =(RwEngineInstance_ptr - 0x1DAA64)
1DAA5C:  MOV             R5, R1
1DAA5E:  LDR             R1, =(dword_6BCF30 - 0x1DAA68)
1DAA60:  ADD             R0, PC; RwEngineInstance_ptr
1DAA62:  MOV             R9, R2
1DAA64:  ADD             R1, PC; dword_6BCF30
1DAA66:  MOV             R8, R3
1DAA68:  LDR             R0, [R0]; RwEngineInstance
1DAA6A:  LDR             R1, [R1]
1DAA6C:  LDR             R0, [R0]
1DAA6E:  LDR.W           R2, [R0,#0x13C]
1DAA72:  ADD             R0, R1
1DAA74:  LDR             R0, [R0,#0x60]
1DAA76:  BLX             R2
1DAA78:  MOV             R4, R0
1DAA7A:  MOVS            R0, #0
1DAA7C:  CBZ             R4, loc_1DAAB4
1DAA7E:  LDR             R1, =(RwEngineInstance_ptr - 0x1DAA86)
1DAA80:  MOV             R2, R8
1DAA82:  ADD             R1, PC; RwEngineInstance_ptr
1DAA84:  LDR             R1, [R1]; RwEngineInstance
1DAA86:  LDR             R1, [R1]
1DAA88:  LDR             R3, [R1,#0x58]
1DAA8A:  MOV             R1, R4
1DAA8C:  STRB.W          R0, [R4,#0x21]
1DAA90:  STRH            R0, [R4,#0x30]
1DAA92:  STR             R0, [R4,#0x1C]
1DAA94:  STR             R0, [R4,#0x2C]
1DAA96:  STRD.W          R4, R0, [R4]
1DAA9A:  STRD.W          R0, R6, [R4,#8]
1DAA9E:  MOVS            R0, #0
1DAAA0:  STRD.W          R5, R9, [R4,#0x10]
1DAAA4:  BLX             R3
1DAAA6:  CBZ             R0, loc_1DAABA
1DAAA8:  LDR             R0, =(dword_682598 - 0x1DAAB0)
1DAAAA:  MOV             R1, R4
1DAAAC:  ADD             R0, PC; dword_682598
1DAAAE:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
1DAAB2:  MOV             R0, R4
1DAAB4:  POP.W           {R8,R9,R11}
1DAAB8:  POP             {R4-R7,PC}
1DAABA:  LDR             R0, =(RwEngineInstance_ptr - 0x1DAAC2)
1DAABC:  LDR             R1, =(dword_6BCF30 - 0x1DAAC4)
1DAABE:  ADD             R0, PC; RwEngineInstance_ptr
1DAAC0:  ADD             R1, PC; dword_6BCF30
1DAAC2:  LDR             R0, [R0]; RwEngineInstance
1DAAC4:  LDR             R1, [R1]
1DAAC6:  LDR             R0, [R0]
1DAAC8:  LDR.W           R2, [R0,#0x140]
1DAACC:  ADD             R0, R1
1DAACE:  MOV             R1, R4
1DAAD0:  LDR             R0, [R0,#0x60]
1DAAD2:  BLX             R2
1DAAD4:  MOVS            R0, #0
1DAAD6:  POP.W           {R8,R9,R11}
1DAADA:  POP             {R4-R7,PC}
