; =========================================================
; Game Engine Function: sub_ED418
; Address            : 0xED418 - 0xED438
; =========================================================

ED418:  PUSH            {R4,R5,R7,LR}
ED41A:  ADD             R7, SP, #8
ED41C:  MOV             R5, R0
ED41E:  LDR             R0, =(_ZNSt6__ndk15ctypeIwE2idE_ptr - 0xED426)
ED420:  MOV             R4, R1
ED422:  ADD             R0, PC; _ZNSt6__ndk15ctypeIwE2idE_ptr
ED424:  LDR             R0, [R0]; this
ED426:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ED42A:  MOV             R2, R0
ED42C:  MOV             R0, R5; int
ED42E:  MOV             R1, R4; this
ED430:  POP.W           {R4,R5,R7,LR}
ED434:  B.W             sub_EE550
