; =========================================================
; Game Engine Function: sub_205704
; Address            : 0x205704 - 0x205724
; =========================================================

205704:  PUSH            {R4,R5,R7,LR}
205706:  ADD             R7, SP, #8
205708:  MOV             R5, R0
20570A:  LDR             R0, =(_ZNSt6__ndk18time_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0x205712)
20570C:  MOV             R4, R1
20570E:  ADD             R0, PC; _ZNSt6__ndk18time_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
205710:  LDR             R0, [R0]; this
205712:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
205716:  MOV             R2, R0
205718:  MOV             R0, R5; int
20571A:  MOV             R1, R4; this
20571C:  POP.W           {R4,R5,R7,LR}
205720:  B.W             sub_206408
