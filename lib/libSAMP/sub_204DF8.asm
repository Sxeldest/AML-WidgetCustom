; =========================================================
; Game Engine Function: sub_204DF8
; Address            : 0x204DF8 - 0x204E18
; =========================================================

204DF8:  PUSH            {R4,R5,R7,LR}
204DFA:  ADD             R7, SP, #8
204DFC:  MOV             R5, R0
204DFE:  LDR             R0, =(_ZNSt6__ndk19money_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0x204E06)
204E00:  MOV             R4, R1
204E02:  ADD             R0, PC; _ZNSt6__ndk19money_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
204E04:  LDR             R0, [R0]; this
204E06:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204E0A:  MOV             R2, R0
204E0C:  MOV             R0, R5; int
204E0E:  MOV             R1, R4; this
204E10:  POP.W           {R4,R5,R7,LR}
204E14:  B.W             sub_206408
