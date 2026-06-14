; =========================================================
; Game Engine Function: alDistanceModel
; Address            : 0x1E1358 - 0x1E13B4
; =========================================================

1E1358:  PUSH            {R4,R5,R11,LR}
1E135C:  ADD             R11, SP, #8
1E1360:  MOV             R5, R0
1E1364:  BL              j_GetContextRef
1E1368:  MOV             R4, R0
1E136C:  CMP             R4, #0
1E1370:  POPEQ           {R4,R5,R11,PC}
1E1374:  MOVW            R0, #0xD001
1E1378:  SUB             R0, R5, R0
1E137C:  CMP             R0, #6
1E1380:  BCS             loc_1E139C
1E1384:  MOV             R0, #1
1E1388:  STR             R5, [R4,#0xCC]
1E138C:  STR             R0, [R4,#0xC8]
1E1390:  MOV             R0, R4
1E1394:  POP             {R4,R5,R11,LR}
1E1398:  B               j_ALCcontext_DecRef
1E139C:  CMP             R5, #0
1E13A0:  BEQ             loc_1E1384
1E13A4:  MOV             R0, R4
1E13A8:  MOVW            R1, #0xA003
1E13AC:  BL              j_alSetError
1E13B0:  B               loc_1E1390
