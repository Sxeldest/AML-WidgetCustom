; =========================================================
; Game Engine Function: _ZN27CTaskComplexDestroyCarMeleeD2Ev
; Address            : 0x4E625C - 0x4E6284
; =========================================================

4E625C:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexDestroyCarMelee::~CTaskComplexDestroyCarMelee()'
4E625E:  ADD             R7, SP, #8
4E6260:  MOV             R4, R0
4E6262:  LDR             R0, =(_ZTV27CTaskComplexDestroyCarMelee_ptr - 0x4E626A)
4E6264:  MOV             R1, R4
4E6266:  ADD             R0, PC; _ZTV27CTaskComplexDestroyCarMelee_ptr
4E6268:  LDR             R2, [R0]; `vtable for'CTaskComplexDestroyCarMelee ...
4E626A:  LDR.W           R0, [R1,#0x10]!; CEntity **
4E626E:  ADDS            R2, #8
4E6270:  STR             R2, [R4]
4E6272:  CMP             R0, #0
4E6274:  IT NE
4E6276:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4E627A:  MOV             R0, R4; this
4E627C:  POP.W           {R4,R6,R7,LR}
4E6280:  B.W             sub_18EDE8
