; =========================================================
; Game Engine Function: _Z16RwFreeListCreateiii
; Address            : 0x1E4570 - 0x1E4584
; =========================================================

1E4570:  PUSH            {R7,LR}
1E4572:  MOV             R7, SP
1E4574:  SUB             SP, SP, #8
1E4576:  MOVS            R3, #0
1E4578:  STR             R3, [SP,#0x10+var_10]
1E457A:  MOVS            R3, #1
1E457C:  BL              _Z35RwFreeListCreateAndPreallocateSpaceiiiiP10RwFreeList_0; RwFreeListCreateAndPreallocateSpace(int,int,int,int,RwFreeList *)
1E4580:  ADD             SP, SP, #8
1E4582:  POP             {R7,PC}
