; =========================================================
; Game Engine Function: _ZN13CEventDeadPedD0Ev
; Address            : 0x373B50 - 0x373B9A
; =========================================================

373B50:  PUSH            {R4,R6,R7,LR}
373B52:  ADD             R7, SP, #8
373B54:  MOV             R4, R0
373B56:  LDR             R0, =(_ZTV13CEventDeadPed_ptr - 0x373B5E)
373B58:  MOV             R1, R4
373B5A:  ADD             R0, PC; _ZTV13CEventDeadPed_ptr
373B5C:  LDR             R2, [R0]; `vtable for'CEventDeadPed ...
373B5E:  LDR.W           R0, [R1,#0x10]!; CEntity **
373B62:  ADDS            R2, #8
373B64:  STR             R2, [R4]
373B66:  CMP             R0, #0
373B68:  IT NE
373B6A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
373B6E:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x373B7C)
373B70:  MOV             R3, #0xF0F0F0F1
373B78:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
373B7A:  LDR             R0, [R0]; CPools::ms_pEventPool ...
373B7C:  LDR             R0, [R0]; CPools::ms_pEventPool
373B7E:  LDRD.W          R1, R2, [R0]
373B82:  SUBS            R1, R4, R1
373B84:  ASRS            R1, R1, #2
373B86:  MULS            R1, R3
373B88:  LDRB            R3, [R2,R1]
373B8A:  ORR.W           R3, R3, #0x80
373B8E:  STRB            R3, [R2,R1]
373B90:  LDR             R2, [R0,#0xC]
373B92:  CMP             R1, R2
373B94:  IT LT
373B96:  STRLT           R1, [R0,#0xC]
373B98:  POP             {R4,R6,R7,PC}
