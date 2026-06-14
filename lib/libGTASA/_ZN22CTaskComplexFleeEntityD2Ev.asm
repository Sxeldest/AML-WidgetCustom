; =========================================================
; Game Engine Function: _ZN22CTaskComplexFleeEntityD2Ev
; Address            : 0x513254 - 0x51327C
; =========================================================

513254:  PUSH            {R4,R6,R7,LR}
513256:  ADD             R7, SP, #8
513258:  MOV             R4, R0
51325A:  LDR             R0, =(_ZTV22CTaskComplexFleeEntity_ptr - 0x513262)
51325C:  MOV             R1, R4
51325E:  ADD             R0, PC; _ZTV22CTaskComplexFleeEntity_ptr
513260:  LDR             R2, [R0]; `vtable for'CTaskComplexFleeEntity ...
513262:  LDR.W           R0, [R1,#0xC]!; CEntity **
513266:  ADDS            R2, #8
513268:  STR             R2, [R4]
51326A:  CMP             R0, #0
51326C:  IT NE
51326E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
513272:  MOV             R0, R4; this
513274:  POP.W           {R4,R6,R7,LR}
513278:  B.W             sub_18EDE8
