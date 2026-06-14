; =========================================================
; Game Engine Function: _ZN42CTaskComplexCrossRoadLookAndAchieveHeadingC2Eif
; Address            : 0x4ECCA8 - 0x4ECCC4
; =========================================================

4ECCA8:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskComplexCrossRoadLookAndAchieveHeading::CTaskComplexCrossRoadLookAndAchieveHeading(int, float)'
4ECCAA:  ADD             R7, SP, #8
4ECCAC:  MOV             R4, R2
4ECCAE:  MOV             R5, R1
4ECCB0:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4ECCB4:  LDR             R1, =(_ZTV42CTaskComplexCrossRoadLookAndAchieveHeading_ptr - 0x4ECCBC)
4ECCB6:  STR             R5, [R0,#0xC]
4ECCB8:  ADD             R1, PC; _ZTV42CTaskComplexCrossRoadLookAndAchieveHeading_ptr
4ECCBA:  STR             R4, [R0,#0x10]
4ECCBC:  LDR             R1, [R1]; `vtable for'CTaskComplexCrossRoadLookAndAchieveHeading ...
4ECCBE:  ADDS            R1, #8
4ECCC0:  STR             R1, [R0]
4ECCC2:  POP             {R4,R5,R7,PC}
