; =========================================================
; Game Engine Function: _ZNK24CTaskComplexGangFollower5CloneEv
; Address            : 0x51657C - 0x51665C
; =========================================================

51657C:  PUSH            {R4-R7,LR}
51657E:  ADD             R7, SP, #0xC
516580:  PUSH.W          {R8-R11}
516584:  SUB             SP, SP, #0xC
516586:  MOV             R4, R0
516588:  MOVS            R0, #dword_4C; this
51658A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51658E:  MOV             R5, R0
516590:  LDRB.W          R0, [R4,#0x3C]
516594:  STR             R0, [SP,#0x28+var_20]
516596:  LDR             R0, [R4,#0x38]
516598:  STR             R0, [SP,#0x28+var_24]
51659A:  MOV             R0, R5; this
51659C:  LDRD.W          R6, R11, [R4,#0x20]
5165A0:  LDR.W           R9, [R4,#0x28]
5165A4:  LDRD.W          R10, R8, [R4,#0xC]
5165A8:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5165AC:  STR.W           R10, [R5,#0xC]
5165B0:  CMP.W           R8, #0
5165B4:  STRD.W          R6, R11, [R5,#0x2C]
5165B8:  STRD.W          R6, R11, [R5,#0x20]
5165BC:  MOV.W           R6, #0
5165C0:  LDR             R0, =(_ZTV24CTaskComplexGangFollower_ptr - 0x5165CE)
5165C2:  STR.W           R9, [R5,#0x34]
5165C6:  STR.W           R9, [R5,#0x28]
5165CA:  ADD             R0, PC; _ZTV24CTaskComplexGangFollower_ptr
5165CC:  STRH.W          R6, [R5,#0x48]
5165D0:  LDR             R1, [SP,#0x28+var_24]
5165D2:  STR             R1, [R5,#0x38]
5165D4:  LDR             R1, [SP,#0x28+var_20]
5165D6:  LDR             R0, [R0]; `vtable for'CTaskComplexGangFollower ...
5165D8:  STRB.W          R1, [R5,#0x3C]
5165DC:  STRD.W          R6, R6, [R5,#0x40]
5165E0:  ADD.W           R0, R0, #8
5165E4:  LDRB.W          R1, [R5,#0x3D]
5165E8:  STR             R0, [R5]
5165EA:  ORR.W           R0, R1, #0x14
5165EE:  MOV             R1, R5
5165F0:  STRB.W          R0, [R5,#0x3D]
5165F4:  STR.W           R8, [R1,#0x10]!; CEntity **
5165F8:  BEQ             loc_51661E
5165FA:  MOV             R0, R8; this
5165FC:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
516600:  LDR             R6, [R5,#0x10]
516602:  LDR             R0, [R6,#0x14]
516604:  ADD.W           R1, R0, #0x30 ; '0'
516608:  CMP             R0, #0
51660A:  IT EQ
51660C:  ADDEQ           R1, R6, #4
51660E:  LDRB.W          R0, [R5,#0x3D]
516612:  VLDR            D16, [R1]
516616:  LDR             R1, [R1,#8]
516618:  STR             R1, [R5,#0x1C]
51661A:  VSTR            D16, [R5,#0x14]
51661E:  AND.W           R0, R0, #0xFC
516622:  STRB.W          R0, [R5,#0x3D]
516626:  MOVS            R0, #0; int
516628:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
51662C:  LDRB.W          R1, [R5,#0x3D]
516630:  CMP             R6, R0
516632:  BIC.W           R2, R1, #8
516636:  IT EQ
516638:  ORREQ.W         R2, R1, #8
51663C:  STRB.W          R2, [R5,#0x3D]
516640:  AND.W           R1, R2, #0xFB
516644:  LDRB.W          R0, [R4,#0x3D]
516648:  AND.W           R0, R0, #4
51664C:  ORRS            R0, R1
51664E:  STRB.W          R0, [R5,#0x3D]
516652:  MOV             R0, R5
516654:  ADD             SP, SP, #0xC
516656:  POP.W           {R8-R11}
51665A:  POP             {R4-R7,PC}
