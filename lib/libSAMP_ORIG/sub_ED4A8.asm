; =========================================================
; Game Engine Function: sub_ED4A8
; Address            : 0xED4A8 - 0xED4C8
; =========================================================

ED4A8:  PUSH            {R4,R5,R7,LR}
ED4AA:  ADD             R7, SP, #8
ED4AC:  MOV             R5, R0
ED4AE:  LDR             R0, =(_ZNSt6__ndk17codecvtIDsc9mbstate_tE2idE_ptr - 0xED4B6)
ED4B0:  MOV             R4, R1
ED4B2:  ADD             R0, PC; _ZNSt6__ndk17codecvtIDsc9mbstate_tE2idE_ptr
ED4B4:  LDR             R0, [R0]; this
ED4B6:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ED4BA:  MOV             R2, R0
ED4BC:  MOV             R0, R5; int
ED4BE:  MOV             R1, R4; this
ED4C0:  POP.W           {R4,R5,R7,LR}
ED4C4:  B.W             sub_EE550
