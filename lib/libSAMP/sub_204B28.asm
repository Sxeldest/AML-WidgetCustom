; =========================================================
; Game Engine Function: sub_204B28
; Address            : 0x204B28 - 0x204B48
; =========================================================

204B28:  PUSH            {R4,R5,R7,LR}
204B2A:  ADD             R7, SP, #8
204B2C:  MOV             R5, R0
204B2E:  LDR             R0, =(_ZNSt6__ndk17collateIcE2idE_ptr - 0x204B36)
204B30:  MOV             R4, R1
204B32:  ADD             R0, PC; _ZNSt6__ndk17collateIcE2idE_ptr
204B34:  LDR             R0, [R0]; this
204B36:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204B3A:  MOV             R2, R0
204B3C:  MOV             R0, R5; int
204B3E:  MOV             R1, R4; this
204B40:  POP.W           {R4,R5,R7,LR}
204B44:  B.W             sub_206408
