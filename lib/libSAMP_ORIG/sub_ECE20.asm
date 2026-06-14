; =========================================================
; Game Engine Function: sub_ECE20
; Address            : 0xECE20 - 0xECE40
; =========================================================

ECE20:  PUSH            {R4,R5,R7,LR}
ECE22:  ADD             R7, SP, #8
ECE24:  MOV             R5, R0
ECE26:  LDR             R0, =(_ZNSt6__ndk17num_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0xECE2E)
ECE28:  MOV             R4, R1
ECE2A:  ADD             R0, PC; _ZNSt6__ndk17num_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
ECE2C:  LDR             R0, [R0]; this
ECE2E:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ECE32:  MOV             R2, R0
ECE34:  MOV             R0, R5; int
ECE36:  MOV             R1, R4; this
ECE38:  POP.W           {R4,R5,R7,LR}
ECE3C:  B.W             sub_EE550
