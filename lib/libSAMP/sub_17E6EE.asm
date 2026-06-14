; =========================================================
; Game Engine Function: sub_17E6EE
; Address            : 0x17E6EE - 0x17E75C
; =========================================================

17E6EE:  PUSH            {R4-R7,LR}
17E6F0:  ADD             R7, SP, #0xC
17E6F2:  PUSH.W          {R8,R9,R11}
17E6F6:  MOV             R4, R0
17E6F8:  LDRD.W          R5, R0, [R0,#4]
17E6FC:  MOV             R8, R1
17E6FE:  CMP             R5, R0
17E700:  BNE             loc_17E74C
17E702:  MOVW            R1, #0xFFFE
17E706:  LSLS            R0, R5, #1
17E708:  MOVT            R1, #0x3FFF
17E70C:  CMP             R5, #0
17E70E:  IT EQ
17E710:  MOVEQ           R0, #0x10
17E712:  ANDS            R1, R0
17E714:  STR             R0, [R4,#8]
17E716:  SUBS            R1, R0, R1
17E718:  MOV.W           R0, R0,LSL#2
17E71C:  IT NE
17E71E:  MOVNE           R1, #1
17E720:  CMP             R1, #0
17E722:  IT NE
17E724:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
17E728:  BLX             j__Znaj; operator new[](uint)
17E72C:  LDR.W           R9, [R4]
17E730:  LSLS            R2, R5, #2; n
17E732:  MOV             R6, R0
17E734:  MOV             R1, R9; src
17E736:  BLX             j_memcpy
17E73A:  CMP.W           R9, #0
17E73E:  BEQ             loc_17E748
17E740:  MOV             R0, R9; void *
17E742:  BLX             j__ZdaPv; operator delete[](void *)
17E746:  LDR             R5, [R4,#4]
17E748:  STR             R6, [R4]
17E74A:  B               loc_17E74E
17E74C:  LDR             R6, [R4]
17E74E:  ADDS            R0, R5, #1
17E750:  STR.W           R8, [R6,R5,LSL#2]
17E754:  STR             R0, [R4,#4]
17E756:  POP.W           {R8,R9,R11}
17E75A:  POP             {R4-R7,PC}
