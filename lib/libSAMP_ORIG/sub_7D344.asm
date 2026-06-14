; =========================================================
; Game Engine Function: sub_7D344
; Address            : 0x7D344 - 0x7D37A
; =========================================================

7D344:  PUSH            {R4,R6,R7,LR}
7D346:  ADD             R7, SP, #8
7D348:  LDR             R1, =(_ZTV7OButton - 0x7D352); `vtable for'OButton ...
7D34A:  MOV             R4, R0
7D34C:  LDR             R0, [R0,#0x68]
7D34E:  ADD             R1, PC; `vtable for'OButton
7D350:  ADDS            R1, #8
7D352:  STR             R1, [R4]
7D354:  ADD.W           R1, R4, #0x58 ; 'X'
7D358:  CMP             R1, R0
7D35A:  BEQ             loc_7D362
7D35C:  CBZ             R0, loc_7D36C
7D35E:  MOVS            R1, #5
7D360:  B               loc_7D364
7D362:  MOVS            R1, #4
7D364:  LDR             R2, [R0]
7D366:  LDR.W           R1, [R2,R1,LSL#2]
7D36A:  BLX             R1
7D36C:  MOV             R0, R4
7D36E:  BL              sub_7C3B4
7D372:  POP.W           {R4,R6,R7,LR}
7D376:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
