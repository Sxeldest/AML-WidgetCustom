; =========================================================
; Game Engine Function: _Z20PipelinePluginAttachv
; Address            : 0x482434 - 0x48249A
; =========================================================

482434:  PUSH            {R4,R5,R7,LR}
482436:  ADD             R7, SP, #8
482438:  SUB             SP, SP, #8
48243A:  LDR             R2, =(sub_4824BC+1 - 0x48244A)
48243C:  MOVW            R5, #0xF2F3
482440:  LDR             R0, =(sub_4824D0+1 - 0x48244E)
482442:  MOVT            R5, #0x253
482446:  ADD             R2, PC; sub_4824BC ; void *(*)(void *, int, int)
482448:  MOV             R1, R5; unsigned int
48244A:  ADD             R0, PC; sub_4824D0
48244C:  STR             R0, [SP,#0x10+var_10]; void *(*)(void *, const void *, int, int)
48244E:  MOVS            R0, #4; int
482450:  MOVS            R3, #0; void *(*)(void *, int, int)
482452:  MOVS            R4, #0
482454:  BLX             j__Z22RpAtomicRegisterPluginijPFPvS_iiES1_PFS_S_PKviiE; RpAtomicRegisterPlugin(int,uint,void * (*)(void *,int,int),void * (*)(void *,int,int),void * (*)(void *,void const*,int,int))
482458:  LDR             R1, =(dword_6AF47C - 0x48245E)
48245A:  ADD             R1, PC; dword_6AF47C
48245C:  STR             R0, [R1]
48245E:  ADDS            R0, #1
482460:  BEQ             loc_482494
482462:  LDR             R1, =(sub_4824E0+1 - 0x48246E)
482464:  MOV             R0, R5
482466:  LDR             R2, =(sub_482500+1 - 0x482470)
482468:  LDR             R3, =(sub_482520+1 - 0x482472)
48246A:  ADD             R1, PC; sub_4824E0
48246C:  ADD             R2, PC; sub_482500
48246E:  ADD             R3, PC; sub_482520
482470:  BLX             j__Z28RpAtomicRegisterPluginStreamjPFP8RwStreamS0_iPviiEPFS0_S0_iPKviiEPFiS5_iiE; RpAtomicRegisterPluginStream(uint,RwStream * (*)(RwStream *,int,void *,int,int),RwStream * (*)(RwStream *,int,void const*,int,int),int (*)(void const*,int,int))
482474:  CMP             R0, #0
482476:  BLT             loc_482488
482478:  LDR             R0, =(dword_6AF47C - 0x482480)
48247A:  MOVS            R4, #0
48247C:  ADD             R0, PC; dword_6AF47C
48247E:  LDR             R0, [R0]
482480:  ADDS            R0, #1
482482:  IT NE
482484:  MOVNE           R4, #1
482486:  B               loc_482494
482488:  LDR             R0, =(dword_6AF47C - 0x482494)
48248A:  MOVS            R4, #0
48248C:  MOV.W           R1, #0xFFFFFFFF
482490:  ADD             R0, PC; dword_6AF47C
482492:  STR             R1, [R0]
482494:  MOV             R0, R4
482496:  ADD             SP, SP, #8
482498:  POP             {R4,R5,R7,PC}
