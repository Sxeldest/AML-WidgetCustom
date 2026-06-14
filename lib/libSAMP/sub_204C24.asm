; =========================================================
; Game Engine Function: sub_204C24
; Address            : 0x204C24 - 0x204C44
; =========================================================

204C24:  PUSH            {R4,R5,R7,LR}
204C26:  ADD             R7, SP, #8
204C28:  MOV             R5, R0
204C2A:  LDR             R0, =(_ZNSt6__ndk17codecvtIDic9mbstate_tE2idE_ptr - 0x204C32)
204C2C:  MOV             R4, R1
204C2E:  ADD             R0, PC; _ZNSt6__ndk17codecvtIDic9mbstate_tE2idE_ptr
204C30:  LDR             R0, [R0]; this
204C32:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204C36:  MOV             R2, R0
204C38:  MOV             R0, R5; int
204C3A:  MOV             R1, R4; this
204C3C:  POP.W           {R4,R5,R7,LR}
204C40:  B.W             sub_206408
