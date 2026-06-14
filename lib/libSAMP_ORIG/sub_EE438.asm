; =========================================================
; Game Engine Function: sub_EE438
; Address            : 0xEE438 - 0xEE46A
; =========================================================

EE438:  PUSH            {R4-R7,LR}
EE43A:  ADD             R7, SP, #0xC
EE43C:  PUSH.W          {R11}
EE440:  MOV             R5, R0
EE442:  LDR             R0, =(_ZNSt6__ndk18messagesIwE2idE_ptr - 0xEE44A)
EE444:  MOV             R4, R1
EE446:  ADD             R0, PC; _ZNSt6__ndk18messagesIwE2idE_ptr
EE448:  LDR             R0, [R0]; this
EE44A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EE44E:  MOV             R6, R0
EE450:  MOV             R0, R4
EE452:  MOV             R1, R6
EE454:  BL              sub_EE674
EE458:  MOV             R1, R0; this
EE45A:  MOV             R0, R5; int
EE45C:  MOV             R2, R6
EE45E:  POP.W           {R11}
EE462:  POP.W           {R4-R7,LR}
EE466:  B.W             sub_EE550
