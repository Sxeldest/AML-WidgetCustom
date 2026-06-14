; =========================================================
; Game Engine Function: _ZN23CTaskComplexSignalAtPedD2Ev
; Address            : 0x519EB8 - 0x519EF8
; =========================================================

519EB8:  PUSH            {R4,R6,R7,LR}
519EBA:  ADD             R7, SP, #8
519EBC:  MOV             R4, R0
519EBE:  LDR             R0, =(_ZTV23CTaskComplexSignalAtPed_ptr - 0x519EC6)
519EC0:  LDRB            R1, [R4,#0x15]; char *
519EC2:  ADD             R0, PC; _ZTV23CTaskComplexSignalAtPed_ptr
519EC4:  CMP             R1, #0
519EC6:  LDR             R0, [R0]; `vtable for'CTaskComplexSignalAtPed ...
519EC8:  ADD.W           R0, R0, #8
519ECC:  STR             R0, [R4]
519ECE:  BEQ             loc_519EE0
519ED0:  LDR             R0, =(aGangs - 0x519ED6); "gangs"
519ED2:  ADD             R0, PC; "gangs"
519ED4:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
519ED8:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
519EDC:  MOVS            R0, #0
519EDE:  STRB            R0, [R4,#0x15]
519EE0:  MOV             R1, R4
519EE2:  LDR.W           R0, [R1,#0xC]!; CEntity **
519EE6:  CMP             R0, #0
519EE8:  IT NE
519EEA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
519EEE:  MOV             R0, R4; this
519EF0:  POP.W           {R4,R6,R7,LR}
519EF4:  B.W             sub_18EDE8
