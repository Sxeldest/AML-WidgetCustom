; =========================================================
; Game Engine Function: _ZN36CTaskComplexEnterCarAsPassengerTimed18CreateFirstSubTaskEP4CPed
; Address            : 0x4F7720 - 0x4F77D2
; =========================================================

4F7720:  PUSH            {R4-R7,LR}
4F7722:  ADD             R7, SP, #0xC
4F7724:  PUSH.W          {R8,R9,R11}
4F7728:  MOV             R4, R0
4F772A:  LDR             R0, [R4,#0xC]
4F772C:  CMP             R0, #0
4F772E:  BEQ             loc_4F77C8
4F7730:  LDR             R0, [R4,#0x10]
4F7732:  CMP             R0, #0
4F7734:  BLT             loc_4F7748
4F7736:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4F773E)
4F7738:  MOVS            R2, #1
4F773A:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4F773C:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4F773E:  LDR             R1, [R1]; unsigned int
4F7740:  STRB.W          R2, [R4,#0x28]
4F7744:  STRD.W          R1, R0, [R4,#0x20]
4F7748:  MOVS            R0, #dword_50; this
4F774A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F774E:  MOV             R5, R0
4F7750:  LDR             R6, [R4,#0xC]
4F7752:  LDR.W           R8, [R4,#0x14]
4F7756:  LDRB.W          R9, [R4,#0x18]
4F775A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F775E:  VMOV.I32        Q8, #0
4F7762:  LDR             R0, =(_ZTV20CTaskComplexEnterCar_ptr - 0x4F776E)
4F7764:  ADD.W           R1, R5, #0x14
4F7768:  CMP             R6, #0
4F776A:  ADD             R0, PC; _ZTV20CTaskComplexEnterCar_ptr
4F776C:  VST1.32         {D16-D17}, [R1]
4F7770:  MOV.W           R1, #6
4F7774:  STR             R1, [R5,#0x24]
4F7776:  MOV.W           R1, #0
4F777A:  LDR             R0, [R0]; `vtable for'CTaskComplexEnterCar ...
4F777C:  STRH            R1, [R5,#0x28]
4F777E:  STR             R1, [R5,#0x38]
4F7780:  ADD.W           R0, R0, #8
4F7784:  STRB.W          R1, [R5,#0x3C]
4F7788:  STR             R1, [R5,#0x40]
4F778A:  STRB.W          R1, [R5,#0x44]
4F778E:  MOVW            R1, #0
4F7792:  LDRB            R2, [R5,#0x10]
4F7794:  MOVT            R1, #0xBF80
4F7798:  STR             R1, [R5,#0x48]
4F779A:  MOV             R1, R5
4F779C:  STR             R0, [R5]
4F779E:  AND.W           R0, R2, #0xF0
4F77A2:  ORR.W           R0, R0, R9,LSL#3
4F77A6:  STRB            R0, [R5,#0x10]
4F77A8:  STR.W           R6, [R1,#0xC]!; CEntity **
4F77AC:  ITT NE
4F77AE:  MOVNE           R0, R6; this
4F77B0:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F77B4:  LDR             R0, =(_ZTV31CTaskComplexEnterCarAsPassenger_ptr - 0x4F77BE)
4F77B6:  STR.W           R8, [R5,#0x1C]
4F77BA:  ADD             R0, PC; _ZTV31CTaskComplexEnterCarAsPassenger_ptr
4F77BC:  LDR             R0, [R0]; `vtable for'CTaskComplexEnterCarAsPassenger ...
4F77BE:  ADDS            R0, #8
4F77C0:  STR             R0, [R5]
4F77C2:  LDR             R0, [R4,#0x1C]
4F77C4:  STR             R0, [R5,#0x24]
4F77C6:  B               loc_4F77CA
4F77C8:  MOVS            R5, #0
4F77CA:  MOV             R0, R5
4F77CC:  POP.W           {R8,R9,R11}
4F77D0:  POP             {R4-R7,PC}
