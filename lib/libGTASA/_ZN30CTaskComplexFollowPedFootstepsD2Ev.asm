; =========================================================
; Game Engine Function: _ZN30CTaskComplexFollowPedFootstepsD2Ev
; Address            : 0x545994 - 0x5459C8
; =========================================================

545994:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexFollowPedFootsteps::~CTaskComplexFollowPedFootsteps()'
545996:  ADD             R7, SP, #8
545998:  MOV             R4, R0
54599A:  LDR             R0, =(_ZTV30CTaskComplexFollowPedFootsteps_ptr - 0x5459A2)
54599C:  MOV             R1, R4
54599E:  ADD             R0, PC; _ZTV30CTaskComplexFollowPedFootsteps_ptr
5459A0:  LDR             R2, [R0]; `vtable for'CTaskComplexFollowPedFootsteps ...
5459A2:  LDR.W           R0, [R1,#0xC]!; CEntity **
5459A6:  ADDS            R2, #8
5459A8:  STR             R2, [R4]
5459AA:  CMP             R0, #0
5459AC:  IT NE
5459AE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5459B2:  LDR             R0, [R4,#0x18]; void *
5459B4:  CBZ             R0, loc_5459BE
5459B6:  BLX             j__ZN11CPointRoutedlEPv; CPointRoute::operator delete(void *)
5459BA:  MOVS            R0, #0
5459BC:  STR             R0, [R4,#0x18]
5459BE:  MOV             R0, R4; this
5459C0:  POP.W           {R4,R6,R7,LR}
5459C4:  B.W             sub_18EDE8
