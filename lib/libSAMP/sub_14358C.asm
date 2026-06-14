; =========================================================
; Game Engine Function: sub_14358C
; Address            : 0x14358C - 0x1435B8
; =========================================================

14358C:  PUSH            {R4,R5,R7,LR}
14358E:  ADD             R7, SP, #8
143590:  MOV             R4, R0
143592:  LDR.W           R0, [R0,#0x3B0]
143596:  LDR             R0, [R0,#0x18]
143598:  CBZ             R0, loc_1435A2
14359A:  BL              sub_14F20C
14359E:  BLX             j__ZdlPv; operator delete(void *)
1435A2:  MOVW            R0, #0x2410; unsigned int
1435A6:  BLX             j__Znwj; operator new(uint)
1435AA:  MOV             R5, R0
1435AC:  BL              sub_14F138
1435B0:  LDR.W           R0, [R4,#0x3B0]
1435B4:  STR             R5, [R0,#0x18]
1435B6:  POP             {R4,R5,R7,PC}
