; =========================================================
; Game Engine Function: _ZN31CTaskComplexEvasiveDiveAndGetUp13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x50B30C - 0x50B348
; =========================================================

50B30C:  PUSH            {R4-R7,LR}
50B30E:  ADD             R7, SP, #0xC
50B310:  PUSH.W          {R11}
50B314:  LDR             R0, [R0,#8]
50B316:  MOV             R5, R1
50B318:  MOV             R6, R2
50B31A:  LDR             R1, [R0]
50B31C:  LDR             R4, [R1,#0x1C]
50B31E:  MOV             R1, R5
50B320:  BLX             R4
50B322:  CMP             R6, #2
50B324:  MOV             R4, R0
50B326:  IT EQ
50B328:  CMPEQ           R4, #1
50B32A:  BNE             loc_50B340
50B32C:  LDR             R0, [R5,#0x18]
50B32E:  MOVS            R1, #0x7F
50B330:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
50B334:  CMP             R0, #0
50B336:  ITTT NE
50B338:  MOVNE           R1, #0
50B33A:  MOVTNE          R1, #0xC47A
50B33E:  STRNE           R1, [R0,#0x1C]
50B340:  MOV             R0, R4
50B342:  POP.W           {R11}
50B346:  POP             {R4-R7,PC}
