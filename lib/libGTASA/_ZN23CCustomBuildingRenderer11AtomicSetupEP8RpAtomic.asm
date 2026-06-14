; =========================================================
; Game Engine Function: _ZN23CCustomBuildingRenderer11AtomicSetupEP8RpAtomic
; Address            : 0x2CA1E8 - 0x2CA220
; =========================================================

2CA1E8:  PUSH            {R4,R5,R7,LR}
2CA1EA:  ADD             R7, SP, #8
2CA1EC:  MOV             R4, R0
2CA1EE:  LDR             R5, [R4,#0x18]
2CA1F0:  LDR             R0, [R5,#8]
2CA1F2:  AND.W           R0, R0, #0x208
2CA1F6:  CMP.W           R0, #0x208
2CA1FA:  BEQ             loc_2CA20C
2CA1FC:  MOV             R0, R5
2CA1FE:  BLX             j__ZN25CCustomBuildingDNPipeline21GetExtraVertColourPtrEP10RpGeometry; CCustomBuildingDNPipeline::GetExtraVertColourPtr(RpGeometry *)
2CA202:  CMP             R0, #0
2CA204:  ITT NE
2CA206:  LDRNE           R0, [R5,#0x30]
2CA208:  CMPNE           R0, #0
2CA20A:  BEQ             loc_2CA216
2CA20C:  MOV             R0, R4
2CA20E:  POP.W           {R4,R5,R7,LR}
2CA212:  B.W             sub_18BE38
2CA216:  MOV             R0, R4
2CA218:  POP.W           {R4,R5,R7,LR}
2CA21C:  B.W             j_j__ZN23CCustomBuildingPipeline21CustomPipeAtomicSetupEP8RpAtomic; j_CCustomBuildingPipeline::CustomPipeAtomicSetup(RpAtomic *)
