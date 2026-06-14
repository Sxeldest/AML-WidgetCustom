; =========================================================
; Game Engine Function: _ZN25CTaskComplexHitPedWithCar13CreateSubTaskEi
; Address            : 0x50B598 - 0x50B6B4
; =========================================================

50B598:  PUSH            {R4-R7,LR}
50B59A:  ADD             R7, SP, #0xC
50B59C:  PUSH.W          {R11}
50B5A0:  SUB             SP, SP, #0x10
50B5A2:  MOV             R5, R0
50B5A4:  MOVS            R4, #0
50B5A6:  CMP.W           R1, #0x1F6
50B5AA:  BGE             loc_50B5E6
50B5AC:  CMP             R1, #0xC8
50B5AE:  BEQ             loc_50B60E
50B5B0:  CMP             R1, #0xD0
50B5B2:  BEQ             loc_50B654
50B5B4:  CMP.W           R1, #0x19E
50B5B8:  BNE             loc_50B6AA
50B5BA:  MOVS            R0, #dword_20; this
50B5BC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50B5C0:  MOV             R4, R0
50B5C2:  LDR             R0, =(aHitfrombehind - 0x50B5CE); "HitFromBehind"
50B5C4:  MOVS            R1, #0
50B5C6:  MOV.W           R2, #0x19E
50B5CA:  ADD             R0, PC; "HitFromBehind"
50B5CC:  MOV.W           R3, #0x40800000
50B5D0:  STRD.W          R2, R0, [SP,#0x20+var_20]
50B5D4:  MOV             R0, R4
50B5D6:  STR             R1, [SP,#0x20+var_18]
50B5D8:  MOVS            R1, #0
50B5DA:  MOVS            R2, #0x28 ; '('
50B5DC:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
50B5E0:  LDR             R0, =(_ZTV24CTaskSimpleHitFromBehind_ptr - 0x50B5E6)
50B5E2:  ADD             R0, PC; _ZTV24CTaskSimpleHitFromBehind_ptr
50B5E4:  B               loc_50B61E
50B5E6:  BEQ             loc_50B626
50B5E8:  MOVW            R0, #0x1FB
50B5EC:  CMP             R1, R0
50B5EE:  BEQ             loc_50B666
50B5F0:  CMP.W           R1, #0x1FA
50B5F4:  BNE             loc_50B6AA
50B5F6:  MOVS            R0, #word_10; this
50B5F8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50B5FC:  MOV             R4, R0
50B5FE:  LDRD.W          R6, R5, [R5,#0xC]
50B602:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
50B606:  LDR             R0, =(_ZTV25CTaskSimpleKillPedWithCar_ptr - 0x50B60E)
50B608:  STR             R5, [R4,#0xC]
50B60A:  ADD             R0, PC; _ZTV25CTaskSimpleKillPedWithCar_ptr
50B60C:  B               loc_50B680
50B60E:  MOVS            R0, #byte_8; this
50B610:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50B614:  MOV             R4, R0
50B616:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
50B61A:  LDR             R0, =(_ZTV15CTaskSimpleNone_ptr - 0x50B620)
50B61C:  ADD             R0, PC; _ZTV15CTaskSimpleNone_ptr
50B61E:  LDR             R0, [R0]; `vtable for'CTaskSimpleHitFromBehind
50B620:  ADDS            R0, #8
50B622:  STR             R0, [R4]
50B624:  B               loc_50B6AA
50B626:  MOVS            R0, #dword_1C; this
50B628:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50B62C:  MOV             R4, R0
50B62E:  LDR             R6, [R5,#0xC]
50B630:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
50B634:  LDR             R0, =(_ZTV23CTaskComplexEvasiveStep_ptr - 0x50B63C)
50B636:  MOV             R1, R4
50B638:  ADD             R0, PC; _ZTV23CTaskComplexEvasiveStep_ptr
50B63A:  LDR             R0, [R0]; `vtable for'CTaskComplexEvasiveStep ...
50B63C:  ADDS            R0, #8
50B63E:  STR             R0, [R4]
50B640:  VLDR            D16, [R5,#0x1C]
50B644:  LDR             R0, [R5,#0x24]
50B646:  STR             R0, [R4,#0x14]
50B648:  VSTR            D16, [R4,#0xC]
50B64C:  STR.W           R6, [R1,#0x18]!
50B650:  CBNZ            R6, loc_50B68E
50B652:  B               loc_50B6AA
50B654:  LDR             R0, [R5,#0x14]
50B656:  SUBS            R0, #1
50B658:  CMP             R0, #2
50B65A:  BHI             loc_50B696
50B65C:  LDR             R1, =(unk_61E78C - 0x50B662)
50B65E:  ADD             R1, PC; unk_61E78C ; unsigned int
50B660:  LDR.W           R6, [R1,R0,LSL#2]
50B664:  B               loc_50B698
50B666:  MOVS            R0, #dword_14; this
50B668:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50B66C:  MOV             R4, R0
50B66E:  LDRD.W          R6, R5, [R5,#0xC]
50B672:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
50B676:  LDR             R0, =(_ZTV25CTaskSimpleHurtPedWithCar_ptr - 0x50B680)
50B678:  MOVS            R1, #0
50B67A:  STR             R5, [R4,#0xC]
50B67C:  ADD             R0, PC; _ZTV25CTaskSimpleHurtPedWithCar_ptr
50B67E:  STRB            R1, [R4,#0x10]
50B680:  LDR             R0, [R0]; `vtable for'CTaskSimpleKillPedWithCar
50B682:  MOV             R1, R4
50B684:  ADDS            R0, #8
50B686:  STR             R0, [R4]
50B688:  STR.W           R6, [R1,#8]!; CEntity **
50B68C:  CBZ             R6, loc_50B6AA
50B68E:  MOV             R0, R6; this
50B690:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50B694:  B               loc_50B6AA
50B696:  MOVS            R6, #0x1A
50B698:  MOVS            R0, #off_18; this
50B69A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50B69E:  LDR             R3, [R5,#0x18]
50B6A0:  MOV             R1, R6
50B6A2:  MOVS            R2, #0
50B6A4:  MOV             R4, R0
50B6A6:  BLX             j__ZN24CTaskComplexFallAndGetUpC2E11AnimationId12AssocGroupIdi; CTaskComplexFallAndGetUp::CTaskComplexFallAndGetUp(AnimationId,AssocGroupId,int)
50B6AA:  MOV             R0, R4
50B6AC:  ADD             SP, SP, #0x10
50B6AE:  POP.W           {R11}
50B6B2:  POP             {R4-R7,PC}
