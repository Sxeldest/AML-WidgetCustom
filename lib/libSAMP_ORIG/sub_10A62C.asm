; =========================================================
; Game Engine Function: sub_10A62C
; Address            : 0x10A62C - 0x10A718
; =========================================================

10A62C:  PUSH            {R4-R6,R10,R11,LR}
10A630:  ADD             R11, SP, #0x10
10A634:  SUB             SP, SP, #0x300
10A638:  ADD             R5, SP, #0x310+var_188
10A63C:  MOV             R4, R0
10A640:  MOV             R0, R5
10A644:  BL              sub_10C110
10A648:  MOV             R0, #0
10A64C:  MOV             R6, SP
10A650:  STR             R0, [R4,#0xC]
10A654:  MOV             R0, R6
10A658:  MOV             R1, R5
10A65C:  BL              sub_10AAA0
10A660:  SUB             R1, R11, #-var_38
10A664:  MOV             R0, R6
10A668:  BL              sub_10AD8C
10A66C:  CMP             R0, #0
10A670:  BEQ             loc_10A680
10A674:  MOV             R0, #3
10A678:  SUB             SP, R11, #0x10
10A67C:  POP             {R4-R6,R10,R11,PC}
10A680:  SUB             R6, R11, #-var_38
10A684:  MOV             R5, SP
10A688:  B               loc_10A6A0
10A68C:  MOV             R0, R5
10A690:  MOV             R1, R6
10A694:  BL              sub_10AD8C
10A698:  CMP             R0, #0
10A69C:  BNE             loc_10A674
10A6A0:  LDR             R3, [R11,#var_2C]
10A6A4:  CMP             R3, #0
10A6A8:  BEQ             loc_10A68C
10A6AC:  LDR             R0, [R11,#var_38]
10A6B0:  LDR             R1, [R11,#var_24]
10A6B4:  LDR             R2, [R11,#var_18]
10A6B8:  STR             R0, [R4,#0x48]
10A6BC:  MOV             R0, #0
10A6C0:  STR             R2, [R4,#0x4C]
10A6C4:  MOV             R2, R5
10A6C8:  STR             R1, [R4,#0x50]
10A6CC:  MOV             R1, R4
10A6D0:  BLX             R3
10A6D4:  CMP             R0, #8
10A6D8:  BEQ             loc_10A68C
10A6DC:  CMP             R0, #6
10A6E0:  BEQ             loc_10A6F8
10A6E4:  CMP             R0, #9
10A6E8:  BNE             loc_10A674
10A6EC:  MOV             R0, #9
10A6F0:  SUB             SP, R11, #0x10
10A6F4:  POP             {R4-R6,R10,R11,PC}
10A6F8:  ADD             R0, SP, #0x310+var_188
10A6FC:  MOV             R1, SP
10A700:  MOV             R2, R4
10A704:  MOV             R3, #0
10A708:  BL              sub_10A718
10A70C:  MOV             R0, #2
10A710:  SUB             SP, R11, #0x10
10A714:  POP             {R4-R6,R10,R11,PC}
