; =========================================================
; Game Engine Function: sub_ED954
; Address            : 0xED954 - 0xED974
; =========================================================

ED954:  PUSH            {R4,R5,R7,LR}
ED956:  ADD             R7, SP, #8
ED958:  MOV             R5, R0
ED95A:  LDR             R0, =(_ZNSt6__ndk18messagesIwE2idE_ptr - 0xED962)
ED95C:  MOV             R4, R1
ED95E:  ADD             R0, PC; _ZNSt6__ndk18messagesIwE2idE_ptr
ED960:  LDR             R0, [R0]; this
ED962:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ED966:  MOV             R2, R0
ED968:  MOV             R0, R5; int
ED96A:  MOV             R1, R4; this
ED96C:  POP.W           {R4,R5,R7,LR}
ED970:  B.W             sub_EE550
