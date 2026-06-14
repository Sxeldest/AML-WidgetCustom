; =========================================================
; Game Engine Function: sub_205318
; Address            : 0x205318 - 0x205338
; =========================================================

205318:  PUSH            {R4,R5,R7,LR}
20531A:  ADD             R7, SP, #8
20531C:  MOV             R5, R0
20531E:  LDR             R0, =(_ZNSt6__ndk17codecvtIwc9mbstate_tE2idE_ptr - 0x205326)
205320:  MOV             R4, R1
205322:  ADD             R0, PC; _ZNSt6__ndk17codecvtIwc9mbstate_tE2idE_ptr
205324:  LDR             R0, [R0]; this
205326:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
20532A:  MOV             R2, R0
20532C:  MOV             R0, R5; int
20532E:  MOV             R1, R4; this
205330:  POP.W           {R4,R5,R7,LR}
205334:  B.W             sub_206408
