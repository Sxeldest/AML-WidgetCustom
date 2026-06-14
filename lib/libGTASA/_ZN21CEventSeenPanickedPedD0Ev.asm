; =========================================================
; Game Engine Function: _ZN21CEventSeenPanickedPedD0Ev
; Address            : 0x37798C - 0x3779D6
; =========================================================

37798C:  PUSH            {R4,R6,R7,LR}
37798E:  ADD             R7, SP, #8
377990:  MOV             R4, R0
377992:  LDR             R0, =(_ZTV21CEventSeenPanickedPed_ptr - 0x37799A)
377994:  MOV             R1, R4
377996:  ADD             R0, PC; _ZTV21CEventSeenPanickedPed_ptr
377998:  LDR             R2, [R0]; `vtable for'CEventSeenPanickedPed ...
37799A:  LDR.W           R0, [R1,#0x10]!; CEntity **
37799E:  ADDS            R2, #8
3779A0:  STR             R2, [R4]
3779A2:  CMP             R0, #0
3779A4:  IT NE
3779A6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3779AA:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x3779B8)
3779AC:  MOV             R3, #0xF0F0F0F1
3779B4:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
3779B6:  LDR             R0, [R0]; CPools::ms_pEventPool ...
3779B8:  LDR             R0, [R0]; CPools::ms_pEventPool
3779BA:  LDRD.W          R1, R2, [R0]
3779BE:  SUBS            R1, R4, R1
3779C0:  ASRS            R1, R1, #2
3779C2:  MULS            R1, R3
3779C4:  LDRB            R3, [R2,R1]
3779C6:  ORR.W           R3, R3, #0x80
3779CA:  STRB            R3, [R2,R1]
3779CC:  LDR             R2, [R0,#0xC]
3779CE:  CMP             R1, R2
3779D0:  IT LT
3779D2:  STRLT           R1, [R0,#0xC]
3779D4:  POP             {R4,R6,R7,PC}
