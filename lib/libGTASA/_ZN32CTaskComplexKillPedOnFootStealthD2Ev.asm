; =========================================================
; Game Engine Function: _ZN32CTaskComplexKillPedOnFootStealthD2Ev
; Address            : 0x4E022C - 0x4E0254
; =========================================================

4E022C:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskComplexKillPedOnFoot::~CTaskComplexKillPedOnFoot()'
4E022E:  ADD             R7, SP, #8
4E0230:  MOV             R4, R0
4E0232:  LDR             R0, =(_ZTV25CTaskComplexKillPedOnFoot_ptr - 0x4E023A)
4E0234:  MOV             R1, R4
4E0236:  ADD             R0, PC; _ZTV25CTaskComplexKillPedOnFoot_ptr
4E0238:  LDR             R2, [R0]; `vtable for'CTaskComplexKillPedOnFoot ...
4E023A:  LDR.W           R0, [R1,#0x10]!; CEntity **
4E023E:  ADDS            R2, #8
4E0240:  STR             R2, [R4]
4E0242:  CMP             R0, #0
4E0244:  IT NE
4E0246:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4E024A:  MOV             R0, R4; this
4E024C:  POP.W           {R4,R6,R7,LR}
4E0250:  B.W             sub_18EDE8
