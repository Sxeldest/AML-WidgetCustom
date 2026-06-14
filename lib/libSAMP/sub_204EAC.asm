; =========================================================
; Game Engine Function: sub_204EAC
; Address            : 0x204EAC - 0x204ECC
; =========================================================

204EAC:  PUSH            {R4,R5,R7,LR}
204EAE:  ADD             R7, SP, #8
204EB0:  MOV             R5, R0
204EB2:  LDR             R0, =(_ZNSt6__ndk18time_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0x204EBA)
204EB4:  MOV             R4, R1
204EB6:  ADD             R0, PC; _ZNSt6__ndk18time_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
204EB8:  LDR             R0, [R0]; this
204EBA:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204EBE:  MOV             R2, R0
204EC0:  MOV             R0, R5; int
204EC2:  MOV             R1, R4; this
204EC4:  POP.W           {R4,R5,R7,LR}
204EC8:  B.W             sub_206408
