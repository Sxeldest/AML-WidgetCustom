; =========================================================
; Game Engine Function: _ZN19CEventCarUpsideDownD0Ev
; Address            : 0x37734C - 0x377396
; =========================================================

37734C:  PUSH            {R4,R6,R7,LR}
37734E:  ADD             R7, SP, #8
377350:  MOV             R4, R0
377352:  LDR             R0, =(_ZTV19CEventCarUpsideDown_ptr - 0x37735A)
377354:  MOV             R1, R4
377356:  ADD             R0, PC; _ZTV19CEventCarUpsideDown_ptr
377358:  LDR             R2, [R0]; `vtable for'CEventCarUpsideDown ...
37735A:  LDR.W           R0, [R1,#0xC]!; CEntity **
37735E:  ADDS            R2, #8
377360:  STR             R2, [R4]
377362:  CMP             R0, #0
377364:  IT NE
377366:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37736A:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x377378)
37736C:  MOV             R3, #0xF0F0F0F1
377374:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
377376:  LDR             R0, [R0]; CPools::ms_pEventPool ...
377378:  LDR             R0, [R0]; CPools::ms_pEventPool
37737A:  LDRD.W          R1, R2, [R0]
37737E:  SUBS            R1, R4, R1
377380:  ASRS            R1, R1, #2
377382:  MULS            R1, R3
377384:  LDRB            R3, [R2,R1]
377386:  ORR.W           R3, R3, #0x80
37738A:  STRB            R3, [R2,R1]
37738C:  LDR             R2, [R0,#0xC]
37738E:  CMP             R1, R2
377390:  IT LT
377392:  STRLT           R1, [R0,#0xC]
377394:  POP             {R4,R6,R7,PC}
