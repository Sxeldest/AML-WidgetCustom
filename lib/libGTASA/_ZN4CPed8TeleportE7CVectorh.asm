; =========================================================
; Game Engine Function: _ZN4CPed8TeleportE7CVectorh
; Address            : 0x4A71C0 - 0x4A7252
; =========================================================

4A71C0:  PUSH            {R4-R7,LR}
4A71C2:  ADD             R7, SP, #0xC
4A71C4:  PUSH.W          {R8}
4A71C8:  MOV             R4, R0
4A71CA:  MOV             R5, R1
4A71CC:  LDR.W           R1, [R4,#0x59C]
4A71D0:  MOV             R8, R3
4A71D2:  MOV             R6, R2
4A71D4:  CBZ             R1, loc_4A71EA
4A71D6:  LDR.W           R0, [R4,#0x440]
4A71DA:  CMP             R1, #1
4A71DC:  BEQ             loc_4A71EE
4A71DE:  ADDS            R0, #4; this
4A71E0:  MOV.W           R1, #0x2C0; int
4A71E4:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4A71E8:  CBZ             R0, loc_4A71F4
4A71EA:  LDR.W           R0, [R4,#0x440]; this
4A71EE:  MOVS            R1, #1; bool
4A71F0:  BLX             j__ZN16CPedIntelligence16FlushImmediatelyEb; CPedIntelligence::FlushImmediately(bool)
4A71F4:  MOV             R0, R4; this
4A71F6:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
4A71FA:  LDR             R0, [R4,#0x14]
4A71FC:  CBZ             R0, loc_4A720A
4A71FE:  STR             R5, [R0,#0x30]
4A7200:  LDR             R0, [R4,#0x14]
4A7202:  STR             R6, [R0,#0x34]
4A7204:  LDR             R0, [R4,#0x14]
4A7206:  ADDS            R0, #0x38 ; '8'
4A7208:  B               loc_4A7212
4A720A:  ADD.W           R0, R4, #0xC
4A720E:  STRD.W          R5, R6, [R4,#4]
4A7212:  STR.W           R8, [R0]
4A7216:  MOV             R1, R4
4A7218:  LDR.W           R0, [R1,#0xE0]!; CEntity **
4A721C:  LDR.W           R2, [R1,#0x3A4]
4A7220:  CMP             R0, #0
4A7222:  BIC.W           R2, R2, #1
4A7226:  STR.W           R2, [R1,#0x3A4]
4A722A:  IT NE
4A722C:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4A7230:  MOVS            R5, #0
4A7232:  MOV             R0, R4; this
4A7234:  STR.W           R5, [R4,#0xE0]
4A7238:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
4A723C:  VMOV.I32        Q8, #0
4A7240:  ADD.W           R0, R4, #0x48 ; 'H'
4A7244:  VST1.32         {D16-D17}, [R0]
4A7248:  STRD.W          R5, R5, [R4,#0x58]
4A724C:  POP.W           {R8}
4A7250:  POP             {R4-R7,PC}
