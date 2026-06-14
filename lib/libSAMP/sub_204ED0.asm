; =========================================================
; Game Engine Function: sub_204ED0
; Address            : 0x204ED0 - 0x204EF0
; =========================================================

204ED0:  PUSH            {R4,R5,R7,LR}
204ED2:  ADD             R7, SP, #8
204ED4:  MOV             R5, R0
204ED6:  LDR             R0, =(_ZNSt6__ndk18messagesIcE2idE_ptr - 0x204EDE)
204ED8:  MOV             R4, R1
204EDA:  ADD             R0, PC; _ZNSt6__ndk18messagesIcE2idE_ptr
204EDC:  LDR             R0, [R0]; this
204EDE:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204EE2:  MOV             R2, R0
204EE4:  MOV             R0, R5; int
204EE6:  MOV             R1, R4; this
204EE8:  POP.W           {R4,R5,R7,LR}
204EEC:  B.W             sub_206408
