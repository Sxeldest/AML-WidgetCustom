; =========================================================
; Game Engine Function: _ZN25CEventPedCollisionWithPedD0Ev
; Address            : 0x3712FC - 0x371346
; =========================================================

3712FC:  PUSH            {R4,R6,R7,LR}
3712FE:  ADD             R7, SP, #8
371300:  MOV             R4, R0
371302:  LDR             R0, =(_ZTV25CEventPedCollisionWithPed_ptr - 0x37130A)
371304:  MOV             R1, R4
371306:  ADD             R0, PC; _ZTV25CEventPedCollisionWithPed_ptr
371308:  LDR             R2, [R0]; `vtable for'CEventPedCollisionWithPed ...
37130A:  LDR.W           R0, [R1,#0x10]!; CEntity **
37130E:  ADDS            R2, #8
371310:  STR             R2, [R4]
371312:  CMP             R0, #0
371314:  IT NE
371316:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
37131A:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x371328)
37131C:  MOV             R3, #0xF0F0F0F1
371324:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
371326:  LDR             R0, [R0]; CPools::ms_pEventPool ...
371328:  LDR             R0, [R0]; CPools::ms_pEventPool
37132A:  LDRD.W          R1, R2, [R0]
37132E:  SUBS            R1, R4, R1
371330:  ASRS            R1, R1, #2
371332:  MULS            R1, R3
371334:  LDRB            R3, [R2,R1]
371336:  ORR.W           R3, R3, #0x80
37133A:  STRB            R3, [R2,R1]
37133C:  LDR             R2, [R0,#0xC]
37133E:  CMP             R1, R2
371340:  IT LT
371342:  STRLT           R1, [R0,#0xC]
371344:  POP             {R4,R6,R7,PC}
