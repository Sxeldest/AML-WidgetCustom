; =========================================================
; Game Engine Function: _ZN28CTaskComplexSeekEntityAiming17CreateNextSubTaskEP4CPed
; Address            : 0x545670 - 0x54573C
; =========================================================

545670:  PUSH            {R4-R7,LR}
545672:  ADD             R7, SP, #0xC
545674:  PUSH.W          {R8}
545678:  SUB             SP, SP, #8
54567A:  MOV             R6, R0
54567C:  LDR             R0, [R6,#8]
54567E:  LDR             R1, [R0]
545680:  LDR             R1, [R1,#0x14]
545682:  BLX             R1
545684:  CMP             R0, #0xCB
545686:  BEQ             loc_5456B4
545688:  MOVW            R1, #0x38B; unsigned int
54568C:  CMP             R0, R1
54568E:  BNE             loc_545730
545690:  LDR             R0, [R6,#0xC]
545692:  CMP             R0, #0
545694:  BEQ             loc_545730
545696:  MOVS            R0, #dword_20; this
545698:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
54569C:  MOV             R4, R0
54569E:  MOV.W           R0, #0x41000000
5456A2:  STR             R0, [SP,#0x18+var_18]; float
5456A4:  MOV             R0, R4; this
5456A6:  MOV.W           R1, #0x7D0; int
5456AA:  MOVS            R2, #0; bool
5456AC:  MOVS            R3, #0; bool
5456AE:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
5456B2:  B               loc_545732
5456B4:  LDR             R0, [R6,#0xC]
5456B6:  MOVS            R5, #0
5456B8:  CBZ             R0, loc_545730
5456BA:  MOVS            R0, #dword_4C; this
5456BC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5456C0:  MOV             R4, R0
5456C2:  LDRD.W          R8, R6, [R6,#0xC]
5456C6:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5456CA:  LDR             R0, =(_ZTV32CEntitySeekPosCalculatorStandard_ptr - 0x5456DA)
5456CC:  MOVW            R2, #0xC350
5456D0:  LDR             R1, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr - 0x5456DE)
5456D2:  CMP.W           R8, #0
5456D6:  ADD             R0, PC; _ZTV32CEntitySeekPosCalculatorStandard_ptr
5456D8:  STR             R2, [R4,#0x10]
5456DA:  ADD             R1, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr
5456DC:  MOV.W           R2, #0x3E8
5456E0:  STRD.W          R2, R6, [R4,#0x14]
5456E4:  MOV.W           R2, #0x40000000
5456E8:  LDR             R0, [R0]; `vtable for'CEntitySeekPosCalculatorStandard ...
5456EA:  LDR             R1, [R1]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorStandard> ...
5456EC:  STRD.W          R2, R5, [R4,#0x1C]
5456F0:  ADD.W           R0, R0, #8
5456F4:  STR             R2, [R4,#0x24]
5456F6:  MOV.W           R2, #6
5456FA:  STRH            R5, [R4,#0x30]
5456FC:  ADD.W           R1, R1, #8
545700:  STRH            R5, [R4,#0x3C]
545702:  STRD.W          R5, R5, [R4,#0x28]
545706:  STRD.W          R5, R5, [R4,#0x34]
54570A:  LDRB.W          R3, [R4,#0x48]
54570E:  STR             R1, [R4]
545710:  MOV             R1, R4
545712:  STRD.W          R0, R2, [R4,#0x40]
545716:  AND.W           R0, R3, #0xF0
54571A:  ORR.W           R0, R0, #3
54571E:  STRB.W          R0, [R4,#0x48]
545722:  STR.W           R8, [R1,#0xC]!; CEntity **
545726:  ITT NE
545728:  MOVNE           R0, R8; this
54572A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
54572E:  B               loc_545732
545730:  MOVS            R4, #0
545732:  MOV             R0, R4
545734:  ADD             SP, SP, #8
545736:  POP.W           {R8}
54573A:  POP             {R4-R7,PC}
