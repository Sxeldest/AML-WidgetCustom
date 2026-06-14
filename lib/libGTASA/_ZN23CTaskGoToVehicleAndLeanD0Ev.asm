; =========================================================
; Game Engine Function: _ZN23CTaskGoToVehicleAndLeanD0Ev
; Address            : 0x51A2FC - 0x51A340
; =========================================================

51A2FC:  PUSH            {R4,R6,R7,LR}
51A2FE:  ADD             R7, SP, #8
51A300:  MOV             R4, R0
51A302:  LDR             R0, =(_ZTV23CTaskGoToVehicleAndLean_ptr - 0x51A30A)
51A304:  LDRB            R1, [R4,#0x14]; char *
51A306:  ADD             R0, PC; _ZTV23CTaskGoToVehicleAndLean_ptr
51A308:  CMP             R1, #0
51A30A:  LDR             R0, [R0]; `vtable for'CTaskGoToVehicleAndLean ...
51A30C:  ADD.W           R0, R0, #8
51A310:  STR             R0, [R4]
51A312:  BEQ             loc_51A324
51A314:  LDR             R0, =(aGangs - 0x51A31A); "gangs"
51A316:  ADD             R0, PC; "gangs"
51A318:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
51A31C:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
51A320:  MOVS            R0, #0
51A322:  STRB            R0, [R4,#0x14]
51A324:  MOV             R1, R4
51A326:  LDR.W           R0, [R1,#0xC]!; CEntity **
51A32A:  CMP             R0, #0
51A32C:  IT NE
51A32E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
51A332:  MOV             R0, R4; this
51A334:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
51A338:  POP.W           {R4,R6,R7,LR}
51A33C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
