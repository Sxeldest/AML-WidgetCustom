; =========================================================
; Game Engine Function: sub_204E88
; Address            : 0x204E88 - 0x204EA8
; =========================================================

204E88:  PUSH            {R4,R5,R7,LR}
204E8A:  ADD             R7, SP, #8
204E8C:  MOV             R5, R0
204E8E:  LDR             R0, =(_ZNSt6__ndk18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0x204E96)
204E90:  MOV             R4, R1
204E92:  ADD             R0, PC; _ZNSt6__ndk18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
204E94:  LDR             R0, [R0]; this
204E96:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204E9A:  MOV             R2, R0
204E9C:  MOV             R0, R5; int
204E9E:  MOV             R1, R4; this
204EA0:  POP.W           {R4,R5,R7,LR}
204EA4:  B.W             sub_206408
