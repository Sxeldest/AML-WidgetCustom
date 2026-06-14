; =========================================================
; Game Engine Function: _ZN18CTaskGangHasslePedD2Ev
; Address            : 0x51932C - 0x519368
; =========================================================

51932C:  PUSH            {R4,R6,R7,LR}
51932E:  ADD             R7, SP, #8
519330:  MOV             R4, R0
519332:  LDR             R0, =(_ZTV18CTaskGangHasslePed_ptr - 0x51933A)
519334:  MOV             R1, R4
519336:  ADD             R0, PC; _ZTV18CTaskGangHasslePed_ptr
519338:  LDR             R2, [R0]; `vtable for'CTaskGangHasslePed ...
51933A:  LDR.W           R0, [R1,#0xC]!; CEntity **
51933E:  ADDS            R2, #8
519340:  STR             R2, [R4]
519342:  CMP             R0, #0
519344:  IT NE
519346:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
51934A:  LDRB            R0, [R4,#0x1C]
51934C:  CBZ             R0, loc_51935E
51934E:  LDR             R0, =(aGangs - 0x519354); "gangs"
519350:  ADD             R0, PC; "gangs"
519352:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
519356:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
51935A:  MOVS            R0, #0
51935C:  STRB            R0, [R4,#0x1C]
51935E:  MOV             R0, R4; this
519360:  POP.W           {R4,R6,R7,LR}
519364:  B.W             sub_18EDE8
