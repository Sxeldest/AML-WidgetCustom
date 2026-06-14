; =========================================================
; Game Engine Function: _ZN17CPPTriPlantBuffer27ChangeCurrentPlantModelsSetEi
; Address            : 0x2CD03C - 0x2CD090
; =========================================================

2CD03C:  PUSH            {R4-R7,LR}
2CD03E:  ADD             R7, SP, #0xC
2CD040:  PUSH.W          {R8,R9,R11}
2CD044:  MOV             R5, R0
2CD046:  MOV             R4, R1
2CD048:  LDR.W           R0, [R5,#0xB84]
2CD04C:  CMP             R0, R4
2CD04E:  BEQ             loc_2CD08A
2CD050:  LDR             R1, [R5]
2CD052:  CMP             R1, #1
2CD054:  BLT             loc_2CD086
2CD056:  CMP             R0, #3
2CD058:  MOV.W           R6, #0
2CD05C:  ITT LS
2CD05E:  ADDLS.W         R0, R5, R0,LSL#2
2CD062:  LDRLS.W         R6, [R0,#0xB88]
2CD066:  MOV.W           R9, #0
2CD06A:  BLX             rand
2CD06E:  MOV             R8, R0
2CD070:  MOV             R0, R5
2CD072:  LDR.W           R1, [R0],#4
2CD076:  MOV             R2, R6
2CD078:  BLX             j__ZN14CGrassRenderer13DrawTriPlantsEP10PPTriPlantiPP8RpAtomicP11RwMatrixTag; CGrassRenderer::DrawTriPlants(PPTriPlant *,int,RpAtomic **,RwMatrixTag *)
2CD07C:  MOV             R0, R8; seed
2CD07E:  STR.W           R9, [R5]
2CD082:  BLX             srand
2CD086:  STR.W           R4, [R5,#0xB84]
2CD08A:  POP.W           {R8,R9,R11}
2CD08E:  POP             {R4-R7,PC}
