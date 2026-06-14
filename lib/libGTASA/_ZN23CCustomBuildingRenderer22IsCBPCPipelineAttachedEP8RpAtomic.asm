; =========================================================
; Game Engine Function: _ZN23CCustomBuildingRenderer22IsCBPCPipelineAttachedEP8RpAtomic
; Address            : 0x2CA220 - 0x2CA25E
; =========================================================

2CA220:  PUSH            {R4,R6,R7,LR}
2CA222:  ADD             R7, SP, #8
2CA224:  MOV             R4, R0
2CA226:  BLX             j__Z13GetPipelineIDP8RpAtomic; GetPipelineID(RpAtomic *)
2CA22A:  MOVS            R1, #0x9C
2CA22C:  ORR.W           R0, R0, #4
2CA230:  MOVT            R1, #0x53F2
2CA234:  CMP             R0, R1
2CA236:  BEQ             loc_2CA25A
2CA238:  LDR             R4, [R4,#0x18]
2CA23A:  LDR             R0, [R4,#8]
2CA23C:  AND.W           R0, R0, #0x208
2CA240:  CMP.W           R0, #0x208
2CA244:  BEQ             loc_2CA25A
2CA246:  MOV             R0, R4
2CA248:  BLX             j__ZN25CCustomBuildingDNPipeline21GetExtraVertColourPtrEP10RpGeometry; CCustomBuildingDNPipeline::GetExtraVertColourPtr(RpGeometry *)
2CA24C:  CMP             R0, #0
2CA24E:  ITT NE
2CA250:  LDRNE           R0, [R4,#0x30]
2CA252:  CMPNE           R0, #0
2CA254:  BNE             loc_2CA25A
2CA256:  MOVS            R0, #0
2CA258:  POP             {R4,R6,R7,PC}
2CA25A:  MOVS            R0, #1
2CA25C:  POP             {R4,R6,R7,PC}
