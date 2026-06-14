; =========================================================
; Game Engine Function: sub_143668
; Address            : 0x143668 - 0x143694
; =========================================================

143668:  PUSH            {R4,R5,R7,LR}
14366A:  ADD             R7, SP, #8
14366C:  MOV             R4, R0
14366E:  LDR.W           R0, [R0,#0x3B0]
143672:  LDR             R0, [R0,#0x10]
143674:  CBZ             R0, loc_14367E
143676:  BL              sub_1484DA
14367A:  BLX             j__ZdlPv; operator delete(void *)
14367E:  MOVW            R0, #0x138C; unsigned int
143682:  BLX             j__Znwj; operator new(uint)
143686:  MOV             R5, R0
143688:  BL              sub_1484C8
14368C:  LDR.W           R0, [R4,#0x3B0]
143690:  STR             R5, [R0,#0x10]
143692:  POP             {R4,R5,R7,PC}
