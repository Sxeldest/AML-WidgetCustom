; =========================================================
; Game Engine Function: sub_1435F8
; Address            : 0x1435F8 - 0x143624
; =========================================================

1435F8:  PUSH            {R4,R5,R7,LR}
1435FA:  ADD             R7, SP, #8
1435FC:  MOV             R4, R0
1435FE:  LDR.W           R0, [R0,#0x3B0]
143602:  LDR             R0, [R0,#0x14]
143604:  CBZ             R0, loc_14360E
143606:  BL              sub_14F7D8
14360A:  BLX             j__ZdlPv; operator delete(void *)
14360E:  MOV.W           R0, #0x14800; unsigned int
143612:  BLX             j__Znwj; operator new(uint)
143616:  MOV             R5, R0
143618:  BL              sub_14F738
14361C:  LDR.W           R0, [R4,#0x3B0]
143620:  STR             R5, [R0,#0x14]
143622:  POP             {R4,R5,R7,PC}
