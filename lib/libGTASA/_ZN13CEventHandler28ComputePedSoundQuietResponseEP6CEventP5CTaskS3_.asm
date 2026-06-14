; =========================================================
; Game Engine Function: _ZN13CEventHandler28ComputePedSoundQuietResponseEP6CEventP5CTaskS3_
; Address            : 0x382730 - 0x382782
; =========================================================

382730:  PUSH            {R4-R7,LR}
382732:  ADD             R7, SP, #0xC
382734:  PUSH.W          {R8}
382738:  MOV             R5, R1
38273A:  MOV             R8, R0
38273C:  LDR             R0, [R5]
38273E:  LDR             R1, [R0,#0x2C]
382740:  MOV             R0, R5
382742:  BLX             R1
382744:  CBZ             R0, loc_38277C
382746:  LDRSH.W         R0, [R5,#0xA]
38274A:  CMP             R0, #0xC8
38274C:  BEQ             loc_382776
38274E:  MOVW            R1, #0x3A7; unsigned int
382752:  CMP             R0, R1
382754:  BNE             loc_38277C
382756:  MOVS            R0, #dword_1C; this
382758:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38275C:  MOV             R4, R5
38275E:  MOV             R6, R0
382760:  LDR.W           R0, [R4],#0x1C
382764:  LDR             R1, [R0,#0x2C]
382766:  MOV             R0, R5
382768:  BLX             R1
38276A:  MOV             R2, R0; CEntity *
38276C:  MOV             R0, R6; this
38276E:  MOV             R1, R4; CVector *
382770:  BLX             j__ZN34CTaskComplexInvestigateDisturbanceC2ERK7CVectorP7CEntity; CTaskComplexInvestigateDisturbance::CTaskComplexInvestigateDisturbance(CVector const&,CEntity *)
382774:  B               loc_382778
382776:  MOVS            R6, #0
382778:  STR.W           R6, [R8,#0x24]
38277C:  POP.W           {R8}
382780:  POP             {R4-R7,PC}
