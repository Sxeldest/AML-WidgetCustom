; =========================================================
; Game Engine Function: _ZN24CTaskComplexPartnerShove18GetPartnerSequenceEv
; Address            : 0x535B58 - 0x535BCE
; =========================================================

535B58:  PUSH            {R4-R7,LR}
535B5A:  ADD             R7, SP, #0xC
535B5C:  PUSH.W          {R11}
535B60:  SUB             SP, SP, #8
535B62:  MOV             R5, R0
535B64:  MOVS            R0, #dword_40; this
535B66:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
535B6A:  MOV             R4, R0
535B6C:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
535B70:  MOVS            R0, #word_28; this
535B72:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
535B76:  MOV             R6, R0
535B78:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x535B84)
535B7A:  LDR             R1, [R5,#0x38]; CEntity *
535B7C:  MOVW            R3, #0x126F
535B80:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
535B82:  MOVT            R3, #0x3A83; float
535B86:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
535B88:  LDR             R2, [R0]; float
535B8A:  MOV             R0, R6; this
535B8C:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
535B90:  MOV             R0, R4; this
535B92:  MOV             R1, R6; CTask *
535B94:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
535B98:  MOVS            R0, #dword_20; this
535B9A:  LDRB.W          R6, [R5,#0x58]
535B9E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
535BA2:  MOV             R5, R0
535BA4:  MOVS            R0, #0
535BA6:  CMP             R6, #0
535BA8:  STR             R0, [SP,#0x18+var_18]
535BAA:  ITE EQ
535BAC:  MOVEQ           R2, #0x8E
535BAE:  MOVNE           R2, #0xA4
535BB0:  MOV             R0, R5
535BB2:  MOVS            R1, #0
535BB4:  MOV.W           R3, #0x40800000
535BB8:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
535BBC:  MOV             R0, R4; this
535BBE:  MOV             R1, R5; CTask *
535BC0:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
535BC4:  MOV             R0, R4
535BC6:  ADD             SP, SP, #8
535BC8:  POP.W           {R11}
535BCC:  POP             {R4-R7,PC}
