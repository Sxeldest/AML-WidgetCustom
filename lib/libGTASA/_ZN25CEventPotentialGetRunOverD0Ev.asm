; =========================================================
; Game Engine Function: _ZN25CEventPotentialGetRunOverD0Ev
; Address            : 0x373E68 - 0x373EB2
; =========================================================

373E68:  PUSH            {R4,R6,R7,LR}
373E6A:  ADD             R7, SP, #8
373E6C:  MOV             R4, R0
373E6E:  LDR             R0, =(_ZTV25CEventPotentialGetRunOver_ptr - 0x373E76)
373E70:  MOV             R1, R4
373E72:  ADD             R0, PC; _ZTV25CEventPotentialGetRunOver_ptr
373E74:  LDR             R2, [R0]; `vtable for'CEventPotentialGetRunOver ...
373E76:  LDR.W           R0, [R1,#0x10]!; CEntity **
373E7A:  ADDS            R2, #8
373E7C:  STR             R2, [R4]
373E7E:  CMP             R0, #0
373E80:  IT NE
373E82:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
373E86:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x373E94)
373E88:  MOV             R3, #0xF0F0F0F1
373E90:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
373E92:  LDR             R0, [R0]; CPools::ms_pEventPool ...
373E94:  LDR             R0, [R0]; CPools::ms_pEventPool
373E96:  LDRD.W          R1, R2, [R0]
373E9A:  SUBS            R1, R4, R1
373E9C:  ASRS            R1, R1, #2
373E9E:  MULS            R1, R3
373EA0:  LDRB            R3, [R2,R1]
373EA2:  ORR.W           R3, R3, #0x80
373EA6:  STRB            R3, [R2,R1]
373EA8:  LDR             R2, [R0,#0xC]
373EAA:  CMP             R1, R2
373EAC:  IT LT
373EAE:  STRLT           R1, [R0,#0xC]
373EB0:  POP             {R4,R6,R7,PC}
