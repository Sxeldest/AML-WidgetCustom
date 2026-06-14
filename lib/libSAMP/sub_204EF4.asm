; =========================================================
; Game Engine Function: sub_204EF4
; Address            : 0x204EF4 - 0x204F14
; =========================================================

204EF4:  PUSH            {R4,R5,R7,LR}
204EF6:  ADD             R7, SP, #8
204EF8:  MOV             R5, R0
204EFA:  LDR             R0, =(_ZNSt6__ndk18messagesIwE2idE_ptr - 0x204F02)
204EFC:  MOV             R4, R1
204EFE:  ADD             R0, PC; _ZNSt6__ndk18messagesIwE2idE_ptr
204F00:  LDR             R0, [R0]; this
204F02:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204F06:  MOV             R2, R0
204F08:  MOV             R0, R5; int
204F0A:  MOV             R1, R4; this
204F0C:  POP.W           {R4,R5,R7,LR}
204F10:  B.W             sub_206408
