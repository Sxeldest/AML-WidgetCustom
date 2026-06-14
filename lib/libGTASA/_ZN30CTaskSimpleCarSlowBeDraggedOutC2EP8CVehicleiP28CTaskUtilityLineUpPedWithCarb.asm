; =========================================================
; Game Engine Function: _ZN30CTaskSimpleCarSlowBeDraggedOutC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCarb
; Address            : 0x504624 - 0x50466E
; =========================================================

504624:  PUSH            {R4-R7,LR}
504626:  ADD             R7, SP, #0xC
504628:  PUSH.W          {R8}
50462C:  MOV             R8, R3
50462E:  MOV             R6, R2
504630:  MOV             R5, R1
504632:  MOV             R4, R0
504634:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
504638:  LDR             R0, =(_ZTV30CTaskSimpleCarSlowBeDraggedOut_ptr - 0x504644)
50463A:  MOVS            R2, #0
50463C:  LDR             R1, [R7,#arg_0]
50463E:  CMP             R5, #0
504640:  ADD             R0, PC; _ZTV30CTaskSimpleCarSlowBeDraggedOut_ptr
504642:  STRB            R2, [R4,#8]
504644:  STR             R2, [R4,#0xC]
504646:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarSlowBeDraggedOut ...
504648:  STR             R6, [R4,#0x14]
50464A:  STRB            R1, [R4,#0x18]
50464C:  MOV             R1, R4
50464E:  STRB            R2, [R4,#0x19]
504650:  ADD.W           R0, R0, #8
504654:  STR.W           R8, [R4,#0x1C]
504658:  STR             R0, [R4]
50465A:  STR.W           R5, [R1,#0x10]!; CEntity **
50465E:  ITT NE
504660:  MOVNE           R0, R5; this
504662:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
504666:  MOV             R0, R4
504668:  POP.W           {R8}
50466C:  POP             {R4-R7,PC}
