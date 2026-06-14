; =========================================================
; Game Engine Function: _ZN27CTaskComplexWalkRoundObjectD2Ev
; Address            : 0x50DDA8 - 0x50DDDA
; =========================================================

50DDA8:  PUSH            {R4,R6,R7,LR}
50DDAA:  ADD             R7, SP, #8
50DDAC:  MOV             R4, R0
50DDAE:  LDR             R0, =(_ZTV27CTaskComplexWalkRoundObject_ptr - 0x50DDB6)
50DDB0:  MOV             R1, R4
50DDB2:  ADD             R0, PC; _ZTV27CTaskComplexWalkRoundObject_ptr
50DDB4:  LDR             R2, [R0]; `vtable for'CTaskComplexWalkRoundObject ...
50DDB6:  LDR.W           R0, [R1,#0x1C]!; CEntity **
50DDBA:  ADDS            R2, #8
50DDBC:  STR             R2, [R4]
50DDBE:  CMP             R0, #0
50DDC0:  IT NE
50DDC2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50DDC6:  LDR             R0, [R4,#0x20]; void *
50DDC8:  CMP             R0, #0
50DDCA:  IT NE
50DDCC:  BLXNE           j__ZN11CPointRoutedlEPv; CPointRoute::operator delete(void *)
50DDD0:  MOV             R0, R4; this
50DDD2:  POP.W           {R4,R6,R7,LR}
50DDD6:  B.W             sub_18EDE8
