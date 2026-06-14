; =========================================================
; Game Engine Function: sub_FC90C
; Address            : 0xFC90C - 0xFC98C
; =========================================================

FC90C:  PUSH            {R4-R7,LR}
FC90E:  ADD             R7, SP, #0xC
FC910:  PUSH.W          {R8,R9,R11}
FC914:  SUB.W           SP, SP, #0x408
FC918:  MOV             R8, R0
FC91A:  LDR             R0, =(__stack_chk_guard_ptr - 0xFC922)
FC91C:  MOV             R6, R2
FC91E:  ADD             R0, PC; __stack_chk_guard_ptr
FC920:  LDR             R0, [R0]; __stack_chk_guard
FC922:  LDR             R0, [R0]
FC924:  STR.W           R0, [R7,#var_1C]
FC928:  BLX             __errno
FC92C:  LDR.W           R9, [R0]
FC930:  ADD             R4, SP, #0x420+buf
FC932:  MOV             R5, R0
FC934:  MOV             R0, R6; errnum
FC936:  MOV             R1, R4; buf
FC938:  MOV.W           R2, #0x400; n
FC93C:  BLX             strerror_r
FC940:  CBZ             R0, loc_FC950
FC942:  ADDS            R1, R0, #1
FC944:  IT EQ
FC946:  LDREQ           R0, [R5]
FC948:  CMP             R0, #0x16
FC94A:  BNE             loc_FC988
FC94C:  LDR             R4, =(byte_4FDB8 - 0xFC952)
FC94E:  ADD             R4, PC; byte_4FDB8
FC950:  LDRB            R0, [R4]
FC952:  CBNZ            R0, loc_FC95E
FC954:  STR             R6, [SP,#0x420+var_420]
FC956:  ADD             R4, SP, #0x420+buf
FC958:  MOV             R0, R4
FC95A:  BL              sub_FCF18
FC95E:  MOV             R0, R8; int
FC960:  MOV             R1, R4; s
FC962:  STR.W           R9, [R5]
FC966:  BL              sub_5FBF8
FC96A:  LDR.W           R0, [R7,#var_1C]
FC96E:  LDR             R1, =(__stack_chk_guard_ptr - 0xFC974)
FC970:  ADD             R1, PC; __stack_chk_guard_ptr
FC972:  LDR             R1, [R1]; __stack_chk_guard
FC974:  LDR             R1, [R1]
FC976:  CMP             R1, R0
FC978:  ITTT EQ
FC97A:  ADDEQ.W         SP, SP, #0x408
FC97E:  POPEQ.W         {R8,R9,R11}
FC982:  POPEQ           {R4-R7,PC}
FC984:  BLX             __stack_chk_fail
FC988:  BLX             abort
