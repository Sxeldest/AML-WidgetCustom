; =========================================================
; Game Engine Function: sub_204E40
; Address            : 0x204E40 - 0x204E60
; =========================================================

204E40:  PUSH            {R4,R5,R7,LR}
204E42:  ADD             R7, SP, #8
204E44:  MOV             R5, R0
204E46:  LDR             R0, =(_ZNSt6__ndk18time_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0x204E4E)
204E48:  MOV             R4, R1
204E4A:  ADD             R0, PC; _ZNSt6__ndk18time_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
204E4C:  LDR             R0, [R0]; this
204E4E:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204E52:  MOV             R2, R0
204E54:  MOV             R0, R5; int
204E56:  MOV             R1, R4; this
204E58:  POP.W           {R4,R5,R7,LR}
204E5C:  B.W             sub_206408
