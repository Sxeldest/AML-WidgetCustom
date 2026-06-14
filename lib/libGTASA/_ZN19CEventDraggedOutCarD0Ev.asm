; =========================================================
; Game Engine Function: _ZN19CEventDraggedOutCarD0Ev
; Address            : 0x371A34 - 0x371A8C
; =========================================================

371A34:  PUSH            {R4,R6,R7,LR}
371A36:  ADD             R7, SP, #8
371A38:  MOV             R4, R0
371A3A:  LDR             R0, =(_ZTV19CEventDraggedOutCar_ptr - 0x371A42)
371A3C:  MOV             R1, R4
371A3E:  ADD             R0, PC; _ZTV19CEventDraggedOutCar_ptr
371A40:  LDR             R2, [R0]; `vtable for'CEventDraggedOutCar ...
371A42:  LDR.W           R0, [R1,#0x14]!; CEntity **
371A46:  ADDS            R2, #8
371A48:  STR             R2, [R4]
371A4A:  CMP             R0, #0
371A4C:  IT NE
371A4E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
371A52:  MOV             R1, R4
371A54:  LDR.W           R0, [R1,#0x10]!; CEntity **
371A58:  CMP             R0, #0
371A5A:  IT NE
371A5C:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
371A60:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x371A6E)
371A62:  MOV             R3, #0xF0F0F0F1
371A6A:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
371A6C:  LDR             R0, [R0]; CPools::ms_pEventPool ...
371A6E:  LDR             R0, [R0]; CPools::ms_pEventPool
371A70:  LDRD.W          R1, R2, [R0]
371A74:  SUBS            R1, R4, R1
371A76:  ASRS            R1, R1, #2
371A78:  MULS            R1, R3
371A7A:  LDRB            R3, [R2,R1]
371A7C:  ORR.W           R3, R3, #0x80
371A80:  STRB            R3, [R2,R1]
371A82:  LDR             R2, [R0,#0xC]
371A84:  CMP             R1, R2
371A86:  IT LT
371A88:  STRLT           R1, [R0,#0xC]
371A8A:  POP             {R4,R6,R7,PC}
