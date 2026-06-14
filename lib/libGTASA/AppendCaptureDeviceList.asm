; =========================================================
; Game Engine Function: AppendCaptureDeviceList
; Address            : 0x2487F8 - 0x24887A
; =========================================================

2487F8:  PUSH            {R4-R7,LR}
2487FA:  ADD             R7, SP, #0xC
2487FC:  PUSH.W          {R8,R9,R11}
248800:  MOV             R4, R0
248802:  BLX             strlen
248806:  MOV             R5, R0
248808:  CBZ             R5, loc_24884E
24880A:  LDR             R0, =(dword_6D6334 - 0x248812)
24880C:  LDR             R1, =(dword_6D6330 - 0x248814)
24880E:  ADD             R0, PC; dword_6D6334
248810:  ADD             R1, PC; dword_6D6330
248812:  LDR             R2, [R0]
248814:  LDR             R0, [R1]; ptr
248816:  ADDS            R1, R5, R2
248818:  ADDS            R1, #2; size
24881A:  BLX             realloc
24881E:  MOV             R6, R0
248820:  CMP             R6, #0
248822:  BEQ             loc_248854
248824:  LDR.W           R8, =(dword_6D6334 - 0x248832)
248828:  ADDS            R5, #1
24882A:  LDR             R0, =(dword_6D6330 - 0x248836)
24882C:  MOV             R1, R4; void *
24882E:  ADD             R8, PC; dword_6D6334
248830:  MOV             R2, R5; size_t
248832:  ADD             R0, PC; dword_6D6330
248834:  LDR.W           R9, [R8]
248838:  STR             R6, [R0]
24883A:  ADD.W           R0, R6, R9; void *
24883E:  BLX             memcpy_1
248842:  ADD.W           R0, R9, R5
248846:  MOVS            R1, #0
248848:  STR.W           R0, [R8]
24884C:  STRB            R1, [R6,R0]
24884E:  POP.W           {R8,R9,R11}
248852:  POP             {R4-R7,PC}
248854:  LDR             R0, =(LogLevel_ptr - 0x24885A)
248856:  ADD             R0, PC; LogLevel_ptr
248858:  LDR             R0, [R0]; LogLevel
24885A:  LDR             R0, [R0]
24885C:  CMP             R0, #0
24885E:  BEQ             loc_24884E
248860:  LDR             R0, =(aEe - 0x24886C); "(EE)"
248862:  MOV             R3, R4
248864:  LDR             R1, =(aAppendlist - 0x24886E); "AppendList"
248866:  LDR             R2, =(aReallocFailedT_0 - 0x248870); "Realloc failed to add %s!\n"
248868:  ADD             R0, PC; "(EE)"
24886A:  ADD             R1, PC; "AppendList"
24886C:  ADD             R2, PC; "Realloc failed to add %s!\n"
24886E:  POP.W           {R8,R9,R11}
248872:  POP.W           {R4-R7,LR}
248876:  B.W             al_print
