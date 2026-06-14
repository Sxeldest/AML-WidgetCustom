; =========================================================
; Game Engine Function: sub_14362E
; Address            : 0x14362E - 0x14365E
; =========================================================

14362E:  PUSH            {R4,R5,R7,LR}
143630:  ADD             R7, SP, #8
143632:  MOV             R4, R0
143634:  LDR.W           R0, [R0,#0x3B0]
143638:  LDR             R0, [R0,#0xC]
14363A:  CBZ             R0, loc_143644
14363C:  BL              sub_148820
143640:  BLX             j__ZdlPv; operator delete(void *)
143644:  MOV             R0, #0x23008; unsigned int
14364C:  BLX             j__Znwj; operator new(uint)
143650:  MOV             R5, R0
143652:  BL              sub_1487C6
143656:  LDR.W           R0, [R4,#0x3B0]
14365A:  STR             R5, [R0,#0xC]
14365C:  POP             {R4,R5,R7,PC}
