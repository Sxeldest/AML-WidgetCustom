; =========================================================
; Game Engine Function: sub_ED03C
; Address            : 0xED03C - 0xED05C
; =========================================================

ED03C:  PUSH            {R4,R5,R7,LR}
ED03E:  ADD             R7, SP, #8
ED040:  MOV             R5, R0
ED042:  LDR             R0, =(_ZNSt6__ndk18messagesIwE2idE_ptr - 0xED04A)
ED044:  MOV             R4, R1
ED046:  ADD             R0, PC; _ZNSt6__ndk18messagesIwE2idE_ptr
ED048:  LDR             R0, [R0]; this
ED04A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ED04E:  MOV             R2, R0
ED050:  MOV             R0, R5; int
ED052:  MOV             R1, R4; this
ED054:  POP.W           {R4,R5,R7,LR}
ED058:  B.W             sub_EE550
