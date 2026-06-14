; =========================================================
; Game Engine Function: sub_2061A0
; Address            : 0x2061A0 - 0x2061D2
; =========================================================

2061A0:  PUSH            {R4-R7,LR}
2061A2:  ADD             R7, SP, #0xC
2061A4:  PUSH.W          {R11}
2061A8:  MOV             R5, R0
2061AA:  LDR             R0, =(_ZNSt6__ndk17num_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0x2061B2)
2061AC:  MOV             R4, R1
2061AE:  ADD             R0, PC; _ZNSt6__ndk17num_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
2061B0:  LDR             R0, [R0]; this
2061B2:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
2061B6:  MOV             R6, R0
2061B8:  MOV             R0, R4
2061BA:  MOV             R1, R6
2061BC:  BL              sub_20652C
2061C0:  MOV             R1, R0; this
2061C2:  MOV             R0, R5; int
2061C4:  MOV             R2, R6
2061C6:  POP.W           {R11}
2061CA:  POP.W           {R4-R7,LR}
2061CE:  B.W             sub_206408
