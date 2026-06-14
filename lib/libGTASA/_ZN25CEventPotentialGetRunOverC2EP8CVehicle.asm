; =========================================================
; Game Engine Function: _ZN25CEventPotentialGetRunOverC2EP8CVehicle
; Address            : 0x373E00 - 0x373E3C
; =========================================================

373E00:  PUSH            {R4,R6,R7,LR}
373E02:  ADD             R7, SP, #8
373E04:  MOV             R4, R0
373E06:  LDR             R0, =(_ZTV25CEventPotentialGetRunOver_ptr - 0x373E10)
373E08:  MOVS            R2, #0
373E0A:  CMP             R1, #0
373E0C:  ADD             R0, PC; _ZTV25CEventPotentialGetRunOver_ptr
373E0E:  STR             R2, [R4,#4]
373E10:  MOV             R2, #0xC80100
373E18:  LDR             R0, [R0]; `vtable for'CEventPotentialGetRunOver ...
373E1A:  STR             R2, [R4,#8]
373E1C:  MOVW            R2, #0xFFFF
373E20:  STRH            R2, [R4,#0xC]
373E22:  MOV             R2, R4
373E24:  ADD.W           R0, R0, #8
373E28:  STR             R0, [R4]
373E2A:  STR.W           R1, [R2,#0x10]!
373E2E:  ITTT NE
373E30:  MOVNE           R0, R1; this
373E32:  MOVNE           R1, R2; CEntity **
373E34:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
373E38:  MOV             R0, R4
373E3A:  POP             {R4,R6,R7,PC}
