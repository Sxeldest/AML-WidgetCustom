; =========================================================
; Game Engine Function: sub_88838
; Address            : 0x88838 - 0x888BC
; =========================================================

88838:  PUSH            {R4-R7,LR}
8883A:  ADD             R7, SP, #0xC
8883C:  PUSH.W          {R8-R11}
88840:  SUB             SP, SP, #0xC
88842:  MOV             R8, R0
88844:  LDR             R0, =(__stack_chk_guard_ptr - 0x88850)
88846:  ADD.W           R9, SP, #0x28+var_24
8884A:  MOV             R6, R3
8884C:  ADD             R0, PC; __stack_chk_guard_ptr
8884E:  MOV             R5, R2
88850:  MOVW            R10, #0xFFFE
88854:  MOV             R4, R8
88856:  LDR             R0, [R0]; __stack_chk_guard
88858:  LDR             R0, [R0]
8885A:  STR             R0, [SP,#0x28+var_20]
8885C:  ADD.W           R0, R8, R1,LSL#1
88860:  SUB.W           R11, R0, #2
88864:  CMP             R4, R11
88866:  BCS             loc_8888E
88868:  CBZ             R6, loc_8886E
8886A:  CMP             R5, R6
8886C:  BCS             loc_8888E
8886E:  LDRB            R0, [R5]
88870:  CBZ             R0, loc_8888E
88872:  MOV             R0, R9
88874:  MOV             R1, R5
88876:  MOV             R2, R6
88878:  BL              sub_88448
8887C:  LDR             R1, [SP,#0x28+var_24]
8887E:  ADD             R5, R0
88880:  SUBS            R2, R1, #1
88882:  CMP             R2, R10
88884:  IT LS
88886:  STRHLS.W        R1, [R4],#2
8888A:  CMP             R1, #0
8888C:  BNE             loc_88864
8888E:  MOVS            R0, #0
88890:  STRH            R0, [R4]
88892:  LDR             R0, [R7,#arg_0]
88894:  CMP             R0, #0
88896:  IT NE
88898:  STRNE           R5, [R0]
8889A:  LDR             R0, [SP,#0x28+var_20]
8889C:  LDR             R1, =(__stack_chk_guard_ptr - 0x888A2)
8889E:  ADD             R1, PC; __stack_chk_guard_ptr
888A0:  LDR             R1, [R1]; __stack_chk_guard
888A2:  LDR             R1, [R1]
888A4:  CMP             R1, R0
888A6:  ITTTT EQ
888A8:  SUBEQ.W         R0, R4, R8
888AC:  ASREQ           R0, R0, #1
888AE:  ADDEQ           SP, SP, #0xC
888B0:  POPEQ.W         {R8-R11}
888B4:  IT EQ
888B6:  POPEQ           {R4-R7,PC}
888B8:  BLX             __stack_chk_fail
