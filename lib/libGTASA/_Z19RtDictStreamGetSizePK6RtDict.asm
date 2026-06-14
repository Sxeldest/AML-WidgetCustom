; =========================================================
; Game Engine Function: _Z19RtDictStreamGetSizePK6RtDict
; Address            : 0x1ED724 - 0x1ED766
; =========================================================

1ED724:  PUSH            {R4-R7,LR}
1ED726:  ADD             R7, SP, #0xC
1ED728:  PUSH.W          {R8}
1ED72C:  MOV             R8, R0
1ED72E:  LDR.W           R0, [R8,#4]
1ED732:  BLX             j__Z14_rwSListGetEndP7RwSList; _rwSListGetEnd(RwSList *)
1ED736:  MOV             R5, R0
1ED738:  LDR.W           R0, [R8,#4]
1ED73C:  BLX             j__Z16_rwSListGetBeginP7RwSList; _rwSListGetBegin(RwSList *)
1ED740:  MOV             R6, R0
1ED742:  MOVS            R4, #0x10
1ED744:  CMP             R6, R5
1ED746:  BEQ             loc_1ED75E
1ED748:  LDR.W           R1, [R8]
1ED74C:  LDR.W           R0, [R6],#4
1ED750:  LDR             R1, [R1,#0x24]
1ED752:  BLX             R1
1ED754:  ADD             R0, R4
1ED756:  CMP             R5, R6
1ED758:  ADD.W           R4, R0, #0xC
1ED75C:  BNE             loc_1ED748
1ED75E:  MOV             R0, R4
1ED760:  POP.W           {R8}
1ED764:  POP             {R4-R7,PC}
