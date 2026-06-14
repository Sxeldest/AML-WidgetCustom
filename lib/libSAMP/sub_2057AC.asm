; =========================================================
; Game Engine Function: sub_2057AC
; Address            : 0x2057AC - 0x2057CC
; =========================================================

2057AC:  PUSH            {R4,R5,R7,LR}
2057AE:  ADD             R7, SP, #8
2057B0:  MOV             R5, R0
2057B2:  LDR             R0, =(_ZNSt6__ndk18time_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0x2057BA)
2057B4:  MOV             R4, R1
2057B6:  ADD             R0, PC; _ZNSt6__ndk18time_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
2057B8:  LDR             R0, [R0]; this
2057BA:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
2057BE:  MOV             R2, R0
2057C0:  MOV             R0, R5; int
2057C2:  MOV             R1, R4; this
2057C4:  POP.W           {R4,R5,R7,LR}
2057C8:  B.W             sub_206408
