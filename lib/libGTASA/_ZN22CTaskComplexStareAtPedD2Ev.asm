; =========================================================
; Game Engine Function: _ZN22CTaskComplexStareAtPedD2Ev
; Address            : 0x519848 - 0x519888
; =========================================================

519848:  PUSH            {R4,R6,R7,LR}
51984A:  ADD             R7, SP, #8
51984C:  MOV             R4, R0
51984E:  LDR             R0, =(_ZTV22CTaskComplexStareAtPed_ptr - 0x519856)
519850:  MOV             R1, R4
519852:  ADD             R0, PC; _ZTV22CTaskComplexStareAtPed_ptr
519854:  LDR             R2, [R0]; `vtable for'CTaskComplexStareAtPed ...
519856:  LDR.W           R0, [R1,#0x10]!; CEntity **
51985A:  ADDS            R2, #8
51985C:  STR             R2, [R4]
51985E:  CMP             R0, #0
519860:  IT NE
519862:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
519866:  LDRB.W          R0, [R4,#0x25]
51986A:  CBZ             R0, loc_51987E
51986C:  LDR             R0, =(aGangs - 0x519872); "gangs"
51986E:  ADD             R0, PC; "gangs"
519870:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
519874:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
519878:  MOVS            R0, #0
51987A:  STRB.W          R0, [R4,#0x25]
51987E:  MOV             R0, R4; this
519880:  POP.W           {R4,R6,R7,LR}
519884:  B.W             sub_18EDE8
