; =========================================================
; Game Engine Function: _ZN19CEventVehicleThreatD0Ev
; Address            : 0x375358 - 0x3753A2
; =========================================================

375358:  PUSH            {R4,R6,R7,LR}
37535A:  ADD             R7, SP, #8
37535C:  MOV             R4, R0
37535E:  LDR             R0, =(_ZTV19CEventVehicleThreat_ptr - 0x375366)
375360:  MOV             R1, R4
375362:  ADD             R0, PC; _ZTV19CEventVehicleThreat_ptr
375364:  LDR             R2, [R0]; `vtable for'CEventVehicleThreat ...
375366:  LDR.W           R0, [R1,#0x10]!; CEntity **
37536A:  ADDS            R2, #8
37536C:  STR             R2, [R4]
37536E:  CMP             R0, #0
375370:  IT NE
375372:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
375376:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x375384)
375378:  MOV             R3, #0xF0F0F0F1
375380:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
375382:  LDR             R0, [R0]; CPools::ms_pEventPool ...
375384:  LDR             R0, [R0]; CPools::ms_pEventPool
375386:  LDRD.W          R1, R2, [R0]
37538A:  SUBS            R1, R4, R1
37538C:  ASRS            R1, R1, #2
37538E:  MULS            R1, R3
375390:  LDRB            R3, [R2,R1]
375392:  ORR.W           R3, R3, #0x80
375396:  STRB            R3, [R2,R1]
375398:  LDR             R2, [R0,#0xC]
37539A:  CMP             R1, R2
37539C:  IT LT
37539E:  STRLT           R1, [R0,#0xC]
3753A0:  POP             {R4,R6,R7,PC}
