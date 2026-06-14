; =========================================================
; Game Engine Function: _ZN21CEventLeaderEntryExitD0Ev
; Address            : 0x37919C - 0x3791E6
; =========================================================

37919C:  PUSH            {R4,R6,R7,LR}
37919E:  ADD             R7, SP, #8
3791A0:  MOV             R4, R0
3791A2:  LDR             R0, =(_ZTV15CEventAreaCodes_ptr - 0x3791AA)
3791A4:  MOV             R1, R4
3791A6:  ADD             R0, PC; _ZTV15CEventAreaCodes_ptr
3791A8:  LDR             R2, [R0]; `vtable for'CEventAreaCodes ...
3791AA:  LDR.W           R0, [R1,#0xC]!; CEntity **
3791AE:  ADDS            R2, #8
3791B0:  STR             R2, [R4]
3791B2:  CMP             R0, #0
3791B4:  IT NE
3791B6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3791BA:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x3791C8)
3791BC:  MOV             R3, #0xF0F0F0F1
3791C4:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
3791C6:  LDR             R0, [R0]; CPools::ms_pEventPool ...
3791C8:  LDR             R0, [R0]; CPools::ms_pEventPool
3791CA:  LDRD.W          R1, R2, [R0]
3791CE:  SUBS            R1, R4, R1
3791D0:  ASRS            R1, R1, #2
3791D2:  MULS            R1, R3
3791D4:  LDRB            R3, [R2,R1]
3791D6:  ORR.W           R3, R3, #0x80
3791DA:  STRB            R3, [R2,R1]
3791DC:  LDR             R2, [R0,#0xC]
3791DE:  CMP             R1, R2
3791E0:  IT LT
3791E2:  STRLT           R1, [R0,#0xC]
3791E4:  POP             {R4,R6,R7,PC}
