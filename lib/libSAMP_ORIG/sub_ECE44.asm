; =========================================================
; Game Engine Function: sub_ECE44
; Address            : 0xECE44 - 0xECE64
; =========================================================

ECE44:  PUSH            {R4,R5,R7,LR}
ECE46:  ADD             R7, SP, #8
ECE48:  MOV             R5, R0
ECE4A:  LDR             R0, =(_ZNSt6__ndk17num_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0xECE52)
ECE4C:  MOV             R4, R1
ECE4E:  ADD             R0, PC; _ZNSt6__ndk17num_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
ECE50:  LDR             R0, [R0]; this
ECE52:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ECE56:  MOV             R2, R0
ECE58:  MOV             R0, R5; int
ECE5A:  MOV             R1, R4; this
ECE5C:  POP.W           {R4,R5,R7,LR}
ECE60:  B.W             sub_EE550
