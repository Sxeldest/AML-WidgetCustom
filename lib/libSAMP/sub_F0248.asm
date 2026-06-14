; =========================================================
; Game Engine Function: sub_F0248
; Address            : 0xF0248 - 0xF029C
; =========================================================

F0248:  PUSH            {R4-R7,LR}
F024A:  ADD             R7, SP, #0xC
F024C:  PUSH.W          {R8}
F0250:  MOV             R5, R0
F0252:  LDR.W           R8, [R0,#4]
F0256:  LDR             R0, [R0,#0xC]
F0258:  ADD.W           R6, R0, R0,LSR#1
F025C:  CMP             R6, R1
F025E:  IT CC
F0260:  MOVCC           R6, R1
F0262:  MOV             R0, R6; unsigned int
F0264:  BLX             j__Znwj; operator new(uint)
F0268:  LDR             R1, [R5,#8]
F026A:  CBZ             R1, loc_F027C
F026C:  MOV             R2, R8
F026E:  MOV             R3, R0
F0270:  LDRB.W          R4, [R2],#1
F0274:  SUBS            R1, #1; std::nothrow_t *
F0276:  STRB.W          R4, [R3],#1
F027A:  BNE             loc_F0270
F027C:  STR             R0, [R5,#4]
F027E:  ADD.W           R0, R5, #0x10
F0282:  CMP             R8, R0
F0284:  STR             R6, [R5,#0xC]
F0286:  BEQ             loc_F0296
F0288:  MOV             R0, R8; void *
F028A:  POP.W           {R8}
F028E:  POP.W           {R4-R7,LR}
F0292:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
F0296:  POP.W           {R8}
F029A:  POP             {R4-R7,PC}
