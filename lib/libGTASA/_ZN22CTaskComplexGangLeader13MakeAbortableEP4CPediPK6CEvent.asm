; =========================================================
; Game Engine Function: _ZN22CTaskComplexGangLeader13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x515338 - 0x515364
; =========================================================

515338:  PUSH            {R4,R6,R7,LR}
51533A:  ADD             R7, SP, #8
51533C:  LDR             R0, [R0,#8]
51533E:  MOV             R4, R1
515340:  CBZ             R0, loc_515354
515342:  LDR             R1, [R0]
515344:  LDR.W           R12, [R1,#0x1C]
515348:  MOV             R1, R4
51534A:  BLX             R12
51534C:  CMP             R0, #1
51534E:  ITT NE
515350:  MOVNE           R0, #0
515352:  POPNE           {R4,R6,R7,PC}
515354:  LDR.W           R0, [R4,#0x48C]
515358:  BIC.W           R0, R0, #0x400000
51535C:  STR.W           R0, [R4,#0x48C]
515360:  MOVS            R0, #1
515362:  POP             {R4,R6,R7,PC}
