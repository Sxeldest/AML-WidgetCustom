; =========================================================
; Game Engine Function: _Z19RtDictForAllEntriesPK6RtDictPFPvS2_S2_ES2_
; Address            : 0x1ED5E8 - 0x1ED622
; =========================================================

1ED5E8:  PUSH            {R4-R7,LR}
1ED5EA:  ADD             R7, SP, #0xC
1ED5EC:  PUSH.W          {R8,R9,R11}
1ED5F0:  MOV             R8, R0
1ED5F2:  MOV             R9, R2
1ED5F4:  LDR.W           R0, [R8,#4]
1ED5F8:  MOV             R6, R1
1ED5FA:  BLX             j__Z14_rwSListGetEndP7RwSList; _rwSListGetEnd(RwSList *)
1ED5FE:  MOV             R5, R0
1ED600:  LDR.W           R0, [R8,#4]
1ED604:  BLX             j__Z16_rwSListGetBeginP7RwSList; _rwSListGetBegin(RwSList *)
1ED608:  MOV             R4, R0
1ED60A:  CMP             R5, R4
1ED60C:  BEQ             loc_1ED61A
1ED60E:  LDR.W           R0, [R4],#4
1ED612:  MOV             R1, R9
1ED614:  BLX             R6
1ED616:  CMP             R0, #0
1ED618:  BNE             loc_1ED60A
1ED61A:  MOV             R0, R8
1ED61C:  POP.W           {R8,R9,R11}
1ED620:  POP             {R4-R7,PC}
