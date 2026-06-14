; =========================================================
; Game Engine Function: _ZN13CEventHandler22ComputeSexyPedResponseEP6CEventP5CTaskS3_
; Address            : 0x38072C - 0x38076A
; =========================================================

38072C:  PUSH            {R4,R5,R7,LR}
38072E:  ADD             R7, SP, #8
380730:  SUB             SP, SP, #8
380732:  LDR             R5, [R1,#0x10]
380734:  MOV             R4, R0
380736:  CBZ             R5, loc_380766
380738:  LDRSH.W         R0, [R1,#0xA]
38073C:  CMP             R0, #0xC8
38073E:  BEQ             loc_380762
380740:  MOVW            R1, #0x4BC; unsigned int
380744:  CMP             R0, R1
380746:  BNE             loc_380766
380748:  MOVS            R0, #word_2C; this
38074A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38074E:  MOVW            R1, #0x7530
380752:  MOVS            R2, #0; int
380754:  STR             R1, [SP,#0x10+var_10]; int
380756:  MOV             R1, R5; CPed *
380758:  MOVW            R3, #0x2710; int
38075C:  BLX             j__ZN18CTaskGangHasslePedC2EP4CPediii; CTaskGangHasslePed::CTaskGangHasslePed(CPed *,int,int,int)
380760:  B               loc_380764
380762:  MOVS            R0, #0
380764:  STR             R0, [R4,#0x24]
380766:  ADD             SP, SP, #8
380768:  POP             {R4,R5,R7,PC}
