; =========================================================
; Game Engine Function: _Z19_rwStreamModuleOpenPvii
; Address            : 0x1E55CC - 0x1E561C
; =========================================================

1E55CC:  PUSH            {R4,R5,R7,LR}
1E55CE:  ADD             R7, SP, #8
1E55D0:  SUB             SP, SP, #8
1E55D2:  LDR             R2, =(dword_682978 - 0x1E55DC)
1E55D4:  MOV             R4, R0
1E55D6:  LDR             R0, =(dword_68297C - 0x1E55E0)
1E55D8:  ADD             R2, PC; dword_682978
1E55DA:  LDR             R5, =(dword_6BD0A8 - 0x1E55E4)
1E55DC:  ADD             R0, PC; dword_68297C
1E55DE:  LDR             R2, [R2]
1E55E0:  ADD             R5, PC; dword_6BD0A8
1E55E2:  LDR             R3, [R0]
1E55E4:  LDR             R0, =(unk_6BD084 - 0x1E55EE)
1E55E6:  STR             R1, [R5]
1E55E8:  MOV             R1, R2
1E55EA:  ADD             R0, PC; unk_6BD084
1E55EC:  STR             R0, [SP,#0x10+var_10]
1E55EE:  MOVS            R0, #0x24 ; '$'
1E55F0:  MOVS            R2, #4
1E55F2:  BLX             j__Z35RwFreeListCreateAndPreallocateSpaceiiiiP10RwFreeList; RwFreeListCreateAndPreallocateSpace(int,int,int,int,RwFreeList *)
1E55F6:  LDR             R1, =(RwEngineInstance_ptr - 0x1E55FE)
1E55F8:  LDR             R2, [R5]
1E55FA:  ADD             R1, PC; RwEngineInstance_ptr
1E55FC:  LDR             R1, [R1]; RwEngineInstance
1E55FE:  LDR             R3, [R1]
1E5600:  STR             R0, [R3,R2]
1E5602:  LDR             R0, [R1]
1E5604:  LDR             R0, [R0,R2]
1E5606:  CBZ             R0, loc_1E5614
1E5608:  LDR             R0, =(dword_6BD0AC - 0x1E560E)
1E560A:  ADD             R0, PC; dword_6BD0AC
1E560C:  LDR             R1, [R0]
1E560E:  ADDS            R1, #1
1E5610:  STR             R1, [R0]
1E5612:  B               loc_1E5616
1E5614:  MOVS            R4, #0
1E5616:  MOV             R0, R4
1E5618:  ADD             SP, SP, #8
1E561A:  POP             {R4,R5,R7,PC}
