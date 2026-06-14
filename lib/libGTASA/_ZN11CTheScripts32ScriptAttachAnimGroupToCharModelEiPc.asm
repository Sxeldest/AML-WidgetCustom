; =========================================================
; Game Engine Function: _ZN11CTheScripts32ScriptAttachAnimGroupToCharModelEiPc
; Address            : 0x339374 - 0x3393BE
; =========================================================

339374:  PUSH            {R4-R7,LR}
339376:  ADD             R7, SP, #0xC
339378:  PUSH.W          {R11}
33937C:  MOV             R5, R1
33937E:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x339384)
339380:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
339382:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
339384:  LDR.W           R4, [R1,R0,LSL#2]
339388:  LDR             R0, [R4]
33938A:  LDR             R1, [R0,#0x3C]
33938C:  MOV             R0, R4
33938E:  BLX             R1
339390:  MOV             R6, R0
339392:  MOV             R0, R5; this
339394:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
339398:  CMP             R6, R0
33939A:  BNE             loc_3393A4
33939C:  MOVS            R0, #0
33939E:  POP.W           {R11}
3393A2:  POP             {R4-R7,PC}
3393A4:  LDR             R0, [R4]
3393A6:  MOV             R1, R5
3393A8:  LDR             R2, [R0,#0x34]
3393AA:  MOV             R0, R4
3393AC:  BLX             R2
3393AE:  LDR             R0, [R4]
3393B0:  LDR             R1, [R0,#0x38]
3393B2:  MOV             R0, R4
3393B4:  BLX             R1
3393B6:  MOVS            R0, #1
3393B8:  POP.W           {R11}
3393BC:  POP             {R4-R7,PC}
