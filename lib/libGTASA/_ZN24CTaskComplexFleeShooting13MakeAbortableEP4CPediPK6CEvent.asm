; =========================================================
; Game Engine Function: _ZN24CTaskComplexFleeShooting13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x514234 - 0x51428E
; =========================================================

514234:  PUSH            {R4-R7,LR}
514236:  ADD             R7, SP, #0xC
514238:  PUSH.W          {R8,R9,R11}
51423C:  MOV             R6, R1
51423E:  MOV             R8, R0
514240:  LDR.W           R0, [R6,#0x440]
514244:  MOVS            R1, #0; int
514246:  MOV             R9, R3
514248:  MOV             R5, R2
51424A:  ADDS            R0, #4; this
51424C:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
514250:  MOV             R4, R0
514252:  CBZ             R4, loc_514274
514254:  LDR             R0, [R4]
514256:  LDR             R1, [R0,#0x14]
514258:  MOV             R0, R4
51425A:  BLX             R1
51425C:  MOVW            R1, #0x3F9
514260:  CMP             R0, R1
514262:  BNE             loc_514274
514264:  LDR             R0, [R4]
514266:  MOV             R1, R6
514268:  MOV             R2, R5
51426A:  MOV             R3, R9
51426C:  LDR.W           R12, [R0,#0x1C]
514270:  MOV             R0, R4
514272:  BLX             R12
514274:  LDR.W           R0, [R8,#8]
514278:  MOV             R2, R5
51427A:  MOV             R3, R9
51427C:  LDR             R1, [R0]
51427E:  LDR.W           R12, [R1,#0x1C]
514282:  MOV             R1, R6
514284:  POP.W           {R8,R9,R11}
514288:  POP.W           {R4-R7,LR}
51428C:  BX              R12
