; =========================================================
; Game Engine Function: _ZN17CPPTriPlantBuffer16GetPPTriPlantPtrEi
; Address            : 0x2CD090 - 0x2CD0E8
; =========================================================

2CD090:  PUSH            {R4-R7,LR}
2CD092:  ADD             R7, SP, #0xC
2CD094:  PUSH.W          {R8}
2CD098:  MOV             R4, R0
2CD09A:  LDR             R0, [R4]
2CD09C:  CMP             R0, #1
2CD09E:  ITT GE
2CD0A0:  ADDGE           R1, R0
2CD0A2:  CMPGE           R1, #0x21 ; '!'
2CD0A4:  BLT             loc_2CD0DA
2CD0A6:  LDR.W           R0, [R4,#0xB84]
2CD0AA:  MOVS            R5, #0
2CD0AC:  MOV.W           R8, #0
2CD0B0:  CMP             R0, #3
2CD0B2:  ITT LS
2CD0B4:  ADDLS.W         R0, R4, R0,LSL#2
2CD0B8:  LDRLS.W         R5, [R0,#0xB88]
2CD0BC:  BLX             rand
2CD0C0:  MOV             R6, R0
2CD0C2:  MOV             R0, R4
2CD0C4:  LDR.W           R1, [R0],#4
2CD0C8:  MOV             R2, R5
2CD0CA:  BLX             j__ZN14CGrassRenderer13DrawTriPlantsEP10PPTriPlantiPP8RpAtomicP11RwMatrixTag; CGrassRenderer::DrawTriPlants(PPTriPlant *,int,RpAtomic **,RwMatrixTag *)
2CD0CE:  MOV             R0, R6; seed
2CD0D0:  STR.W           R8, [R4]
2CD0D4:  BLX             srand
2CD0D8:  LDR             R0, [R4]
2CD0DA:  MOVS            R1, #0x5C ; '\'
2CD0DC:  MLA.W           R0, R0, R1, R4
2CD0E0:  ADDS            R0, #4
2CD0E2:  POP.W           {R8}
2CD0E6:  POP             {R4-R7,PC}
