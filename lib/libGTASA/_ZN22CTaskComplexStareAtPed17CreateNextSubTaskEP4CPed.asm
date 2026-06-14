; =========================================================
; Game Engine Function: _ZN22CTaskComplexStareAtPed17CreateNextSubTaskEP4CPed
; Address            : 0x519960 - 0x5199E2
; =========================================================

519960:  PUSH            {R4,R6,R7,LR}
519962:  ADD             R7, SP, #8
519964:  VPUSH           {D8}
519968:  SUB             SP, SP, #8
51996A:  MOV             R4, R0
51996C:  LDR             R0, [R4,#8]
51996E:  LDR             R1, [R0]
519970:  LDR             R1, [R1,#0x14]
519972:  BLX             R1
519974:  CMP.W           R0, #0x398
519978:  BNE             loc_5199BA
51997A:  BLX             rand
51997E:  UXTH            R0, R0
519980:  VLDR            S2, =0.000015259
519984:  VMOV            S0, R0
519988:  MOVS            R0, #dword_20; this
51998A:  VCVT.F32.S32    S0, S0
51998E:  VMUL.F32        S0, S0, S2
519992:  VLDR            S2, =1000.0
519996:  VMUL.F32        S16, S0, S2
51999A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51999E:  VCVT.S32.F32    S0, S16
5199A2:  MOV.W           R1, #0x41000000
5199A6:  STR             R1, [SP,#0x18+var_18]; float
5199A8:  MOVS            R2, #0; bool
5199AA:  MOVS            R3, #0; bool
5199AC:  VMOV            R1, S0
5199B0:  ADD.W           R1, R1, #0x1F4; int
5199B4:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
5199B8:  B               loc_5199DA
5199BA:  MOVS            R0, #word_28; this
5199BC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5199C0:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x5199C8)
5199C2:  LDR             R2, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x5199CA)
5199C4:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
5199C6:  ADD             R2, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
5199C8:  LDR             R3, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
5199CA:  LDR.W           R12, [R2]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
5199CE:  LDR             R1, [R4,#0x10]; CEntity *
5199D0:  LDR             R2, [R3]; float
5199D2:  LDR.W           R3, [R12]; float
5199D6:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
5199DA:  ADD             SP, SP, #8
5199DC:  VPOP            {D8}
5199E0:  POP             {R4,R6,R7,PC}
