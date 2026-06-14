; =========================================================
; Game Engine Function: sub_204CB4
; Address            : 0x204CB4 - 0x204CD4
; =========================================================

204CB4:  PUSH            {R4,R5,R7,LR}
204CB6:  ADD             R7, SP, #8
204CB8:  MOV             R5, R0
204CBA:  LDR             R0, =(_ZNSt6__ndk17num_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0x204CC2)
204CBC:  MOV             R4, R1
204CBE:  ADD             R0, PC; _ZNSt6__ndk17num_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
204CC0:  LDR             R0, [R0]; this
204CC2:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204CC6:  MOV             R2, R0
204CC8:  MOV             R0, R5; int
204CCA:  MOV             R1, R4; this
204CCC:  POP.W           {R4,R5,R7,LR}
204CD0:  B.W             sub_206408
