; =========================================================
; Game Engine Function: sub_21D6F8
; Address            : 0x21D6F8 - 0x21D75C
; =========================================================

21D6F8:  PUSH            {R4,R6,R7,LR}
21D6FA:  ADD             R7, SP, #8
21D6FC:  SUB             SP, SP, #8
21D6FE:  MOV             R4, R0
21D700:  LDR             R0, =(dword_6BD630 - 0x21D706)
21D702:  ADD             R0, PC; dword_6BD630
21D704:  STR             R1, [R0]
21D706:  BLX             j__Z20_rpWorldPipelineOpenv; _rpWorldPipelineOpen(void)
21D70A:  CBZ             R0, loc_21D754
21D70C:  LDR             R0, =(unk_6BD60C - 0x21D718)
21D70E:  MOVS            R1, #8
21D710:  MOVS            R2, #4
21D712:  MOVS            R3, #1
21D714:  ADD             R0, PC; unk_6BD60C
21D716:  STR             R0, [SP,#0x10+var_10]
21D718:  MOVS            R0, #0x10
21D71A:  BLX             j__Z35RwFreeListCreateAndPreallocateSpaceiiiiP10RwFreeList; RwFreeListCreateAndPreallocateSpace(int,int,int,int,RwFreeList *)
21D71E:  LDR             R1, =(RwEngineInstance_ptr - 0x21D726)
21D720:  LDR             R2, =(dword_6BD630 - 0x21D728)
21D722:  ADD             R1, PC; RwEngineInstance_ptr
21D724:  ADD             R2, PC; dword_6BD630
21D726:  LDR             R3, [R1]; RwEngineInstance
21D728:  LDR             R1, [R2]
21D72A:  LDR             R2, [R3]
21D72C:  STR             R0, [R2,R1]
21D72E:  LDR             R0, [R3]
21D730:  LDR             R2, [R0,R1]
21D732:  CBZ             R2, loc_21D754
21D734:  LDR             R2, =(RwEngineInstance_ptr - 0x21D73E)
21D736:  ADD             R0, R1
21D738:  ADDS            R3, R0, #4
21D73A:  ADD             R2, PC; RwEngineInstance_ptr
21D73C:  STR             R3, [R0,#4]
21D73E:  LDR             R2, [R2]; RwEngineInstance
21D740:  LDR             R0, [R2]
21D742:  LDR             R2, =(dword_6BD634 - 0x21D74A)
21D744:  ADD             R0, R1
21D746:  ADD             R2, PC; dword_6BD634
21D748:  ADDS            R1, R0, #4
21D74A:  STR             R1, [R0,#8]
21D74C:  LDR             R0, [R2]
21D74E:  ADDS            R0, #1
21D750:  STR             R0, [R2]
21D752:  B               loc_21D756
21D754:  MOVS            R4, #0
21D756:  MOV             R0, R4
21D758:  ADD             SP, SP, #8
21D75A:  POP             {R4,R6,R7,PC}
