; =========================================================
; Game Engine Function: _ZN23CTaskComplexLeaveAnyCar18CreateFirstSubTaskEP4CPed
; Address            : 0x4F9600 - 0x4F969C
; =========================================================

4F9600:  PUSH            {R4-R7,LR}
4F9602:  ADD             R7, SP, #0xC
4F9604:  PUSH.W          {R8}
4F9608:  MOV             R5, R1
4F960A:  MOV             R6, R0
4F960C:  LDR.W           R0, [R5,#0x590]
4F9610:  CMP             R0, #0
4F9612:  ITT NE
4F9614:  LDRBNE.W        R0, [R5,#0x485]
4F9618:  MOVSNE.W        R0, R0,LSL#31
4F961C:  BNE             loc_4F9636
4F961E:  MOVS            R0, #byte_8; this
4F9620:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F9624:  MOV             R4, R0
4F9626:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4F962A:  LDR             R0, =(_ZTV15CTaskSimpleNone_ptr - 0x4F9630)
4F962C:  ADD             R0, PC; _ZTV15CTaskSimpleNone_ptr
4F962E:  LDR             R0, [R0]; `vtable for'CTaskSimpleNone ...
4F9630:  ADDS            R0, #8
4F9632:  STR             R0, [R4]
4F9634:  B               loc_4F9694
4F9636:  MOVS            R0, #dword_34; this
4F9638:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F963C:  LDRH.W          R8, [R6,#0x10]
4F9640:  MOV             R4, R0
4F9642:  LDR.W           R5, [R5,#0x590]
4F9646:  LDR             R6, [R6,#0xC]
4F9648:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F964C:  LDR             R0, =(_ZTV20CTaskComplexLeaveCar_ptr - 0x4F965A)
4F964E:  MOVS            R1, #0
4F9650:  STRD.W          R1, R6, [R4,#0x10]
4F9654:  MOVS            R2, #0xF
4F9656:  ADD             R0, PC; _ZTV20CTaskComplexLeaveCar_ptr
4F9658:  MOV.W           R3, #0x40800000
4F965C:  MOV.W           R6, #0x3F800000
4F9660:  ADD.W           R12, R4, #0x24 ; '$'
4F9664:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveCar ...
4F9666:  CMP             R5, #0
4F9668:  STRH.W          R8, [R4,#0x18]
4F966C:  STRB            R1, [R4,#0x1A]
4F966E:  ADD.W           R0, R0, #8
4F9672:  STR             R1, [R4,#0x1C]
4F9674:  STRB.W          R1, [R4,#0x20]
4F9678:  STRB.W          R1, [R4,#0x21]
4F967C:  STM.W           R12, {R2,R3,R6}
4F9680:  STRB.W          R1, [R4,#0x30]
4F9684:  MOV             R1, R4
4F9686:  STR             R0, [R4]
4F9688:  STR.W           R5, [R1,#0xC]!; CEntity **
4F968C:  BEQ             loc_4F9694
4F968E:  MOV             R0, R5; this
4F9690:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F9694:  MOV             R0, R4
4F9696:  POP.W           {R8}
4F969A:  POP             {R4-R7,PC}
