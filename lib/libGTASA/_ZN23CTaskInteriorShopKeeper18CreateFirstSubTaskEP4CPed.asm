; =========================================================
; Game Engine Function: _ZN23CTaskInteriorShopKeeper18CreateFirstSubTaskEP4CPed
; Address            : 0x529410 - 0x529474
; =========================================================

529410:  PUSH            {R4-R7,LR}
529412:  ADD             R7, SP, #0xC
529414:  PUSH.W          {R11}
529418:  MOV             R4, R0
52941A:  MOV             R2, R4
52941C:  LDR.W           R0, [R2,#0x18]!
529420:  CBNZ            R0, loc_529430
529422:  LDR             R0, [R4,#0x10]
529424:  ADD.W           R3, R4, #0x1C
529428:  MOVS            R1, #0xA
52942A:  BLX             j__ZN15InteriorGroup_c16FindInteriorInfoEiPP14InteriorInfo_tPP10Interior_c; InteriorGroup_c::FindInteriorInfo(int,InteriorInfo_t **,Interior_c **)
52942E:  LDR             R0, [R4,#0x18]
529430:  MOVS            R5, #1
529432:  STRB            R5, [R0,#1]
529434:  LDRB            R0, [R4,#0x14]
529436:  CBZ             R0, loc_52944A
529438:  MOVS            R0, #dword_1C; this
52943A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52943E:  LDRD.W          R6, R4, [R4,#0x18]
529442:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
529446:  MOVS            R5, #0
529448:  B               loc_52945A
52944A:  MOVS            R0, #dword_1C; this
52944C:  STRB            R5, [R4,#0x14]
52944E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
529452:  LDRD.W          R6, R4, [R4,#0x18]
529456:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
52945A:  LDR             R1, =(_ZTV20CTaskInteriorUseInfo_ptr - 0x529466)
52945C:  MOVS            R2, #0
52945E:  STRD.W          R6, R4, [R0,#0xC]
529462:  ADD             R1, PC; _ZTV20CTaskInteriorUseInfo_ptr
529464:  STR             R2, [R0,#0x14]
529466:  STRB            R5, [R0,#0x18]
529468:  LDR             R1, [R1]; `vtable for'CTaskInteriorUseInfo ...
52946A:  ADDS            R1, #8
52946C:  STR             R1, [R0]
52946E:  POP.W           {R11}
529472:  POP             {R4-R7,PC}
