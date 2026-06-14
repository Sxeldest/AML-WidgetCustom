; =========================================================
; Game Engine Function: _ZNK16CPedIntelligence14IsFriendlyWithERK4CPed
; Address            : 0x4C130A - 0x4C1360
; =========================================================

4C130A:  PUSH            {R4-R7,LR}
4C130C:  ADD             R7, SP, #0xC
4C130E:  PUSH.W          {R8,R9,R11}
4C1312:  MOV             R6, R0
4C1314:  MOV             R5, R1
4C1316:  LDR             R0, [R6]
4C1318:  MOVS            R1, #0; int
4C131A:  ADDW            R0, R0, #0x4EC; this
4C131E:  BLX             j__ZNK13CAcquaintance16GetAcquaintancesEi; CAcquaintance::GetAcquaintances(int)
4C1322:  MOV             R9, R0
4C1324:  LDR             R0, [R6]
4C1326:  MOVS            R1, #1; int
4C1328:  MOVS            R4, #1
4C132A:  ADDW            R0, R0, #0x4EC; this
4C132E:  BLX             j__ZNK13CAcquaintance16GetAcquaintancesEi; CAcquaintance::GetAcquaintances(int)
4C1332:  MOV             R8, R0
4C1334:  LDR.W           R0, [R5,#0x59C]; this
4C1338:  BLX             j__ZN8CPedType10GetPedFlagEi; CPedType::GetPedFlag(int)
4C133C:  TST.W           R0, R9
4C1340:  BNE             loc_4C1358
4C1342:  LDR             R1, [R6]
4C1344:  LDR.W           R2, [R5,#0x59C]
4C1348:  LDR.W           R1, [R1,#0x59C]
4C134C:  CMP             R1, R2
4C134E:  BEQ             loc_4C1358
4C1350:  ANDS.W          R4, R0, R8
4C1354:  IT NE
4C1356:  MOVNE           R4, #1
4C1358:  MOV             R0, R4
4C135A:  POP.W           {R8,R9,R11}
4C135E:  POP             {R4-R7,PC}
