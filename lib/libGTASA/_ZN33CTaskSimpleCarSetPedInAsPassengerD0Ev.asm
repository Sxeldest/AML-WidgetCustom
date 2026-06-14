; =========================================================
; Game Engine Function: _ZN33CTaskSimpleCarSetPedInAsPassengerD0Ev
; Address            : 0x502724 - 0x502750
; =========================================================

502724:  PUSH            {R4,R6,R7,LR}
502726:  ADD             R7, SP, #8
502728:  MOV             R4, R0
50272A:  LDR             R0, =(_ZTV33CTaskSimpleCarSetPedInAsPassenger_ptr - 0x502732)
50272C:  MOV             R1, R4
50272E:  ADD             R0, PC; _ZTV33CTaskSimpleCarSetPedInAsPassenger_ptr
502730:  LDR             R2, [R0]; `vtable for'CTaskSimpleCarSetPedInAsPassenger ...
502732:  LDR.W           R0, [R1,#0x10]!; CEntity **
502736:  ADDS            R2, #8
502738:  STR             R2, [R4]
50273A:  CMP             R0, #0
50273C:  IT NE
50273E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
502742:  MOV             R0, R4; this
502744:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
502748:  POP.W           {R4,R6,R7,LR}
50274C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
