; =========================================================
; Game Engine Function: _Z16RpMaterialCreatev
; Address            : 0x2171F0 - 0x217240
; =========================================================

2171F0:  PUSH            {R4,R6,R7,LR}
2171F2:  ADD             R7, SP, #8
2171F4:  LDR             R0, =(RwEngineInstance_ptr - 0x2171FC)
2171F6:  LDR             R1, =(dword_6BD5F4 - 0x2171FE)
2171F8:  ADD             R0, PC; RwEngineInstance_ptr
2171FA:  ADD             R1, PC; dword_6BD5F4
2171FC:  LDR             R0, [R0]; RwEngineInstance
2171FE:  LDR             R1, [R1]
217200:  LDR             R2, [R0]
217202:  LDR             R0, [R2,R1]
217204:  LDR.W           R1, [R2,#0x13C]
217208:  BLX             R1
21720A:  MOV             R4, R0
21720C:  MOVS            R0, #0
21720E:  CMP             R4, #0
217210:  IT EQ
217212:  POPEQ           {R4,R6,R7,PC}
217214:  LDR             R1, =(dword_683BB0 - 0x217224)
217216:  MOV.W           R2, #0xFFFFFFFF
21721A:  STR             R2, [R4,#4]
21721C:  MOVS            R2, #1
21721E:  STRH            R2, [R4,#0x18]
217220:  ADD             R1, PC; dword_683BB0
217222:  STR             R0, [R4]
217224:  STR             R0, [R4,#8]
217226:  LDR             R0, =(dword_683BC4 - 0x217232)
217228:  VLDR            D16, [R1]
21722C:  LDR             R1, [R1,#(dword_683BB8 - 0x683BB0)]
21722E:  ADD             R0, PC; dword_683BC4
217230:  STR             R1, [R4,#0x14]
217232:  MOV             R1, R4
217234:  VSTR            D16, [R4,#0xC]
217238:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
21723C:  MOV             R0, R4
21723E:  POP             {R4,R6,R7,PC}
