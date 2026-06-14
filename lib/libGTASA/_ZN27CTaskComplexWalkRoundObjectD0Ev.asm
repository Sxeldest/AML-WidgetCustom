; =========================================================
; Game Engine Function: _ZN27CTaskComplexWalkRoundObjectD0Ev
; Address            : 0x50DDE0 - 0x50DE16
; =========================================================

50DDE0:  PUSH            {R4,R6,R7,LR}
50DDE2:  ADD             R7, SP, #8
50DDE4:  MOV             R4, R0
50DDE6:  LDR             R0, =(_ZTV27CTaskComplexWalkRoundObject_ptr - 0x50DDEE)
50DDE8:  MOV             R1, R4
50DDEA:  ADD             R0, PC; _ZTV27CTaskComplexWalkRoundObject_ptr
50DDEC:  LDR             R2, [R0]; `vtable for'CTaskComplexWalkRoundObject ...
50DDEE:  LDR.W           R0, [R1,#0x1C]!; CEntity **
50DDF2:  ADDS            R2, #8
50DDF4:  STR             R2, [R4]
50DDF6:  CMP             R0, #0
50DDF8:  IT NE
50DDFA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50DDFE:  LDR             R0, [R4,#0x20]; void *
50DE00:  CMP             R0, #0
50DE02:  IT NE
50DE04:  BLXNE           j__ZN11CPointRoutedlEPv; CPointRoute::operator delete(void *)
50DE08:  MOV             R0, R4; this
50DE0A:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
50DE0E:  POP.W           {R4,R6,R7,LR}
50DE12:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
