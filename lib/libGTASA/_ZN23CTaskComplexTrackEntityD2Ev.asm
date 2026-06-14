; =========================================================
; Game Engine Function: _ZN23CTaskComplexTrackEntityD2Ev
; Address            : 0x517D74 - 0x517D9C
; =========================================================

517D74:  PUSH            {R4,R6,R7,LR}
517D76:  ADD             R7, SP, #8
517D78:  MOV             R4, R0
517D7A:  LDR             R0, =(_ZTV23CTaskComplexTrackEntity_ptr - 0x517D82)
517D7C:  MOV             R1, R4
517D7E:  ADD             R0, PC; _ZTV23CTaskComplexTrackEntity_ptr
517D80:  LDR             R2, [R0]; `vtable for'CTaskComplexTrackEntity ...
517D82:  LDR.W           R0, [R1,#0xC]!; CEntity **
517D86:  ADDS            R2, #8
517D88:  STR             R2, [R4]
517D8A:  CMP             R0, #0
517D8C:  IT NE
517D8E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
517D92:  MOV             R0, R4; this
517D94:  POP.W           {R4,R6,R7,LR}
517D98:  B.W             sub_18EDE8
