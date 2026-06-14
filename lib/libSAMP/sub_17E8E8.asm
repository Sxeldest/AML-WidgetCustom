; =========================================================
; Game Engine Function: sub_17E8E8
; Address            : 0x17E8E8 - 0x17E924
; =========================================================

17E8E8:  PUSH            {R4,R5,R7,LR}
17E8EA:  ADD             R7, SP, #8
17E8EC:  MOV             R4, R0
17E8EE:  LDR             R0, =(_ZTV9RakClient - 0x17E8F8); `vtable for'RakClient ...
17E8F0:  MOVW            R5, #0x2E50
17E8F4:  ADD             R0, PC; `vtable for'RakClient
17E8F6:  ADD.W           R1, R0, #0x198
17E8FA:  ADDS            R0, #8
17E8FC:  STR.W           R1, [R4,#0x9D0]
17E900:  STR             R0, [R4]
17E902:  ADDS            R0, R4, R5
17E904:  BL              sub_17D542
17E908:  SUB.W           R5, R5, #0x124
17E90C:  CMP.W           R5, #0x9D0
17E910:  BNE             loc_17E902
17E912:  ADDW            R0, R4, #0x9D4
17E916:  BL              sub_17D542
17E91A:  MOV             R0, R4
17E91C:  POP.W           {R4,R5,R7,LR}
17E920:  B.W             sub_17FA34
