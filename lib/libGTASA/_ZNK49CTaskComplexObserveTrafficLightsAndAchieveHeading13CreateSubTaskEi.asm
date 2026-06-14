; =========================================================
; Game Engine Function: _ZNK49CTaskComplexObserveTrafficLightsAndAchieveHeading13CreateSubTaskEi
; Address            : 0x4ECBD4 - 0x4ECC2A
; =========================================================

4ECBD4:  PUSH            {R4,R5,R7,LR}
4ECBD6:  ADD             R7, SP, #8
4ECBD8:  MOV             R5, R0
4ECBDA:  MOVS            R4, #0
4ECBDC:  CMP             R1, #0xE0
4ECBDE:  BEQ             loc_4ECC0A
4ECBE0:  MOVW            R0, #0x386
4ECBE4:  CMP             R1, R0
4ECBE6:  BNE             loc_4ECC26
4ECBE8:  MOVS            R0, #off_18; this
4ECBEA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ECBEE:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x4ECBF8)
4ECBF0:  MOV             R4, R0
4ECBF2:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x4ECBFA)
4ECBF4:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
4ECBF6:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
4ECBF8:  LDR             R3, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
4ECBFA:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
4ECBFC:  LDR             R1, [R5,#0x10]; float
4ECBFE:  LDR             R3, [R3]; float
4ECC00:  LDR             R2, [R0]; float
4ECC02:  MOV             R0, R4; this
4ECC04:  BLX             j__ZN25CTaskSimpleAchieveHeadingC2Efff; CTaskSimpleAchieveHeading::CTaskSimpleAchieveHeading(float,float,float)
4ECC08:  POP             {R4,R5,R7,PC}
4ECC0A:  MOVS            R0, #off_18; this
4ECC0C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ECC10:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4ECC14:  LDR             R1, =(_ZTV32CTaskComplexObserveTrafficLights_ptr - 0x4ECC1C)
4ECC16:  STRH            R4, [R0,#0x14]
4ECC18:  ADD             R1, PC; _ZTV32CTaskComplexObserveTrafficLights_ptr
4ECC1A:  STRD.W          R4, R4, [R0,#0xC]
4ECC1E:  MOV             R4, R0
4ECC20:  LDR             R1, [R1]; `vtable for'CTaskComplexObserveTrafficLights ...
4ECC22:  ADDS            R1, #8
4ECC24:  STR             R1, [R0]
4ECC26:  MOV             R0, R4
4ECC28:  POP             {R4,R5,R7,PC}
