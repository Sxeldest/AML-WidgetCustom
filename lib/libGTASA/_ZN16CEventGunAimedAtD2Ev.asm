; =========================================================
; Game Engine Function: _ZN16CEventGunAimedAtD2Ev
; Address            : 0x37613C - 0x37615E
; =========================================================

37613C:  PUSH            {R4,R6,R7,LR}
37613E:  ADD             R7, SP, #8
376140:  MOV             R4, R0
376142:  LDR             R0, =(_ZTV16CEventGunAimedAt_ptr - 0x37614A)
376144:  MOV             R1, R4
376146:  ADD             R0, PC; _ZTV16CEventGunAimedAt_ptr
376148:  LDR             R2, [R0]; `vtable for'CEventGunAimedAt ...
37614A:  LDR.W           R0, [R1,#0x10]!; CEntity **
37614E:  ADDS            R2, #8
376150:  STR             R2, [R4]
376152:  CMP             R0, #0
376154:  IT NE
376156:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
37615A:  MOV             R0, R4
37615C:  POP             {R4,R6,R7,PC}
