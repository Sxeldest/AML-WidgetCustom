; =========================================================
; Game Engine Function: _Z20RxClusterDestroyDataP9RxCluster
; Address            : 0x1DE6FC - 0x1DE724
; =========================================================

1DE6FC:  PUSH            {R4,R6,R7,LR}
1DE6FE:  ADD             R7, SP, #8
1DE700:  MOV             R4, R0
1DE702:  LDRB            R0, [R4]
1DE704:  LSLS            R0, R0, #0x1E
1DE706:  BMI             loc_1DE716
1DE708:  LDR             R0, =(_rxHeapGlobal_ptr - 0x1DE710)
1DE70A:  LDR             R1, [R4,#4]
1DE70C:  ADD             R0, PC; _rxHeapGlobal_ptr
1DE70E:  LDR             R0, [R0]; _rxHeapGlobal
1DE710:  LDR             R0, [R0]
1DE712:  BLX             j__Z10RxHeapFreeP6RxHeapPv; RxHeapFree(RxHeap *,void *)
1DE716:  MOVS            R0, #0
1DE718:  STR             R0, [R4,#4]
1DE71A:  STRD.W          R0, R0, [R4,#0xC]
1DE71E:  STRH            R0, [R4]
1DE720:  MOVS            R0, #0
1DE722:  POP             {R4,R6,R7,PC}
