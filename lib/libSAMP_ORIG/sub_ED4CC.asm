; =========================================================
; Game Engine Function: sub_ED4CC
; Address            : 0xED4CC - 0xED4EC
; =========================================================

ED4CC:  PUSH            {R4,R5,R7,LR}
ED4CE:  ADD             R7, SP, #8
ED4D0:  MOV             R5, R0
ED4D2:  LDR             R0, =(_ZNSt6__ndk17codecvtIDic9mbstate_tE2idE_ptr - 0xED4DA)
ED4D4:  MOV             R4, R1
ED4D6:  ADD             R0, PC; _ZNSt6__ndk17codecvtIDic9mbstate_tE2idE_ptr
ED4D8:  LDR             R0, [R0]; this
ED4DA:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ED4DE:  MOV             R2, R0
ED4E0:  MOV             R0, R5; int
ED4E2:  MOV             R1, R4; this
ED4E4:  POP.W           {R4,R5,R7,LR}
ED4E8:  B.W             sub_EE550
