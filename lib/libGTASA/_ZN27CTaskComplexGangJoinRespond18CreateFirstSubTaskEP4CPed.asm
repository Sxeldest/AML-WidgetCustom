; =========================================================
; Game Engine Function: _ZN27CTaskComplexGangJoinRespond18CreateFirstSubTaskEP4CPed
; Address            : 0x51B23C - 0x51B26E
; =========================================================

51B23C:  PUSH            {R4,R6,R7,LR}
51B23E:  ADD             R7, SP, #8
51B240:  MOVS            R1, #0; unsigned int
51B242:  STR             R1, [R0,#0x10]
51B244:  MOVS            R0, #word_28; this
51B246:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51B24A:  MOV             R4, R0
51B24C:  MOVS            R0, #0; int
51B24E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
51B252:  LDR             R2, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x51B25C)
51B254:  MOV             R1, R0; CEntity *
51B256:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x51B25E)
51B258:  ADD             R2, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
51B25A:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
51B25C:  LDR             R3, [R2]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
51B25E:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
51B260:  LDR             R3, [R3]; float
51B262:  LDR             R2, [R0]; float
51B264:  MOV             R0, R4; this
51B266:  POP.W           {R4,R6,R7,LR}
51B26A:  B.W             sub_19C9F8
