; =========================================================
; Game Engine Function: sub_ED460
; Address            : 0xED460 - 0xED480
; =========================================================

ED460:  PUSH            {R4,R5,R7,LR}
ED462:  ADD             R7, SP, #8
ED464:  MOV             R5, R0
ED466:  LDR             R0, =(_ZNSt6__ndk17codecvtIwc9mbstate_tE2idE_ptr - 0xED46E)
ED468:  MOV             R4, R1
ED46A:  ADD             R0, PC; _ZNSt6__ndk17codecvtIwc9mbstate_tE2idE_ptr
ED46C:  LDR             R0, [R0]; this
ED46E:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ED472:  MOV             R2, R0
ED474:  MOV             R0, R5; int
ED476:  MOV             R1, R4; this
ED478:  POP.W           {R4,R5,R7,LR}
ED47C:  B.W             sub_EE550
