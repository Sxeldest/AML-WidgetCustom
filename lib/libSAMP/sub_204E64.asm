; =========================================================
; Game Engine Function: sub_204E64
; Address            : 0x204E64 - 0x204E84
; =========================================================

204E64:  PUSH            {R4,R5,R7,LR}
204E66:  ADD             R7, SP, #8
204E68:  MOV             R5, R0
204E6A:  LDR             R0, =(_ZNSt6__ndk18time_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0x204E72)
204E6C:  MOV             R4, R1
204E6E:  ADD             R0, PC; _ZNSt6__ndk18time_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
204E70:  LDR             R0, [R0]; this
204E72:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204E76:  MOV             R2, R0
204E78:  MOV             R0, R5; int
204E7A:  MOV             R1, R4; this
204E7C:  POP.W           {R4,R5,R7,LR}
204E80:  B.W             sub_206408
