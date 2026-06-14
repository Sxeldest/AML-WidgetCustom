; =========================================================
; Game Engine Function: _ZNK36CTaskComplexCarDriveMissionFleeScene5CloneEv
; Address            : 0x384464 - 0x384496
; =========================================================

384464:  PUSH            {R4,R6,R7,LR}
384466:  ADD             R7, SP, #8
384468:  SUB             SP, SP, #8
38446A:  MOV             R4, R0
38446C:  MOVS            R0, #word_2C; this
38446E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
384472:  MOVS            R2, #0
384474:  LDR             R1, [R4,#0xC]; CVehicle *
384476:  MOVT            R2, #0x4220
38447A:  MOVS            R3, #2
38447C:  STRD.W          R3, R2, [SP,#0x10+var_10]; int
384480:  MOVS            R2, #0; CEntity *
384482:  MOVS            R3, #1; int
384484:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
384488:  LDR             R1, =(_ZTV36CTaskComplexCarDriveMissionFleeScene_ptr - 0x38448E)
38448A:  ADD             R1, PC; _ZTV36CTaskComplexCarDriveMissionFleeScene_ptr
38448C:  LDR             R1, [R1]; `vtable for'CTaskComplexCarDriveMissionFleeScene ...
38448E:  ADDS            R1, #8
384490:  STR             R1, [R0]
384492:  ADD             SP, SP, #8
384494:  POP             {R4,R6,R7,PC}
