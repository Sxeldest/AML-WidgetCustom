; =========================================================
; Game Engine Function: sub_21CFBC
; Address            : 0x21CFBC - 0x21D16A
; =========================================================

21CFBC:  PUSH            {R4-R7,LR}
21CFBE:  ADD             R7, SP, #0xC
21CFC0:  PUSH.W          {R11}
21CFC4:  MOV             R4, R0
21CFC6:  LDR             R0, [R4]
21CFC8:  ADDS            R1, R0, #2
21CFCA:  BEQ.W           loc_21D13A
21CFCE:  ADDS            R0, #1
21CFD0:  BNE.W           loc_21D140
21CFD4:  LDR             R0, [R4,#0x34]
21CFD6:  CMP             R0, #0
21CFD8:  IT NE
21CFDA:  BLXNE           j__Z23RwResourcesFreeResEntryP10RwResEntry; RwResourcesFreeResEntry(RwResEntry *)
21CFDE:  MOV             R5, R4
21CFE0:  LDR.W           R0, [R5,#0x38]!
21CFE4:  CMP             R0, R5
21CFE6:  BEQ             loc_21CFF4
21CFE8:  LDR             R6, [R0]
21CFEA:  BLX             j__Z13_rpTieDestroyP5RpTie; _rpTieDestroy(RpTie *)
21CFEE:  CMP             R6, R5
21CFF0:  MOV             R0, R6
21CFF2:  BNE             loc_21CFE8
21CFF4:  MOV             R5, R4
21CFF6:  LDR.W           R0, [R5,#0x40]!
21CFFA:  CMP             R0, R5
21CFFC:  BEQ             loc_21D00A
21CFFE:  LDR             R6, [R0]
21D000:  BLX             j__Z13_rpTieDestroyP5RpTie; _rpTieDestroy(RpTie *)
21D004:  CMP             R6, R5
21D006:  MOV             R0, R6
21D008:  BNE             loc_21CFFE
21D00A:  MOV             R5, R4
21D00C:  LDR.W           R0, [R5,#0x48]!
21D010:  CMP             R0, R5
21D012:  BEQ             loc_21D020
21D014:  LDR             R6, [R0]
21D016:  BLX             j__Z18_rpLightTieDestroyP10RpLightTie; _rpLightTieDestroy(RpLightTie *)
21D01A:  CMP             R6, R5
21D01C:  MOV             R0, R6
21D01E:  BNE             loc_21D014
21D020:  LDR             R0, =(sectorTKList_ptr - 0x21D028)
21D022:  MOV             R1, R4
21D024:  ADD             R0, PC; sectorTKList_ptr
21D026:  LDR             R0, [R0]; sectorTKList
21D028:  BLX             j__Z29_rwPluginRegistryDeInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryDeInitObject(RwPluginRegistry const*,void *)
21D02C:  LDR             R0, [R4,#8]
21D02E:  CBZ             R0, loc_21D042
21D030:  LDR             R1, =(RwEngineInstance_ptr - 0x21D036)
21D032:  ADD             R1, PC; RwEngineInstance_ptr
21D034:  LDR             R1, [R1]; RwEngineInstance
21D036:  LDR             R1, [R1]
21D038:  LDR.W           R1, [R1,#0x130]
21D03C:  BLX             R1
21D03E:  MOVS            R0, #0
21D040:  STR             R0, [R4,#8]
21D042:  LDR             R0, [R4,#0xC]
21D044:  CBZ             R0, loc_21D058
21D046:  LDR             R1, =(RwEngineInstance_ptr - 0x21D04C)
21D048:  ADD             R1, PC; RwEngineInstance_ptr
21D04A:  LDR             R1, [R1]; RwEngineInstance
21D04C:  LDR             R1, [R1]
21D04E:  LDR.W           R1, [R1,#0x130]
21D052:  BLX             R1
21D054:  MOVS            R0, #0
21D056:  STR             R0, [R4,#0xC]
21D058:  LDR             R0, [R4,#0x30]
21D05A:  CBZ             R0, loc_21D06E
21D05C:  LDR             R1, =(RwEngineInstance_ptr - 0x21D062)
21D05E:  ADD             R1, PC; RwEngineInstance_ptr
21D060:  LDR             R1, [R1]; RwEngineInstance
21D062:  LDR             R1, [R1]
21D064:  LDR.W           R1, [R1,#0x130]
21D068:  BLX             R1
21D06A:  MOVS            R0, #0
21D06C:  STR             R0, [R4,#0x30]
21D06E:  LDR             R0, [R4,#4]
21D070:  CBZ             R0, loc_21D084
21D072:  LDR             R1, =(RwEngineInstance_ptr - 0x21D078)
21D074:  ADD             R1, PC; RwEngineInstance_ptr
21D076:  LDR             R1, [R1]; RwEngineInstance
21D078:  LDR             R1, [R1]
21D07A:  LDR.W           R1, [R1,#0x130]
21D07E:  BLX             R1
21D080:  MOVS            R0, #0
21D082:  STR             R0, [R4,#4]
21D084:  LDR             R0, [R4,#0x10]
21D086:  CBZ             R0, loc_21D09A
21D088:  LDR             R1, =(RwEngineInstance_ptr - 0x21D08E)
21D08A:  ADD             R1, PC; RwEngineInstance_ptr
21D08C:  LDR             R1, [R1]; RwEngineInstance
21D08E:  LDR             R1, [R1]
21D090:  LDR.W           R1, [R1,#0x130]
21D094:  BLX             R1
21D096:  MOVS            R0, #0
21D098:  STR             R0, [R4,#0x10]
21D09A:  LDR             R0, [R4,#0x14]
21D09C:  CBZ             R0, loc_21D0B0
21D09E:  LDR             R1, =(RwEngineInstance_ptr - 0x21D0A4)
21D0A0:  ADD             R1, PC; RwEngineInstance_ptr
21D0A2:  LDR             R1, [R1]; RwEngineInstance
21D0A4:  LDR             R1, [R1]
21D0A6:  LDR.W           R1, [R1,#0x130]
21D0AA:  BLX             R1
21D0AC:  MOVS            R0, #0
21D0AE:  STR             R0, [R4,#0x14]
21D0B0:  LDR             R0, [R4,#0x18]
21D0B2:  CBZ             R0, loc_21D0C6
21D0B4:  LDR             R1, =(RwEngineInstance_ptr - 0x21D0BA)
21D0B6:  ADD             R1, PC; RwEngineInstance_ptr
21D0B8:  LDR             R1, [R1]; RwEngineInstance
21D0BA:  LDR             R1, [R1]
21D0BC:  LDR.W           R1, [R1,#0x130]
21D0C0:  BLX             R1
21D0C2:  MOVS            R0, #0
21D0C4:  STR             R0, [R4,#0x18]
21D0C6:  LDR             R0, [R4,#0x1C]
21D0C8:  CBZ             R0, loc_21D0DC
21D0CA:  LDR             R1, =(RwEngineInstance_ptr - 0x21D0D0)
21D0CC:  ADD             R1, PC; RwEngineInstance_ptr
21D0CE:  LDR             R1, [R1]; RwEngineInstance
21D0D0:  LDR             R1, [R1]
21D0D2:  LDR.W           R1, [R1,#0x130]
21D0D6:  BLX             R1
21D0D8:  MOVS            R0, #0
21D0DA:  STR             R0, [R4,#0x1C]
21D0DC:  LDR             R0, [R4,#0x20]
21D0DE:  CBZ             R0, loc_21D0F2
21D0E0:  LDR             R1, =(RwEngineInstance_ptr - 0x21D0E6)
21D0E2:  ADD             R1, PC; RwEngineInstance_ptr
21D0E4:  LDR             R1, [R1]; RwEngineInstance
21D0E6:  LDR             R1, [R1]
21D0E8:  LDR.W           R1, [R1,#0x130]
21D0EC:  BLX             R1
21D0EE:  MOVS            R0, #0
21D0F0:  STR             R0, [R4,#0x20]
21D0F2:  LDR             R0, [R4,#0x24]
21D0F4:  CBZ             R0, loc_21D108
21D0F6:  LDR             R1, =(RwEngineInstance_ptr - 0x21D0FC)
21D0F8:  ADD             R1, PC; RwEngineInstance_ptr
21D0FA:  LDR             R1, [R1]; RwEngineInstance
21D0FC:  LDR             R1, [R1]
21D0FE:  LDR.W           R1, [R1,#0x130]
21D102:  BLX             R1
21D104:  MOVS            R0, #0
21D106:  STR             R0, [R4,#0x24]
21D108:  LDR             R0, [R4,#0x28]
21D10A:  CBZ             R0, loc_21D11E
21D10C:  LDR             R1, =(RwEngineInstance_ptr - 0x21D112)
21D10E:  ADD             R1, PC; RwEngineInstance_ptr
21D110:  LDR             R1, [R1]; RwEngineInstance
21D112:  LDR             R1, [R1]
21D114:  LDR.W           R1, [R1,#0x130]
21D118:  BLX             R1
21D11A:  MOVS            R0, #0
21D11C:  STR             R0, [R4,#0x28]
21D11E:  LDR             R0, [R4,#0x2C]
21D120:  CBZ             R0, loc_21D134
21D122:  LDR             R1, =(RwEngineInstance_ptr - 0x21D128)
21D124:  ADD             R1, PC; RwEngineInstance_ptr
21D126:  LDR             R1, [R1]; RwEngineInstance
21D128:  LDR             R1, [R1]
21D12A:  LDR.W           R1, [R1,#0x130]
21D12E:  BLX             R1
21D130:  MOVS            R0, #0
21D132:  STR             R0, [R4,#0x2C]
21D134:  LDR             R0, =(RwEngineInstance_ptr - 0x21D13A)
21D136:  ADD             R0, PC; RwEngineInstance_ptr
21D138:  B               loc_21D156
21D13A:  LDR             R0, =(RwEngineInstance_ptr - 0x21D140)
21D13C:  ADD             R0, PC; RwEngineInstance_ptr
21D13E:  B               loc_21D156
21D140:  LDR             R0, [R4,#8]
21D142:  BL              sub_21CFBC
21D146:  LDR             R0, [R4,#0xC]
21D148:  MOVS            R5, #0
21D14A:  STR             R5, [R4,#8]
21D14C:  BL              sub_21CFBC
21D150:  LDR             R0, =(RwEngineInstance_ptr - 0x21D158)
21D152:  STR             R5, [R4,#0xC]
21D154:  ADD             R0, PC; RwEngineInstance_ptr
21D156:  LDR             R0, [R0]; RwEngineInstance
21D158:  LDR             R0, [R0]
21D15A:  LDR.W           R1, [R0,#0x130]
21D15E:  MOV             R0, R4
21D160:  POP.W           {R11}
21D164:  POP.W           {R4-R7,LR}
21D168:  BX              R1
