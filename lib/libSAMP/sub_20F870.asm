; =========================================================
; Game Engine Function: sub_20F870
; Address            : 0x20F870 - 0x20F8E4
; =========================================================

20F870:  PUSH            {R4-R7,LR}
20F872:  ADD             R7, SP, #0xC
20F874:  PUSH.W          {R11}
20F878:  SUB             SP, SP, #8
20F87A:  MOV             R4, R0
20F87C:  LDR             R0, =(__stack_chk_guard_ptr - 0x20F882)
20F87E:  ADD             R0, PC; __stack_chk_guard_ptr
20F880:  LDR             R0, [R0]; __stack_chk_guard
20F882:  LDR             R0, [R0]
20F884:  STR             R0, [SP,#0x18+var_14]
20F886:  MOV             R0, SP; attr
20F888:  BLX             pthread_mutexattr_init
20F88C:  MOV             R5, R0
20F88E:  CBNZ            R0, loc_20F8C8
20F890:  MOV             R0, SP
20F892:  MOVS            R1, #1
20F894:  BLX             pthread_mutexattr_settype
20F898:  CBZ             R0, loc_20F8A4
20F89A:  MOV             R5, R0
20F89C:  MOV             R0, SP; attr
20F89E:  BLX             pthread_mutexattr_destroy
20F8A2:  B               loc_20F8C8
20F8A4:  MOV             R6, SP
20F8A6:  MOV             R0, R4; mutex
20F8A8:  MOV             R1, R6; mutexattr
20F8AA:  BLX             pthread_mutex_init
20F8AE:  MOV             R5, R0
20F8B0:  MOV             R0, R6; attr
20F8B2:  BLX             pthread_mutexattr_destroy
20F8B6:  CBNZ            R5, loc_20F8C8
20F8B8:  MOV             R6, R0
20F8BA:  CBZ             R0, loc_20F8C6
20F8BC:  MOV             R0, R4; mutex
20F8BE:  BLX             DeleteCriticalSection_0
20F8C2:  MOV             R5, R6
20F8C4:  B               loc_20F8C8
20F8C6:  MOVS            R5, #0
20F8C8:  LDR             R0, [SP,#0x18+var_14]
20F8CA:  LDR             R1, =(__stack_chk_guard_ptr - 0x20F8D0)
20F8CC:  ADD             R1, PC; __stack_chk_guard_ptr
20F8CE:  LDR             R1, [R1]; __stack_chk_guard
20F8D0:  LDR             R1, [R1]
20F8D2:  CMP             R1, R0
20F8D4:  ITTTT EQ
20F8D6:  MOVEQ           R0, R5
20F8D8:  ADDEQ           SP, SP, #8
20F8DA:  POPEQ.W         {R11}
20F8DE:  POPEQ           {R4-R7,PC}
20F8E0:  BLX             __stack_chk_fail
