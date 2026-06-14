; =========================================================
; Game Engine Function: sub_21CF34
; Address            : 0x21CF34 - 0x21CFB8
; =========================================================

21CF34:  PUSH            {R4-R7,LR}
21CF36:  ADD             R7, SP, #0xC
21CF38:  PUSH.W          {R11}
21CF3C:  MOV             R4, R0
21CF3E:  B               loc_21CF48
21CF40:  LDR             R0, [R4,#8]
21CF42:  BL              sub_21CF34
21CF46:  LDR             R4, [R4,#0xC]
21CF48:  LDR             R0, [R4]
21CF4A:  ADDS            R1, R0, #2
21CF4C:  BEQ             loc_21CFB2
21CF4E:  ADDS            R0, #1
21CF50:  BNE             loc_21CF40
21CF52:  LDR             R0, [R4,#0x34]
21CF54:  CMP             R0, #0
21CF56:  IT NE
21CF58:  BLXNE           j__Z23RwResourcesFreeResEntryP10RwResEntry; RwResourcesFreeResEntry(RwResEntry *)
21CF5C:  MOV             R5, R4
21CF5E:  LDR.W           R0, [R5,#0x38]!
21CF62:  CMP             R0, R5
21CF64:  BEQ             loc_21CF72
21CF66:  LDR             R6, [R0]
21CF68:  BLX             j__Z13_rpTieDestroyP5RpTie; _rpTieDestroy(RpTie *)
21CF6C:  CMP             R6, R5
21CF6E:  MOV             R0, R6
21CF70:  BNE             loc_21CF66
21CF72:  MOV             R5, R4
21CF74:  LDR.W           R0, [R5,#0x40]!
21CF78:  CMP             R0, R5
21CF7A:  BEQ             loc_21CF88
21CF7C:  LDR             R6, [R0]
21CF7E:  BLX             j__Z13_rpTieDestroyP5RpTie; _rpTieDestroy(RpTie *)
21CF82:  CMP             R6, R5
21CF84:  MOV             R0, R6
21CF86:  BNE             loc_21CF7C
21CF88:  MOV             R5, R4
21CF8A:  LDR.W           R0, [R5,#0x48]!
21CF8E:  CMP             R0, R5
21CF90:  BEQ             loc_21CF9E
21CF92:  LDR             R6, [R0]
21CF94:  BLX             j__Z18_rpLightTieDestroyP10RpLightTie; _rpLightTieDestroy(RpLightTie *)
21CF98:  CMP             R6, R5
21CF9A:  MOV             R0, R6
21CF9C:  BNE             loc_21CF92
21CF9E:  LDR             R0, =(sectorTKList_ptr - 0x21CFA6)
21CFA0:  MOV             R1, R4
21CFA2:  ADD             R0, PC; sectorTKList_ptr
21CFA4:  LDR             R0, [R0]; sectorTKList
21CFA6:  POP.W           {R11}
21CFAA:  POP.W           {R4-R7,LR}
21CFAE:  B.W             j_j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; j__rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
21CFB2:  POP.W           {R11}
21CFB6:  POP             {R4-R7,PC}
