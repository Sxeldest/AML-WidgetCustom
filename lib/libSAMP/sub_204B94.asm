; =========================================================
; Game Engine Function: sub_204B94
; Address            : 0x204B94 - 0x204BB4
; =========================================================

204B94:  PUSH            {R4,R5,R7,LR}
204B96:  ADD             R7, SP, #8
204B98:  MOV             R5, R0
204B9A:  LDR             R0, =(_ZNSt6__ndk15ctypeIwE2idE_ptr - 0x204BA2)
204B9C:  MOV             R4, R1
204B9E:  ADD             R0, PC; _ZNSt6__ndk15ctypeIwE2idE_ptr
204BA0:  LDR             R0, [R0]; this
204BA2:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204BA6:  MOV             R2, R0
204BA8:  MOV             R0, R5; int
204BAA:  MOV             R1, R4; this
204BAC:  POP.W           {R4,R5,R7,LR}
204BB0:  B.W             sub_206408
