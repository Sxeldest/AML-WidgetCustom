; =========================================================
; Game Engine Function: _ZN28CTaskComplexSeekEntityAimingD2Ev
; Address            : 0x545614 - 0x54563C
; =========================================================

545614:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexSeekEntityAiming::~CTaskComplexSeekEntityAiming()'
545616:  ADD             R7, SP, #8
545618:  MOV             R4, R0
54561A:  LDR             R0, =(_ZTV28CTaskComplexSeekEntityAiming_ptr - 0x545622)
54561C:  MOV             R1, R4
54561E:  ADD             R0, PC; _ZTV28CTaskComplexSeekEntityAiming_ptr
545620:  LDR             R2, [R0]; `vtable for'CTaskComplexSeekEntityAiming ...
545622:  LDR.W           R0, [R1,#0xC]!; CEntity **
545626:  ADDS            R2, #8
545628:  STR             R2, [R4]
54562A:  CMP             R0, #0
54562C:  IT NE
54562E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
545632:  MOV             R0, R4; this
545634:  POP.W           {R4,R6,R7,LR}
545638:  B.W             sub_18EDE8
