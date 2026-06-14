; =========================================================
; Game Engine Function: sub_204B4C
; Address            : 0x204B4C - 0x204B6C
; =========================================================

204B4C:  PUSH            {R4,R5,R7,LR}
204B4E:  ADD             R7, SP, #8
204B50:  MOV             R5, R0
204B52:  LDR             R0, =(_ZNSt6__ndk17collateIwE2idE_ptr - 0x204B5A)
204B54:  MOV             R4, R1
204B56:  ADD             R0, PC; _ZNSt6__ndk17collateIwE2idE_ptr
204B58:  LDR             R0, [R0]; this
204B5A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204B5E:  MOV             R2, R0
204B60:  MOV             R0, R5; int
204B62:  MOV             R1, R4; this
204B64:  POP.W           {R4,R5,R7,LR}
204B68:  B.W             sub_206408
