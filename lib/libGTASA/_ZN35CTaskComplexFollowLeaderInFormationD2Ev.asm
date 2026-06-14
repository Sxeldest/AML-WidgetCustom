; =========================================================
; Game Engine Function: _ZN35CTaskComplexFollowLeaderInFormationD2Ev
; Address            : 0x5448B0 - 0x5448D8
; =========================================================

5448B0:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexFollowLeaderInFormation::~CTaskComplexFollowLeaderInFormation()'
5448B2:  ADD             R7, SP, #8
5448B4:  MOV             R4, R0
5448B6:  LDR             R0, =(_ZTV35CTaskComplexFollowLeaderInFormation_ptr - 0x5448BE)
5448B8:  MOV             R1, R4
5448BA:  ADD             R0, PC; _ZTV35CTaskComplexFollowLeaderInFormation_ptr
5448BC:  LDR             R2, [R0]; `vtable for'CTaskComplexFollowLeaderInFormation ...
5448BE:  LDR.W           R0, [R1,#0x10]!; CEntity **
5448C2:  ADDS            R2, #8
5448C4:  STR             R2, [R4]
5448C6:  CMP             R0, #0
5448C8:  IT NE
5448CA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5448CE:  MOV             R0, R4; this
5448D0:  POP.W           {R4,R6,R7,LR}
5448D4:  B.W             sub_18EDE8
