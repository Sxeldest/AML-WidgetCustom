; =========================================================
; Game Engine Function: sub_204C90
; Address            : 0x204C90 - 0x204CB0
; =========================================================

204C90:  PUSH            {R4,R5,R7,LR}
204C92:  ADD             R7, SP, #8
204C94:  MOV             R5, R0
204C96:  LDR             R0, =(_ZNSt6__ndk17num_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0x204C9E)
204C98:  MOV             R4, R1
204C9A:  ADD             R0, PC; _ZNSt6__ndk17num_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
204C9C:  LDR             R0, [R0]; this
204C9E:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204CA2:  MOV             R2, R0
204CA4:  MOV             R0, R5; int
204CA6:  MOV             R1, R4; this
204CA8:  POP.W           {R4,R5,R7,LR}
204CAC:  B.W             sub_206408
