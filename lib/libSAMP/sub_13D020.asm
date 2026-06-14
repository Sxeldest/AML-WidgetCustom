; =========================================================
; Game Engine Function: sub_13D020
; Address            : 0x13D020 - 0x13D056
; =========================================================

13D020:  PUSH            {R4,R6,R7,LR}
13D022:  ADD             R7, SP, #8
13D024:  LDR             R1, =(_ZTV6Button - 0x13D02E); `vtable for'Button ...
13D026:  MOV             R4, R0
13D028:  LDR             R0, [R0,#0x68]
13D02A:  ADD             R1, PC; `vtable for'Button
13D02C:  ADDS            R1, #8
13D02E:  STR             R1, [R4]
13D030:  ADD.W           R1, R4, #0x58 ; 'X'
13D034:  CMP             R1, R0
13D036:  BEQ             loc_13D03E
13D038:  CBZ             R0, loc_13D048
13D03A:  MOVS            R1, #5
13D03C:  B               loc_13D040
13D03E:  MOVS            R1, #4
13D040:  LDR             R2, [R0]
13D042:  LDR.W           R1, [R2,R1,LSL#2]
13D046:  BLX             R1
13D048:  MOV             R0, R4
13D04A:  BL              sub_12BCE4
13D04E:  POP.W           {R4,R6,R7,LR}
13D052:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
