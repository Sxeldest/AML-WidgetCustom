; =========================================================
; Game Engine Function: _ZN49CTaskComplexObserveTrafficLightsAndAchieveHeading18CreateFirstSubTaskEP4CPed
; Address            : 0x4ECC74 - 0x4ECC9A
; =========================================================

4ECC74:  PUSH            {R4,R5,R7,LR}
4ECC76:  ADD             R7, SP, #8
4ECC78:  MOV             R5, R0
4ECC7A:  MOVS            R0, #off_18; this
4ECC7C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ECC80:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x4ECC88)
4ECC82:  LDR             R2, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x4ECC8A)
4ECC84:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
4ECC86:  ADD             R2, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
4ECC88:  LDR             R3, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
4ECC8A:  LDR             R4, [R2]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
4ECC8C:  LDR             R1, [R5,#0x10]; float
4ECC8E:  LDR             R2, [R3]; float
4ECC90:  LDR             R3, [R4]; float
4ECC92:  POP.W           {R4,R5,R7,LR}
4ECC96:  B.W             sub_19DE8C
