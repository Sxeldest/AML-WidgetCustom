; =========================================================
; Game Engine Function: _ZN49CTaskComplexObserveTrafficLightsAndAchieveHeadingC2Eif
; Address            : 0x4ECBA0 - 0x4ECBBC
; =========================================================

4ECBA0:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskComplexObserveTrafficLightsAndAchieveHeading::CTaskComplexObserveTrafficLightsAndAchieveHeading(int, float)'
4ECBA2:  ADD             R7, SP, #8
4ECBA4:  MOV             R4, R2
4ECBA6:  MOV             R5, R1
4ECBA8:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4ECBAC:  LDR             R1, =(_ZTV49CTaskComplexObserveTrafficLightsAndAchieveHeading_ptr - 0x4ECBB4)
4ECBAE:  STR             R5, [R0,#0xC]
4ECBB0:  ADD             R1, PC; _ZTV49CTaskComplexObserveTrafficLightsAndAchieveHeading_ptr
4ECBB2:  STR             R4, [R0,#0x10]
4ECBB4:  LDR             R1, [R1]; `vtable for'CTaskComplexObserveTrafficLightsAndAchieveHeading ...
4ECBB6:  ADDS            R1, #8
4ECBB8:  STR             R1, [R0]
4ECBBA:  POP             {R4,R5,R7,PC}
