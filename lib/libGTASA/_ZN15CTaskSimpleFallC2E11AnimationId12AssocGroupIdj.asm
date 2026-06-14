; =========================================================
; Game Engine Function: _ZN15CTaskSimpleFallC2E11AnimationId12AssocGroupIdj
; Address            : 0x52B53C - 0x52B56C
; =========================================================

52B53C:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleFall::CTaskSimpleFall(AnimationId, AssocGroupId, unsigned int)'
52B53E:  ADD             R7, SP, #0xC
52B540:  PUSH.W          {R11}
52B544:  MOV             R4, R3
52B546:  MOV             R5, R2
52B548:  MOV             R6, R1
52B54A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52B54E:  LDR             R1, =(_ZTV15CTaskSimpleFall_ptr - 0x52B558)
52B550:  MOVS            R2, #0
52B552:  STRB            R2, [R0,#8]
52B554:  ADD             R1, PC; _ZTV15CTaskSimpleFall_ptr
52B556:  STRD.W          R6, R5, [R0,#0xC]
52B55A:  STR             R2, [R0,#0x14]
52B55C:  LDR             R1, [R1]; `vtable for'CTaskSimpleFall ...
52B55E:  STRD.W          R4, R4, [R0,#0x18]
52B562:  ADDS            R1, #8
52B564:  STR             R1, [R0]
52B566:  POP.W           {R11}
52B56A:  POP             {R4-R7,PC}
