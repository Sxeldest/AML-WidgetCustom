; =========================================================
; Game Engine Function: sub_ED018
; Address            : 0xED018 - 0xED038
; =========================================================

ED018:  PUSH            {R4,R5,R7,LR}
ED01A:  ADD             R7, SP, #8
ED01C:  MOV             R5, R0
ED01E:  LDR             R0, =(_ZNSt6__ndk18messagesIcE2idE_ptr - 0xED026)
ED020:  MOV             R4, R1
ED022:  ADD             R0, PC; _ZNSt6__ndk18messagesIcE2idE_ptr
ED024:  LDR             R0, [R0]; this
ED026:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ED02A:  MOV             R2, R0
ED02C:  MOV             R0, R5; int
ED02E:  MOV             R1, R4; this
ED030:  POP.W           {R4,R5,R7,LR}
ED034:  B.W             sub_EE550
