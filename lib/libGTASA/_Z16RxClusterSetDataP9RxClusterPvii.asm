; =========================================================
; Game Engine Function: _Z16RxClusterSetDataP9RxClusterPvii
; Address            : 0x1DE610 - 0x1DE65E
; =========================================================

1DE610:  PUSH            {R4-R7,LR}
1DE612:  ADD             R7, SP, #0xC
1DE614:  PUSH.W          {R8}
1DE618:  MOV             R4, R0
1DE61A:  MOV             R6, R1
1DE61C:  LDR             R1, [R4,#4]
1DE61E:  MOV             R5, R3
1DE620:  MOV             R8, R2
1DE622:  CMP             R1, #0
1DE624:  IT NE
1DE626:  CMPNE           R1, R6
1DE628:  BEQ             loc_1DE642
1DE62A:  LDRH            R0, [R4]
1DE62C:  ANDS.W          R0, R0, #2
1DE630:  BNE             loc_1DE642
1DE632:  LDR             R0, =(_rxHeapGlobal_ptr - 0x1DE638)
1DE634:  ADD             R0, PC; _rxHeapGlobal_ptr
1DE636:  LDR             R0, [R0]; _rxHeapGlobal
1DE638:  LDR             R0, [R0]
1DE63A:  BLX             j__Z10RxHeapFreeP6RxHeapPv; RxHeapFree(RxHeap *,void *)
1DE63E:  MOVS            R0, #0
1DE640:  STR             R0, [R4,#4]
1DE642:  STRH.W          R8, [R4,#2]
1DE646:  LDRH            R0, [R4]
1DE648:  STRD.W          R6, R6, [R4,#4]
1DE64C:  ORR.W           R0, R0, #1
1DE650:  STRD.W          R5, R5, [R4,#0xC]
1DE654:  STRH            R0, [R4]
1DE656:  MOV             R0, R4
1DE658:  POP.W           {R8}
1DE65C:  POP             {R4-R7,PC}
