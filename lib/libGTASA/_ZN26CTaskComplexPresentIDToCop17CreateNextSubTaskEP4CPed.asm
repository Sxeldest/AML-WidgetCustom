; =========================================================
; Game Engine Function: _ZN26CTaskComplexPresentIDToCop17CreateNextSubTaskEP4CPed
; Address            : 0x511610 - 0x511664
; =========================================================

511610:  PUSH            {R4,R5,R7,LR}
511612:  ADD             R7, SP, #8
511614:  SUB             SP, SP, #0x10
511616:  MOV             R5, R0
511618:  MOV             R4, R1
51161A:  LDR             R0, [R5,#8]
51161C:  LDR             R1, [R0]
51161E:  LDR             R1, [R1,#0x14]
511620:  BLX             R1
511622:  MOVW            R1, #0x19D
511626:  CMP             R0, R1
511628:  BEQ             loc_51164E
51162A:  MOVW            R1, #0x386
51162E:  CMP             R0, R1
511630:  BNE             loc_51165E
511632:  MOVS            R0, #0
511634:  MOVS            R1, #0x45 ; 'E'; unsigned __int16
511636:  STRD.W          R0, R0, [SP,#0x18+var_18]; unsigned __int8
51163A:  MOVS            R2, #0; unsigned int
51163C:  STR             R0, [SP,#0x18+var_10]; unsigned __int8
51163E:  MOV             R0, R4; this
511640:  MOV.W           R3, #0x3F800000; float
511644:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
511648:  MOVW            R1, #0x19D
51164C:  B               loc_511652
51164E:  MOVW            R1, #0x516; int
511652:  MOV             R0, R5; this
511654:  MOV             R2, R4; CPed *
511656:  ADD             SP, SP, #0x10
511658:  POP.W           {R4,R5,R7,LR}
51165C:  B               _ZNK26CTaskComplexPresentIDToCop13CreateSubTaskEiPK4CPed; CTaskComplexPresentIDToCop::CreateSubTask(int,CPed const*)
51165E:  MOVS            R0, #0
511660:  ADD             SP, SP, #0x10
511662:  POP             {R4,R5,R7,PC}
