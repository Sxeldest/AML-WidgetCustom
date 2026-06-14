; =========================================================
; Game Engine Function: _ZN23CTaskComplexPartnerDeal18GetPartnerSequenceEv
; Address            : 0x534CBC - 0x534D38
; =========================================================

534CBC:  PUSH            {R4-R7,LR}
534CBE:  ADD             R7, SP, #0xC
534CC0:  PUSH.W          {R8}
534CC4:  SUB             SP, SP, #8
534CC6:  MOV             R5, R0
534CC8:  MOVS            R0, #dword_40; this
534CCA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
534CCE:  MOV             R4, R0
534CD0:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
534CD4:  MOVS            R0, #word_28; this
534CD6:  LDRB.W          R8, [R5,#0x58]
534CDA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
534CDE:  MOV             R6, R0
534CE0:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x534CEC)
534CE2:  LDR             R1, [R5,#0x38]; CEntity *
534CE4:  MOVW            R3, #0xD70A
534CE8:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
534CEA:  MOVT            R3, #0x3CA3; float
534CEE:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
534CF0:  LDR             R2, [R0]; float
534CF2:  MOV             R0, R6; this
534CF4:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
534CF8:  MOV             R0, R4; this
534CFA:  MOV             R1, R6; CTask *
534CFC:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
534D00:  MOVS            R0, #dword_20; this
534D02:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
534D06:  MOV             R5, R0
534D08:  MOVS            R0, #0
534D0A:  CMP.W           R8, #0
534D0E:  STR             R0, [SP,#0x18+var_18]
534D10:  ITE EQ
534D12:  MOVEQ.W         R2, #0x120
534D16:  MOVWNE          R2, #0x11F
534D1A:  MOV             R0, R5
534D1C:  MOVS            R1, #0x34 ; '4'
534D1E:  MOV.W           R3, #0x40800000
534D22:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
534D26:  MOV             R0, R4; this
534D28:  MOV             R1, R5; CTask *
534D2A:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
534D2E:  MOV             R0, R4
534D30:  ADD             SP, SP, #8
534D32:  POP.W           {R8}
534D36:  POP             {R4-R7,PC}
