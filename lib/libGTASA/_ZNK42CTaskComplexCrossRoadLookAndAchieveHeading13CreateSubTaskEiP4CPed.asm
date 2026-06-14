; =========================================================
; Game Engine Function: _ZNK42CTaskComplexCrossRoadLookAndAchieveHeading13CreateSubTaskEiP4CPed
; Address            : 0x4ECCDC - 0x4ECD3E
; =========================================================

4ECCDC:  PUSH            {R4-R7,LR}
4ECCDE:  ADD             R7, SP, #0xC
4ECCE0:  PUSH.W          {R11}
4ECCE4:  SUB             SP, SP, #8
4ECCE6:  MOV             R6, R2
4ECCE8:  MOV             R5, R0
4ECCEA:  MOVS            R4, #0
4ECCEC:  CMP.W           R1, #0x190
4ECCF0:  BEQ             loc_4ECD1C
4ECCF2:  MOVW            R0, #0x386
4ECCF6:  CMP             R1, R0
4ECCF8:  BNE             loc_4ECD34
4ECCFA:  MOVS            R0, #off_18; this
4ECCFC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ECD00:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x4ECD0A)
4ECD02:  MOV             R4, R0
4ECD04:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x4ECD0C)
4ECD06:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
4ECD08:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
4ECD0A:  LDR             R3, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
4ECD0C:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
4ECD0E:  LDR             R1, [R5,#0x10]; float
4ECD10:  LDR             R3, [R3]; float
4ECD12:  LDR             R2, [R0]; float
4ECD14:  MOV             R0, R4; this
4ECD16:  BLX             j__ZN25CTaskSimpleAchieveHeadingC2Efff; CTaskSimpleAchieveHeading::CTaskSimpleAchieveHeading(float,float,float)
4ECD1A:  B               loc_4ECD34
4ECD1C:  MOVS            R0, #dword_20; this
4ECD1E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ECD22:  LDR.W           R1, [R6,#0x4E0]
4ECD26:  MOVS            R2, #4
4ECD28:  MOV.W           R3, #0x40800000
4ECD2C:  STR             R4, [SP,#0x18+var_18]
4ECD2E:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
4ECD32:  MOV             R4, R0
4ECD34:  MOV             R0, R4
4ECD36:  ADD             SP, SP, #8
4ECD38:  POP.W           {R11}
4ECD3C:  POP             {R4-R7,PC}
