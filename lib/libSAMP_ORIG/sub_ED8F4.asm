; =========================================================
; Game Engine Function: sub_ED8F4
; Address            : 0xED8F4 - 0xED914
; =========================================================

ED8F4:  PUSH            {R4,R5,R7,LR}
ED8F6:  ADD             R7, SP, #8
ED8F8:  MOV             R5, R0
ED8FA:  LDR             R0, =(_ZNSt6__ndk18time_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0xED902)
ED8FC:  MOV             R4, R1
ED8FE:  ADD             R0, PC; _ZNSt6__ndk18time_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
ED900:  LDR             R0, [R0]; this
ED902:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ED906:  MOV             R2, R0
ED908:  MOV             R0, R5; int
ED90A:  MOV             R1, R4; this
ED90C:  POP.W           {R4,R5,R7,LR}
ED910:  B.W             sub_EE550
