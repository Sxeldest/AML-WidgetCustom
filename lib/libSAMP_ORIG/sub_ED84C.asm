; =========================================================
; Game Engine Function: sub_ED84C
; Address            : 0xED84C - 0xED86C
; =========================================================

ED84C:  PUSH            {R4,R5,R7,LR}
ED84E:  ADD             R7, SP, #8
ED850:  MOV             R5, R0
ED852:  LDR             R0, =(_ZNSt6__ndk18time_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0xED85A)
ED854:  MOV             R4, R1
ED856:  ADD             R0, PC; _ZNSt6__ndk18time_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
ED858:  LDR             R0, [R0]; this
ED85A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ED85E:  MOV             R2, R0
ED860:  MOV             R0, R5; int
ED862:  MOV             R1, R4; this
ED864:  POP.W           {R4,R5,R7,LR}
ED868:  B.W             sub_EE550
