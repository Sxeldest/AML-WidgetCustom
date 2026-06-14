; =========================================================
; Game Engine Function: _ZN14CGrassRenderer19FlushTriPlantBufferEv
; Address            : 0x2CD144 - 0x2CD19E
; =========================================================

2CD144:  LDR             R0, =(dword_70BF84 - 0x2CD14A)
2CD146:  ADD             R0, PC; dword_70BF84
2CD148:  LDR             R0, [R0]
2CD14A:  CMP             R0, #1
2CD14C:  IT LT
2CD14E:  BXLT            LR
2CD150:  PUSH            {R4-R7,LR}
2CD152:  ADD             R7, SP, #0x14+var_8
2CD154:  PUSH.W          {R8}
2CD158:  LDR             R0, =(dword_70BF84 - 0x2CD164)
2CD15A:  MOV.W           R8, #0
2CD15E:  MOVS            R4, #0
2CD160:  ADD             R0, PC; dword_70BF84
2CD162:  LDR.W           R0, [R0,#(dword_70CB08 - 0x70BF84)]
2CD166:  CMP             R0, #3
2CD168:  BHI             loc_2CD176
2CD16A:  LDR             R1, =(dword_70BF84 - 0x2CD170)
2CD16C:  ADD             R1, PC; dword_70BF84
2CD16E:  ADD.W           R0, R1, R0,LSL#2
2CD172:  LDR.W           R4, [R0,#0xB88]
2CD176:  BLX             rand
2CD17A:  LDR             R6, =(dword_70BF84 - 0x2CD184)
2CD17C:  MOV             R5, R0
2CD17E:  MOV             R2, R4
2CD180:  ADD             R6, PC; dword_70BF84
2CD182:  MOV             R0, R6
2CD184:  LDR.W           R1, [R0],#4
2CD188:  BLX             j__ZN14CGrassRenderer13DrawTriPlantsEP10PPTriPlantiPP8RpAtomicP11RwMatrixTag; CGrassRenderer::DrawTriPlants(PPTriPlant *,int,RpAtomic **,RwMatrixTag *)
2CD18C:  STR.W           R8, [R6]
2CD190:  MOV             R0, R5; seed
2CD192:  POP.W           {R8}
2CD196:  POP.W           {R4-R7,LR}
2CD19A:  B.W             j_srand
