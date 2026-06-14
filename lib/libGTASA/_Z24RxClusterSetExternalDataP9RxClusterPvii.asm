; =========================================================
; Game Engine Function: _Z24RxClusterSetExternalDataP9RxClusterPvii
; Address            : 0x1DE5BC - 0x1DE60A
; =========================================================

1DE5BC:  PUSH            {R4-R7,LR}
1DE5BE:  ADD             R7, SP, #0xC
1DE5C0:  PUSH.W          {R8}
1DE5C4:  MOV             R4, R0
1DE5C6:  MOV             R6, R1
1DE5C8:  LDR             R1, [R4,#4]
1DE5CA:  MOV             R5, R3
1DE5CC:  MOV             R8, R2
1DE5CE:  CMP             R1, #0
1DE5D0:  IT NE
1DE5D2:  CMPNE           R1, R6
1DE5D4:  BEQ             loc_1DE5EE
1DE5D6:  LDRH            R0, [R4]
1DE5D8:  ANDS.W          R0, R0, #2
1DE5DC:  BNE             loc_1DE5EE
1DE5DE:  LDR             R0, =(_rxHeapGlobal_ptr - 0x1DE5E4)
1DE5E0:  ADD             R0, PC; _rxHeapGlobal_ptr
1DE5E2:  LDR             R0, [R0]; _rxHeapGlobal
1DE5E4:  LDR             R0, [R0]
1DE5E6:  BLX             j__Z10RxHeapFreeP6RxHeapPv; RxHeapFree(RxHeap *,void *)
1DE5EA:  MOVS            R0, #0
1DE5EC:  STR             R0, [R4,#4]
1DE5EE:  STRH.W          R8, [R4,#2]
1DE5F2:  LDRH            R0, [R4]
1DE5F4:  STRD.W          R6, R6, [R4,#4]
1DE5F8:  ORR.W           R0, R0, #3
1DE5FC:  STRD.W          R5, R5, [R4,#0xC]
1DE600:  STRH            R0, [R4]
1DE602:  MOV             R0, R4
1DE604:  POP.W           {R8}
1DE608:  POP             {R4-R7,PC}
