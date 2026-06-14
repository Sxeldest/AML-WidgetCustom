; =========================================================
; Game Engine Function: _ZN32CTaskComplexFollowLeaderAnyMeans17CreateNextSubTaskEP4CPed
; Address            : 0x545308 - 0x545370
; =========================================================

545308:  PUSH            {R4,R5,R7,LR}
54530A:  ADD             R7, SP, #8
54530C:  MOV             R5, R0
54530E:  MOV             R4, R1
545310:  LDR             R0, [R5,#8]
545312:  LDR             R1, [R0]
545314:  LDR             R1, [R1,#0x14]
545316:  BLX             R1
545318:  CMP.W           R0, #0x390
54531C:  BGT             loc_54533E
54531E:  CMP             R0, #0xCB
545320:  ITT NE
545322:  MOVWNE          R1, #0x2CF
545326:  CMPNE           R0, R1
545328:  BNE             loc_54535E
54532A:  LDR             R0, [R5,#0x10]
54532C:  MOVW            R1, #0x39A
545330:  LDRB.W          R0, [R0,#0x485]
545334:  LSLS            R0, R0, #0x1F
545336:  IT EQ
545338:  MOVWEQ          R1, #0x391
54533C:  B               loc_545366
54533E:  MOVW            R1, #0x391
545342:  CMP             R0, R1
545344:  BEQ             loc_545362
545346:  MOVW            R1, #0x39A
54534A:  CMP             R0, R1
54534C:  BNE             loc_54535E
54534E:  LDRB.W          R0, [R4,#0x485]
545352:  MOVW            R1, #0x2CF
545356:  LSLS            R0, R0, #0x1F
545358:  IT EQ
54535A:  MOVEQ           R1, #0xCB
54535C:  B               loc_545366
54535E:  MOVS            R0, #0
545360:  POP             {R4,R5,R7,PC}
545362:  MOVW            R1, #0x516; int
545366:  MOV             R0, R5; this
545368:  MOV             R2, R4; CPed *
54536A:  POP.W           {R4,R5,R7,LR}
54536E:  B               _ZNK32CTaskComplexFollowLeaderAnyMeans13CreateSubTaskEiPK4CPed; CTaskComplexFollowLeaderAnyMeans::CreateSubTask(int,CPed const*)
