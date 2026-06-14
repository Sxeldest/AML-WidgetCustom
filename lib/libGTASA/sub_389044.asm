; =========================================================
; Game Engine Function: sub_389044
; Address            : 0x389044 - 0x389086
; =========================================================

389044:  PUSH            {R4-R7,LR}
389046:  ADD             R7, SP, #0xC
389048:  PUSH.W          {R8,R9,R11}
38904C:  MOV             R8, R0
38904E:  MOV             R9, R1
389050:  LDR.W           R6, [R8,#0x18]
389054:  LDR             R4, [R6,#0x58]
389056:  BLX             j__ZN18CVisibilityPlugins11GetAtomicIdEP8RpAtomic; CVisibilityPlugins::GetAtomicId(RpAtomic *)
38905A:  TST.W           R0, #0x2000
38905E:  BNE             loc_38907E
389060:  LDR             R0, [R6,#0x58]
389062:  LDRH            R0, [R0,#4]
389064:  CBZ             R0, loc_38907E
389066:  ADDS            R4, #0x1C
389068:  MOVS            R5, #0
38906A:  LDR.W           R1, [R4],#0x10
38906E:  MOV             R0, R9
389070:  BLX             j__Z29_rpMaterialListAppendMaterialP14RpMaterialListP10RpMaterial; _rpMaterialListAppendMaterial(RpMaterialList *,RpMaterial *)
389074:  LDR             R0, [R6,#0x58]
389076:  ADDS            R5, #1
389078:  LDRH            R0, [R0,#4]
38907A:  CMP             R5, R0
38907C:  BLT             loc_38906A
38907E:  MOV             R0, R8
389080:  POP.W           {R8,R9,R11}
389084:  POP             {R4-R7,PC}
