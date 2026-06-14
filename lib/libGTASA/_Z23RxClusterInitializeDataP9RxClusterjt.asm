; =========================================================
; Game Engine Function: _Z23RxClusterInitializeDataP9RxClusterjt
; Address            : 0x1DE664 - 0x1DE6B6
; =========================================================

1DE664:  PUSH            {R4-R7,LR}
1DE666:  ADD             R7, SP, #0xC
1DE668:  PUSH.W          {R8}
1DE66C:  MOV             R5, R2
1DE66E:  MOV             R6, R1
1DE670:  MUL.W           R8, R5, R6
1DE674:  MOV             R4, R0
1DE676:  LDR             R1, [R4,#4]
1DE678:  CBZ             R1, loc_1DE68C
1DE67A:  LDRB            R0, [R4]
1DE67C:  LSLS            R0, R0, #0x1E
1DE67E:  BMI             loc_1DE68C
1DE680:  LDR             R0, =(_rxHeapGlobal_ptr - 0x1DE686)
1DE682:  ADD             R0, PC; _rxHeapGlobal_ptr
1DE684:  LDR             R0, [R0]; _rxHeapGlobal
1DE686:  LDR             R0, [R0]
1DE688:  BLX             j__Z10RxHeapFreeP6RxHeapPv; RxHeapFree(RxHeap *,void *)
1DE68C:  LDR             R0, =(_rxHeapGlobal_ptr - 0x1DE694)
1DE68E:  MOV             R1, R8
1DE690:  ADD             R0, PC; _rxHeapGlobal_ptr
1DE692:  LDR             R0, [R0]; _rxHeapGlobal
1DE694:  LDR             R0, [R0]
1DE696:  BLX             j__Z11RxHeapAllocP6RxHeapj; RxHeapAlloc(RxHeap *,uint)
1DE69A:  MOVS            R1, #0
1DE69C:  STRD.W          R0, R0, [R4,#4]
1DE6A0:  STRD.W          R6, R1, [R4,#0xC]
1DE6A4:  LDRH            R0, [R4]
1DE6A6:  STRH            R5, [R4,#2]
1DE6A8:  ORR.W           R0, R0, #1
1DE6AC:  STRH            R0, [R4]
1DE6AE:  MOV             R0, R4
1DE6B0:  POP.W           {R8}
1DE6B4:  POP             {R4-R7,PC}
