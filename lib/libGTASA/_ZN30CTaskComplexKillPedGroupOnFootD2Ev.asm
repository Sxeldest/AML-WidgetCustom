; =========================================================
; Game Engine Function: _ZN30CTaskComplexKillPedGroupOnFootD2Ev
; Address            : 0x4E8278 - 0x4E82A0
; =========================================================

4E8278:  PUSH            {R4,R6,R7,LR}
4E827A:  ADD             R7, SP, #8
4E827C:  MOV             R4, R0
4E827E:  LDR             R0, =(_ZTV30CTaskComplexKillPedGroupOnFoot_ptr - 0x4E8286)
4E8280:  MOV             R1, R4
4E8282:  ADD             R0, PC; _ZTV30CTaskComplexKillPedGroupOnFoot_ptr
4E8284:  LDR             R2, [R0]; `vtable for'CTaskComplexKillPedGroupOnFoot ...
4E8286:  LDR.W           R0, [R1,#0x10]!; CEntity **
4E828A:  ADDS            R2, #8
4E828C:  STR             R2, [R4]
4E828E:  CMP             R0, #0
4E8290:  IT NE
4E8292:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4E8296:  MOV             R0, R4; this
4E8298:  POP.W           {R4,R6,R7,LR}
4E829C:  B.W             sub_18EDE8
