; =========================================================
; Game Engine Function: sub_2052D0
; Address            : 0x2052D0 - 0x2052F0
; =========================================================

2052D0:  PUSH            {R4,R5,R7,LR}
2052D2:  ADD             R7, SP, #8
2052D4:  MOV             R5, R0
2052D6:  LDR             R0, =(_ZNSt6__ndk15ctypeIwE2idE_ptr - 0x2052DE)
2052D8:  MOV             R4, R1
2052DA:  ADD             R0, PC; _ZNSt6__ndk15ctypeIwE2idE_ptr
2052DC:  LDR             R0, [R0]; this
2052DE:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
2052E2:  MOV             R2, R0
2052E4:  MOV             R0, R5; int
2052E6:  MOV             R1, R4; this
2052E8:  POP.W           {R4,R5,R7,LR}
2052EC:  B.W             sub_206408
