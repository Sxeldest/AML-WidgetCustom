; =========================================================
; Game Engine Function: sub_204C6C
; Address            : 0x204C6C - 0x204C8C
; =========================================================

204C6C:  PUSH            {R4,R5,R7,LR}
204C6E:  ADD             R7, SP, #8
204C70:  MOV             R5, R0
204C72:  LDR             R0, =(_ZNSt6__ndk18numpunctIwE2idE_ptr - 0x204C7A)
204C74:  MOV             R4, R1
204C76:  ADD             R0, PC; _ZNSt6__ndk18numpunctIwE2idE_ptr
204C78:  LDR             R0, [R0]; this
204C7A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204C7E:  MOV             R2, R0
204C80:  MOV             R0, R5; int
204C82:  MOV             R1, R4; this
204C84:  POP.W           {R4,R5,R7,LR}
204C88:  B.W             sub_206408
