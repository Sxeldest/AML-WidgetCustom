; =========================================================
; Game Engine Function: _ZN32CEventPlayerCommandToGroupAttackD0Ev
; Address            : 0x379298 - 0x3792E2
; =========================================================

379298:  PUSH            {R4,R6,R7,LR}
37929A:  ADD             R7, SP, #8
37929C:  MOV             R4, R0
37929E:  LDR             R0, =(_ZTV26CEventPlayerCommandToGroup_ptr - 0x3792A6)
3792A0:  MOV             R1, R4
3792A2:  ADD             R0, PC; _ZTV26CEventPlayerCommandToGroup_ptr
3792A4:  LDR             R2, [R0]; `vtable for'CEventPlayerCommandToGroup ...
3792A6:  LDR.W           R0, [R1,#0x14]!; CEntity **
3792AA:  ADDS            R2, #8
3792AC:  STR             R2, [R4]
3792AE:  CMP             R0, #0
3792B0:  IT NE
3792B2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3792B6:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x3792C4)
3792B8:  MOV             R3, #0xF0F0F0F1
3792C0:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
3792C2:  LDR             R0, [R0]; CPools::ms_pEventPool ...
3792C4:  LDR             R0, [R0]; CPools::ms_pEventPool
3792C6:  LDRD.W          R1, R2, [R0]
3792CA:  SUBS            R1, R4, R1
3792CC:  ASRS            R1, R1, #2
3792CE:  MULS            R1, R3
3792D0:  LDRB            R3, [R2,R1]
3792D2:  ORR.W           R3, R3, #0x80
3792D6:  STRB            R3, [R2,R1]
3792D8:  LDR             R2, [R0,#0xC]
3792DA:  CMP             R1, R2
3792DC:  IT LT
3792DE:  STRLT           R1, [R0,#0xC]
3792E0:  POP             {R4,R6,R7,PC}
