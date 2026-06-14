; =========================================================
; Game Engine Function: _ZN26CEventPotentialWalkIntoPedD0Ev
; Address            : 0x374320 - 0x37436A
; =========================================================

374320:  PUSH            {R4,R6,R7,LR}
374322:  ADD             R7, SP, #8
374324:  MOV             R4, R0
374326:  LDR             R0, =(_ZTV26CEventPotentialWalkIntoPed_ptr - 0x37432E)
374328:  MOV             R1, R4
37432A:  ADD             R0, PC; _ZTV26CEventPotentialWalkIntoPed_ptr
37432C:  LDR             R2, [R0]; `vtable for'CEventPotentialWalkIntoPed ...
37432E:  LDR.W           R0, [R1,#0x1C]!; CEntity **
374332:  ADDS            R2, #8
374334:  STR             R2, [R4]
374336:  CMP             R0, #0
374338:  IT NE
37433A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
37433E:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37434C)
374340:  MOV             R3, #0xF0F0F0F1
374348:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
37434A:  LDR             R0, [R0]; CPools::ms_pEventPool ...
37434C:  LDR             R0, [R0]; CPools::ms_pEventPool
37434E:  LDRD.W          R1, R2, [R0]
374352:  SUBS            R1, R4, R1
374354:  ASRS            R1, R1, #2
374356:  MULS            R1, R3
374358:  LDRB            R3, [R2,R1]
37435A:  ORR.W           R3, R3, #0x80
37435E:  STRB            R3, [R2,R1]
374360:  LDR             R2, [R0,#0xC]
374362:  CMP             R1, R2
374364:  IT LT
374366:  STRLT           R1, [R0,#0xC]
374368:  POP             {R4,R6,R7,PC}
