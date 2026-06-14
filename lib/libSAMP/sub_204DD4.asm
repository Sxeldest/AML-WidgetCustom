; =========================================================
; Game Engine Function: sub_204DD4
; Address            : 0x204DD4 - 0x204DF4
; =========================================================

204DD4:  PUSH            {R4,R5,R7,LR}
204DD6:  ADD             R7, SP, #8
204DD8:  MOV             R5, R0
204DDA:  LDR             R0, =(_ZNSt6__ndk19money_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0x204DE2)
204DDC:  MOV             R4, R1
204DDE:  ADD             R0, PC; _ZNSt6__ndk19money_getIwNS_19istreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
204DE0:  LDR             R0, [R0]; this
204DE2:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204DE6:  MOV             R2, R0
204DE8:  MOV             R0, R5; int
204DEA:  MOV             R1, R4; this
204DEC:  POP.W           {R4,R5,R7,LR}
204DF0:  B.W             sub_206408
