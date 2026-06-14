; =========================================================
; Game Engine Function: _ZN9CPhysical20RemoveFromMovingListEv
; Address            : 0x3FD32C - 0x3FD37A
; =========================================================

3FD32C:  PUSH            {R4,R6,R7,LR}
3FD32E:  ADD             R7, SP, #8
3FD330:  MOV             R4, R0
3FD332:  LDR.W           R0, [R4,#0xB8]
3FD336:  CMP             R0, #0
3FD338:  IT EQ
3FD33A:  POPEQ           {R4,R6,R7,PC}
3FD33C:  LDR             R1, =(_ZN6CWorld23ms_listMovingEntityPtrsE_ptr - 0x3FD342)
3FD33E:  ADD             R1, PC; _ZN6CWorld23ms_listMovingEntityPtrsE_ptr
3FD340:  LDR             R1, [R1]; CWorld::ms_listMovingEntityPtrs ...
3FD342:  LDR             R1, [R1]; CWorld::ms_listMovingEntityPtrs
3FD344:  CMP             R1, R0
3FD346:  BNE             loc_3FD352
3FD348:  LDR             R1, =(_ZN6CWorld23ms_listMovingEntityPtrsE_ptr - 0x3FD350)
3FD34A:  LDR             R2, [R0,#4]
3FD34C:  ADD             R1, PC; _ZN6CWorld23ms_listMovingEntityPtrsE_ptr
3FD34E:  LDR             R1, [R1]; CWorld::ms_listMovingEntityPtrs ...
3FD350:  STR             R2, [R1]; CWorld::ms_listMovingEntityPtrs
3FD352:  LDR             R1, [R0,#8]
3FD354:  CMP             R1, #0
3FD356:  ITT NE
3FD358:  LDRNE           R2, [R0,#4]
3FD35A:  STRNE           R2, [R1,#4]
3FD35C:  LDR             R1, [R0,#4]
3FD35E:  CMP             R1, #0
3FD360:  ITT NE
3FD362:  LDRNE           R0, [R0,#8]
3FD364:  STRNE           R0, [R1,#8]
3FD366:  LDR.W           R0, [R4,#0xB8]; void *
3FD36A:  CMP             R0, #0
3FD36C:  IT NE
3FD36E:  BLXNE           j__ZN18CPtrNodeDoubleLinkdlEPv; CPtrNodeDoubleLink::operator delete(void *)
3FD372:  MOVS            R0, #0
3FD374:  STR.W           R0, [R4,#0xB8]
3FD378:  POP             {R4,R6,R7,PC}
