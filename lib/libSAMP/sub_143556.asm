; =========================================================
; Game Engine Function: sub_143556
; Address            : 0x143556 - 0x143582
; =========================================================

143556:  PUSH            {R4,R5,R7,LR}
143558:  ADD             R7, SP, #8
14355A:  MOV             R4, R0
14355C:  LDR.W           R0, [R0,#0x3B0]
143560:  LDR             R0, [R0,#0x1C]
143562:  CBZ             R0, loc_14356C
143564:  BL              sub_13E5A2
143568:  BLX             j__ZdlPv; operator delete(void *)
14356C:  MOVW            R0, #0x2328; unsigned int
143570:  BLX             j__Znwj; operator new(uint)
143574:  MOV             R5, R0
143576:  BL              sub_13E590
14357A:  LDR.W           R0, [R4,#0x3B0]
14357E:  STR             R5, [R0,#0x1C]
143580:  POP             {R4,R5,R7,PC}
