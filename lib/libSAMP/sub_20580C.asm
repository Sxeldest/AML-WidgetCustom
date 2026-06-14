; =========================================================
; Game Engine Function: sub_20580C
; Address            : 0x20580C - 0x20582C
; =========================================================

20580C:  PUSH            {R4,R5,R7,LR}
20580E:  ADD             R7, SP, #8
205810:  MOV             R5, R0
205812:  LDR             R0, =(_ZNSt6__ndk18messagesIwE2idE_ptr - 0x20581A)
205814:  MOV             R4, R1
205816:  ADD             R0, PC; _ZNSt6__ndk18messagesIwE2idE_ptr
205818:  LDR             R0, [R0]; this
20581A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
20581E:  MOV             R2, R0
205820:  MOV             R0, R5; int
205822:  MOV             R1, R4; this
205824:  POP.W           {R4,R5,R7,LR}
205828:  B.W             sub_206408
