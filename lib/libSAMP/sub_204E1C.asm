; =========================================================
; Game Engine Function: sub_204E1C
; Address            : 0x204E1C - 0x204E3C
; =========================================================

204E1C:  PUSH            {R4,R5,R7,LR}
204E1E:  ADD             R7, SP, #8
204E20:  MOV             R5, R0
204E22:  LDR             R0, =(_ZNSt6__ndk19money_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0x204E2A)
204E24:  MOV             R4, R1
204E26:  ADD             R0, PC; _ZNSt6__ndk19money_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
204E28:  LDR             R0, [R0]; this
204E2A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204E2E:  MOV             R2, R0
204E30:  MOV             R0, R5; int
204E32:  MOV             R1, R4; this
204E34:  POP.W           {R4,R5,R7,LR}
204E38:  B.W             sub_206408
