; =========================================================
; Game Engine Function: _ZN22CTaskGangHassleVehicleD2Ev
; Address            : 0x5184E8 - 0x518546
; =========================================================

5184E8:  PUSH            {R4,R5,R7,LR}
5184EA:  ADD             R7, SP, #8
5184EC:  MOV             R4, R0
5184EE:  LDR             R0, =(_ZTV22CTaskGangHassleVehicle_ptr - 0x5184F6)
5184F0:  MOV             R5, R4
5184F2:  ADD             R0, PC; _ZTV22CTaskGangHassleVehicle_ptr
5184F4:  LDR             R1, [R0]; `vtable for'CTaskGangHassleVehicle ...
5184F6:  LDR.W           R0, [R5,#0x10]!; this
5184FA:  ADDS            R1, #8
5184FC:  STR             R1, [R4]
5184FE:  CBZ             R0, loc_518516
518500:  LDR             R1, [R4,#0x14]; int
518502:  CMP             R1, #0
518504:  BLT             loc_518510
518506:  MOVS            R2, #0; bool
518508:  BLX             j__ZN8CVehicle14SetHasslePosIdEib; CVehicle::SetHasslePosId(int,bool)
51850C:  LDR             R0, [R5]; this
51850E:  CBZ             R0, loc_518516
518510:  MOV             R1, R5; CEntity **
518512:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
518516:  MOV             R1, R4
518518:  LDR.W           R0, [R1,#0x34]!; CEntity **
51851C:  CMP             R0, #0
51851E:  IT NE
518520:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
518524:  LDRB.W          R0, [R4,#0x30]
518528:  CBZ             R0, loc_51853C
51852A:  LDR             R0, =(aGangs - 0x518530); "gangs"
51852C:  ADD             R0, PC; "gangs"
51852E:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
518532:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
518536:  MOVS            R0, #0
518538:  STRB.W          R0, [R4,#0x30]
51853C:  MOV             R0, R4; this
51853E:  POP.W           {R4,R5,R7,LR}
518542:  B.W             sub_18EDE8
