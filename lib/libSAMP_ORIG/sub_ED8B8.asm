; =========================================================
; Game Engine Function: sub_ED8B8
; Address            : 0xED8B8 - 0xED8D8
; =========================================================

ED8B8:  PUSH            {R4,R5,R7,LR}
ED8BA:  ADD             R7, SP, #8
ED8BC:  MOV             R5, R0
ED8BE:  LDR             R0, =(_ZNSt6__ndk18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0xED8C6)
ED8C0:  MOV             R4, R1
ED8C2:  ADD             R0, PC; _ZNSt6__ndk18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
ED8C4:  LDR             R0, [R0]; this
ED8C6:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ED8CA:  MOV             R2, R0
ED8CC:  MOV             R0, R5; int
ED8CE:  MOV             R1, R4; this
ED8D0:  POP.W           {R4,R5,R7,LR}
ED8D4:  B.W             sub_EE550
