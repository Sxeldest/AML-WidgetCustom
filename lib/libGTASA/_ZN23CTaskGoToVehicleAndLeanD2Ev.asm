; =========================================================
; Game Engine Function: _ZN23CTaskGoToVehicleAndLeanD2Ev
; Address            : 0x51A2B4 - 0x51A2F4
; =========================================================

51A2B4:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskGoToVehicleAndLean::~CTaskGoToVehicleAndLean()'
51A2B6:  ADD             R7, SP, #8
51A2B8:  MOV             R4, R0
51A2BA:  LDR             R0, =(_ZTV23CTaskGoToVehicleAndLean_ptr - 0x51A2C2)
51A2BC:  LDRB            R1, [R4,#0x14]; char *
51A2BE:  ADD             R0, PC; _ZTV23CTaskGoToVehicleAndLean_ptr
51A2C0:  CMP             R1, #0
51A2C2:  LDR             R0, [R0]; `vtable for'CTaskGoToVehicleAndLean ...
51A2C4:  ADD.W           R0, R0, #8
51A2C8:  STR             R0, [R4]
51A2CA:  BEQ             loc_51A2DC
51A2CC:  LDR             R0, =(aGangs - 0x51A2D2); "gangs"
51A2CE:  ADD             R0, PC; "gangs"
51A2D0:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
51A2D4:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
51A2D8:  MOVS            R0, #0
51A2DA:  STRB            R0, [R4,#0x14]
51A2DC:  MOV             R1, R4
51A2DE:  LDR.W           R0, [R1,#0xC]!; CEntity **
51A2E2:  CMP             R0, #0
51A2E4:  IT NE
51A2E6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
51A2EA:  MOV             R0, R4; this
51A2EC:  POP.W           {R4,R6,R7,LR}
51A2F0:  B.W             sub_18EDE8
