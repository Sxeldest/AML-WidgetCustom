; =========================================================
; Game Engine Function: _ZN29CEventPotentialWalkIntoObjectD0Ev
; Address            : 0x374170 - 0x3741BA
; =========================================================

374170:  PUSH            {R4,R6,R7,LR}
374172:  ADD             R7, SP, #8
374174:  MOV             R4, R0
374176:  LDR             R0, =(_ZTV29CEventPotentialWalkIntoObject_ptr - 0x37417E)
374178:  MOV             R1, R4
37417A:  ADD             R0, PC; _ZTV29CEventPotentialWalkIntoObject_ptr
37417C:  LDR             R2, [R0]; `vtable for'CEventPotentialWalkIntoObject ...
37417E:  LDR.W           R0, [R1,#0x10]!; CEntity **
374182:  ADDS            R2, #8
374184:  STR             R2, [R4]
374186:  CMP             R0, #0
374188:  IT NE
37418A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
37418E:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37419C)
374190:  MOV             R3, #0xF0F0F0F1
374198:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
37419A:  LDR             R0, [R0]; CPools::ms_pEventPool ...
37419C:  LDR             R0, [R0]; CPools::ms_pEventPool
37419E:  LDRD.W          R1, R2, [R0]
3741A2:  SUBS            R1, R4, R1
3741A4:  ASRS            R1, R1, #2
3741A6:  MULS            R1, R3
3741A8:  LDRB            R3, [R2,R1]
3741AA:  ORR.W           R3, R3, #0x80
3741AE:  STRB            R3, [R2,R1]
3741B0:  LDR             R2, [R0,#0xC]
3741B2:  CMP             R1, R2
3741B4:  IT LT
3741B6:  STRLT           R1, [R0,#0xC]
3741B8:  POP             {R4,R6,R7,PC}
