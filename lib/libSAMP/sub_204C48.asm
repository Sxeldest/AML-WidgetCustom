; =========================================================
; Game Engine Function: sub_204C48
; Address            : 0x204C48 - 0x204C68
; =========================================================

204C48:  PUSH            {R4,R5,R7,LR}
204C4A:  ADD             R7, SP, #8
204C4C:  MOV             R5, R0
204C4E:  LDR             R0, =(_ZNSt6__ndk18numpunctIcE2idE_ptr - 0x204C56)
204C50:  MOV             R4, R1
204C52:  ADD             R0, PC; _ZNSt6__ndk18numpunctIcE2idE_ptr
204C54:  LDR             R0, [R0]; this
204C56:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204C5A:  MOV             R2, R0
204C5C:  MOV             R0, R5; int
204C5E:  MOV             R1, R4; this
204C60:  POP.W           {R4,R5,R7,LR}
204C64:  B.W             sub_206408
