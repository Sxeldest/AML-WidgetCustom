; =========================================================
; Game Engine Function: _Z14RpWorldDestroyP7RpWorld
; Address            : 0x21CE34 - 0x21CF16
; =========================================================

21CE34:  PUSH            {R4-R7,LR}
21CE36:  ADD             R7, SP, #0xC
21CE38:  PUSH.W          {R8,R9,R11}
21CE3C:  SUB             SP, SP, #0x100
21CE3E:  MOV             R9, R0
21CE40:  LDR             R0, =(RwEngineInstance_ptr - 0x21CE48)
21CE42:  LDR             R1, =(dword_6BD630 - 0x21CE4A)
21CE44:  ADD             R0, PC; RwEngineInstance_ptr
21CE46:  ADD             R1, PC; dword_6BD630
21CE48:  LDR             R2, [R0]; RwEngineInstance
21CE4A:  LDR             R0, [R1]
21CE4C:  LDR             R1, [R2]
21CE4E:  ADD             R1, R0
21CE50:  ADDS            R3, R1, #4
21CE52:  MOV             R2, R3
21CE54:  LDR             R2, [R2]
21CE56:  CMP             R2, R3
21CE58:  BEQ             loc_21CE80
21CE5A:  MOV             R1, R2
21CE5C:  LDR.W           R6, [R1,#-8]!
21CE60:  CMP             R6, R9
21CE62:  BNE             loc_21CE54
21CE64:  LDR             R5, =(RwEngineInstance_ptr - 0x21CE70)
21CE66:  LDRD.W          R3, R6, [R2]
21CE6A:  STR             R3, [R6]
21CE6C:  ADD             R5, PC; RwEngineInstance_ptr
21CE6E:  LDRD.W          R3, R2, [R2]
21CE72:  LDR             R6, [R5]; RwEngineInstance
21CE74:  STR             R2, [R3,#4]
21CE76:  LDR             R2, [R6]
21CE78:  LDR             R0, [R2,R0]
21CE7A:  LDR.W           R2, [R2,#0x140]
21CE7E:  BLX             R2
21CE80:  LDR.W           R4, [R9,#0x1C]
21CE84:  MOV.W           R8, #0
21CE88:  MOV             R6, SP
21CE8A:  MOVS            R5, #0
21CE8C:  LDR             R0, [R4]
21CE8E:  CMP.W           R0, #0xFFFFFFFF
21CE92:  BLE             loc_21CEA8
21CE94:  LDRD.W          R0, R1, [R4,#8]
21CE98:  ADDS            R5, #1
21CE9A:  STR.W           R1, [R6,R5,LSL#2]
21CE9E:  MOV             R4, R0
21CEA0:  CMP.W           R5, #0xFFFFFFFF
21CEA4:  BGT             loc_21CE8C
21CEA6:  B               loc_21CEC2
21CEA8:  LDR.W           R0, [R4,#0x80]
21CEAC:  CBZ             R0, loc_21CEB6
21CEAE:  BLX             j__Z14_rpMeshDestroyP12RpMeshHeader; _rpMeshDestroy(RpMeshHeader *)
21CEB2:  STR.W           R8, [R4,#0x80]
21CEB6:  LDR.W           R4, [R6,R5,LSL#2]
21CEBA:  SUBS            R5, #1
21CEBC:  CMP.W           R5, #0xFFFFFFFF
21CEC0:  BGT             loc_21CE8C
21CEC2:  ADD.W           R0, R9, #0x10
21CEC6:  BLX             j__Z27_rpMaterialListDeinitializeP14RpMaterialList; _rpMaterialListDeinitialize(RpMaterialList *)
21CECA:  LDRB.W          R1, [R9,#3]
21CECE:  LDR.W           R0, [R9,#0x1C]
21CED2:  LSLS            R1, R1, #0x1F
21CED4:  BNE             loc_21CEEC
21CED6:  BL              sub_21CFBC
21CEDA:  LDR             R0, =(worldTKList_ptr - 0x21CEE2)
21CEDC:  MOV             R1, R9
21CEDE:  ADD             R0, PC; worldTKList_ptr
21CEE0:  LDR             R0, [R0]; worldTKList
21CEE2:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
21CEE6:  LDR             R0, =(RwEngineInstance_ptr - 0x21CEEC)
21CEE8:  ADD             R0, PC; RwEngineInstance_ptr
21CEEA:  B               loc_21CF00
21CEEC:  BL              sub_21CF34
21CEF0:  LDR             R0, =(worldTKList_ptr - 0x21CEF8)
21CEF2:  MOV             R1, R9
21CEF4:  ADD             R0, PC; worldTKList_ptr
21CEF6:  LDR             R0, [R0]; worldTKList
21CEF8:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
21CEFC:  LDR             R0, =(RwEngineInstance_ptr - 0x21CF02)
21CEFE:  ADD             R0, PC; RwEngineInstance_ptr
21CF00:  LDR             R0, [R0]; RwEngineInstance
21CF02:  LDR             R0, [R0]
21CF04:  LDR.W           R1, [R0,#0x130]
21CF08:  MOV             R0, R9
21CF0A:  BLX             R1
21CF0C:  MOVS            R0, #1
21CF0E:  ADD             SP, SP, #0x100
21CF10:  POP.W           {R8,R9,R11}
21CF14:  POP             {R4-R7,PC}
