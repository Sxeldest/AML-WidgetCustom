; =========================================================
; Game Engine Function: sub_17D5BA
; Address            : 0x17D5BA - 0x17D628
; =========================================================

17D5BA:  PUSH            {R4-R7,LR}
17D5BC:  ADD             R7, SP, #0xC
17D5BE:  PUSH.W          {R8}
17D5C2:  CMP             R1, #1
17D5C4:  BLT             loc_17D622
17D5C6:  MOV             R4, R0
17D5C8:  LDR             R0, [R0]
17D5CA:  ADD             R0, R1
17D5CC:  CMP             R0, #1
17D5CE:  BLT             loc_17D61A
17D5D0:  LDR             R6, [R4,#4]
17D5D2:  SUBS            R1, R0, #1
17D5D4:  SUBS            R2, R6, #1
17D5D6:  ASRS            R2, R2, #3
17D5D8:  CMP.W           R2, R1,LSR#3
17D5DC:  BGE             loc_17D61A
17D5DE:  MOVS            R1, #7
17D5E0:  LDR             R5, [R4,#0xC]
17D5E2:  ADD.W           R1, R1, R0,LSL#1
17D5E6:  ADD.W           R2, R4, #0x11
17D5EA:  MOV.W           R8, R0,LSL#1
17D5EE:  CMP             R5, R2
17D5F0:  MOV.W           R1, R1,ASR#3; size
17D5F4:  BEQ             loc_17D600
17D5F6:  MOV             R0, R5; ptr
17D5F8:  BLX             realloc
17D5FC:  STR             R0, [R4,#0xC]
17D5FE:  B               loc_17D618
17D600:  CMP.W           R0, #0x400
17D604:  BLS             loc_17D618
17D606:  MOV             R0, R1; size
17D608:  BLX             malloc
17D60C:  ADDS            R1, R6, #7
17D60E:  STR             R0, [R4,#0xC]
17D610:  ASRS            R2, R1, #3; n
17D612:  MOV             R1, R5; src
17D614:  BLX             j_memcpy
17D618:  MOV             R0, R8
17D61A:  LDR             R1, [R4,#4]
17D61C:  CMP             R0, R1
17D61E:  IT GT
17D620:  STRGT           R0, [R4,#4]
17D622:  POP.W           {R8}
17D626:  POP             {R4-R7,PC}
