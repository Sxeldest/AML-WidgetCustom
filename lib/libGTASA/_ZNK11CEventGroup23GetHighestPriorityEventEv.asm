; =========================================================
; Game Engine Function: _ZNK11CEventGroup23GetHighestPriorityEventEv
; Address            : 0x36F824 - 0x36F89A
; =========================================================

36F824:  PUSH            {R4-R7,LR}
36F826:  ADD             R7, SP, #0xC
36F828:  PUSH.W          {R8-R11}
36F82C:  SUB             SP, SP, #4
36F82E:  MOV             R10, R0
36F830:  LDR.W           R0, [R10,#8]
36F834:  CMP             R0, #1
36F836:  BLT             loc_36F88C
36F838:  ADD.W           R9, R10, #0xC
36F83C:  MOV.W           R8, #0
36F840:  MOV.W           R11, #0xFFFFFFFF
36F844:  MOVS            R4, #0
36F846:  LDR.W           R6, [R9,R4,LSL#2]
36F84A:  LDR             R0, [R6]
36F84C:  LDR             R1, [R0,#0xC]
36F84E:  MOV             R0, R6
36F850:  BLX             R1
36F852:  MOV             R5, R0
36F854:  LDR             R0, [R6]
36F856:  LDR             R1, [R0,#8]
36F858:  MOV             R0, R6
36F85A:  BLX             R1
36F85C:  CMP             R0, #0x20 ; ' '
36F85E:  BNE             loc_36F866
36F860:  CMP             R5, R11
36F862:  BGT             loc_36F86A
36F864:  B               loc_36F880
36F866:  CMP             R5, R11
36F868:  BLT             loc_36F880
36F86A:  LDR.W           R0, [R9,R4,LSL#2]
36F86E:  LDR.W           R1, [R10,#4]
36F872:  LDR             R2, [R0]
36F874:  LDR             R2, [R2,#0x18]
36F876:  BLX             R2
36F878:  CMP             R0, #0
36F87A:  ITT NE
36F87C:  MOVNE           R8, R6
36F87E:  MOVNE           R11, R5
36F880:  LDR.W           R0, [R10,#8]
36F884:  ADDS            R4, #1
36F886:  CMP             R4, R0
36F888:  BLT             loc_36F846
36F88A:  B               loc_36F890
36F88C:  MOV.W           R8, #0
36F890:  MOV             R0, R8
36F892:  ADD             SP, SP, #4
36F894:  POP.W           {R8-R11}
36F898:  POP             {R4-R7,PC}
