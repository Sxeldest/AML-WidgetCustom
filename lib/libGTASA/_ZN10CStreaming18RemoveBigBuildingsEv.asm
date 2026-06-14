; =========================================================
; Game Engine Function: _ZN10CStreaming18RemoveBigBuildingsEv
; Address            : 0x2D5230 - 0x2D52B0
; =========================================================

2D5230:  PUSH            {R4-R7,LR}
2D5232:  ADD             R7, SP, #0xC
2D5234:  PUSH.W          {R8-R10}
2D5238:  LDR             R0, =(_ZN6CPools16ms_pBuildingPoolE_ptr - 0x2D523E)
2D523A:  ADD             R0, PC; _ZN6CPools16ms_pBuildingPoolE_ptr
2D523C:  LDR             R0, [R0]; CPools::ms_pBuildingPool ...
2D523E:  LDR.W           R9, [R0]; CPools::ms_pBuildingPool
2D5242:  LDR.W           R0, [R9,#8]
2D5246:  CBZ             R0, loc_2D52AA
2D5248:  RSB.W           R1, R0, R0,LSL#4
2D524C:  SUBS            R6, R0, #1
2D524E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2D525C)
2D5250:  MOV             R2, #0xFFFFFFEA
2D5254:  ADD.W           R5, R2, R1,LSL#2
2D5258:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2D525A:  LDR.W           R8, [R0]; CModelInfo::ms_modelInfoPtrs ...
2D525E:  B               loc_2D5284
2D5260:  LSLS            R0, R0, #0x12
2D5262:  BMI             loc_2D52A2
2D5264:  SUB.W           R0, R1, #0x26 ; '&'
2D5268:  LDR.W           R1, [R1,#-0x26]
2D526C:  LDRSH           R2, [R4,R5]
2D526E:  LDR             R1, [R1,#0x24]
2D5270:  LDR.W           R10, [R8,R2,LSL#2]
2D5274:  BLX             R1
2D5276:  LDRH.W          R0, [R10,#0x1E]
2D527A:  CBNZ            R0, loc_2D52A2
2D527C:  LDRSH           R0, [R4,R5]; this
2D527E:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2D5282:  B               loc_2D52A2
2D5284:  LDR.W           R0, [R9,#4]
2D5288:  LDRSB           R0, [R0,R6]
2D528A:  CMP             R0, #0
2D528C:  BLT             loc_2D52A2
2D528E:  LDR.W           R4, [R9]
2D5292:  ADDS            R1, R4, R5
2D5294:  CMP             R1, #0x26 ; '&'
2D5296:  ITT NE
2D5298:  LDRNE.W         R0, [R1,#-0xA]
2D529C:  TSTNE.W         R0, #0x100
2D52A0:  BNE             loc_2D5260
2D52A2:  SUBS            R6, #1
2D52A4:  SUBS            R5, #0x3C ; '<'
2D52A6:  ADDS            R0, R6, #1
2D52A8:  BNE             loc_2D5284
2D52AA:  POP.W           {R8-R10}
2D52AE:  POP             {R4-R7,PC}
