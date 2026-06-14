; =========================================================
; Game Engine Function: sub_7D25C
; Address            : 0x7D25C - 0x7D292
; =========================================================

7D25C:  PUSH            {R4,R6,R7,LR}
7D25E:  ADD             R7, SP, #8
7D260:  LDR             R1, =(_ZTV6Button - 0x7D26A); `vtable for'Button ...
7D262:  MOV             R4, R0
7D264:  LDR             R0, [R0,#0x68]
7D266:  ADD             R1, PC; `vtable for'Button
7D268:  ADDS            R1, #8
7D26A:  STR             R1, [R4]
7D26C:  ADD.W           R1, R4, #0x58 ; 'X'
7D270:  CMP             R1, R0
7D272:  BEQ             loc_7D27A
7D274:  CBZ             R0, loc_7D284
7D276:  MOVS            R1, #5
7D278:  B               loc_7D27C
7D27A:  MOVS            R1, #4
7D27C:  LDR             R2, [R0]
7D27E:  LDR.W           R1, [R2,R1,LSL#2]
7D282:  BLX             R1
7D284:  MOV             R0, R4
7D286:  BL              sub_7C3B4
7D28A:  POP.W           {R4,R6,R7,LR}
7D28E:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
