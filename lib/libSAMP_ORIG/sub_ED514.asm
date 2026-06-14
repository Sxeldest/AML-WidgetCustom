; =========================================================
; Game Engine Function: sub_ED514
; Address            : 0xED514 - 0xED534
; =========================================================

ED514:  PUSH            {R4,R5,R7,LR}
ED516:  ADD             R7, SP, #8
ED518:  MOV             R5, R0
ED51A:  LDR             R0, =(_ZNSt6__ndk18numpunctIwE2idE_ptr - 0xED522)
ED51C:  MOV             R4, R1
ED51E:  ADD             R0, PC; _ZNSt6__ndk18numpunctIwE2idE_ptr
ED520:  LDR             R0, [R0]; this
ED522:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ED526:  MOV             R2, R0
ED528:  MOV             R0, R5; int
ED52A:  MOV             R1, R4; this
ED52C:  POP.W           {R4,R5,R7,LR}
ED530:  B.W             sub_EE550
