; =========================================================
; Game Engine Function: _ZN17CPPTriPlantBuffer19IncreaseBufferIndexEii
; Address            : 0x2CD0E8 - 0x2CD142
; =========================================================

2CD0E8:  PUSH            {R4-R7,LR}
2CD0EA:  ADD             R7, SP, #0xC
2CD0EC:  PUSH.W          {R8}
2CD0F0:  MOV             R4, R0
2CD0F2:  LDR.W           R0, [R4,#0xB84]
2CD0F6:  CMP             R0, R1
2CD0F8:  BNE             loc_2CD13C
2CD0FA:  LDR             R0, [R4]
2CD0FC:  ADD             R0, R2
2CD0FE:  STR             R0, [R4]
2CD100:  CMP             R0, #0x20 ; ' '
2CD102:  BLT             loc_2CD13C
2CD104:  CMP             R1, #3
2CD106:  MOV.W           R5, #0
2CD10A:  ITT LS
2CD10C:  ADDLS.W         R0, R4, R1,LSL#2
2CD110:  LDRLS.W         R5, [R0,#0xB88]
2CD114:  MOV.W           R8, #0
2CD118:  BLX             rand
2CD11C:  MOV             R6, R0
2CD11E:  MOV             R0, R4
2CD120:  LDR.W           R1, [R0],#4
2CD124:  MOV             R2, R5
2CD126:  BLX             j__ZN14CGrassRenderer13DrawTriPlantsEP10PPTriPlantiPP8RpAtomicP11RwMatrixTag; CGrassRenderer::DrawTriPlants(PPTriPlant *,int,RpAtomic **,RwMatrixTag *)
2CD12A:  STR.W           R8, [R4]
2CD12E:  MOV             R0, R6; seed
2CD130:  POP.W           {R8}
2CD134:  POP.W           {R4-R7,LR}
2CD138:  B.W             j_srand
2CD13C:  POP.W           {R8}
2CD140:  POP             {R4-R7,PC}
