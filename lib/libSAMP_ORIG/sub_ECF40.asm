; =========================================================
; Game Engine Function: sub_ECF40
; Address            : 0xECF40 - 0xECF60
; =========================================================

ECF40:  PUSH            {R4,R5,R7,LR}
ECF42:  ADD             R7, SP, #8
ECF44:  MOV             R5, R0
ECF46:  LDR             R0, =(_ZNSt6__ndk19money_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0xECF4E)
ECF48:  MOV             R4, R1
ECF4A:  ADD             R0, PC; _ZNSt6__ndk19money_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
ECF4C:  LDR             R0, [R0]; this
ECF4E:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ECF52:  MOV             R2, R0
ECF54:  MOV             R0, R5; int
ECF56:  MOV             R1, R4; this
ECF58:  POP.W           {R4,R5,R7,LR}
ECF5C:  B.W             sub_EE550
