; =========================================================
; Game Engine Function: _ZNK36CTaskComplexGoToCarDoorAndStandStill5CloneEv
; Address            : 0x50684C - 0x5068D0
; =========================================================

50684C:  PUSH            {R4-R7,LR}
50684E:  ADD             R7, SP, #0xC
506850:  PUSH.W          {R8,R9,R11}
506854:  VPUSH           {D8-D9}
506858:  MOV             R6, R0
50685A:  MOVS            R0, #dword_50; this
50685C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
506860:  MOV             R4, R0
506862:  ADD.W           R0, R6, #0x18
506866:  LDRD.W          R5, R8, [R6,#0xC]
50686A:  VLD1.32         {D8-D9}, [R0]
50686E:  MOV             R0, R4; this
506870:  LDR.W           R9, [R6,#0x44]
506874:  LDRB            R6, [R6,#0x14]
506876:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
50687A:  LDR             R0, =(_ZTV36CTaskComplexGoToCarDoorAndStandStill_ptr - 0x50688A)
50687C:  ADD.W           R1, R4, #0x18
506880:  VMOV.I32        Q8, #0
506884:  CMP             R5, #0
506886:  ADD             R0, PC; _ZTV36CTaskComplexGoToCarDoorAndStandStill_ptr
506888:  VST1.32         {D8-D9}, [R1]
50688C:  ADD.W           R1, R4, #0x34 ; '4'
506890:  LDR             R0, [R0]; `vtable for'CTaskComplexGoToCarDoorAndStandStill ...
506892:  VST1.32         {D16-D17}, [R1]
506896:  MOV.W           R1, #0
50689A:  ADD.W           R0, R0, #8
50689E:  STR.W           R8, [R4,#0x10]
5068A2:  STRB            R6, [R4,#0x14]
5068A4:  STRH            R1, [R4,#0x30]
5068A6:  STR.W           R9, [R4,#0x44]
5068AA:  STRH.W          R1, [R4,#0x48]
5068AE:  STR             R1, [R4,#0x4C]
5068B0:  STRD.W          R1, R1, [R4,#0x28]
5068B4:  MOV             R1, R4
5068B6:  STR             R0, [R4]
5068B8:  STR.W           R5, [R1,#0xC]!; CEntity **
5068BC:  ITT NE
5068BE:  MOVNE           R0, R5; this
5068C0:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5068C4:  MOV             R0, R4
5068C6:  VPOP            {D8-D9}
5068CA:  POP.W           {R8,R9,R11}
5068CE:  POP             {R4-R7,PC}
