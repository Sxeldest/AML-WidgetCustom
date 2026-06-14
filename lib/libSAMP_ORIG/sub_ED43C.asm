; =========================================================
; Game Engine Function: sub_ED43C
; Address            : 0xED43C - 0xED45C
; =========================================================

ED43C:  PUSH            {R4,R5,R7,LR}
ED43E:  ADD             R7, SP, #8
ED440:  MOV             R5, R0
ED442:  LDR             R0, =(_ZNSt6__ndk17codecvtIcc9mbstate_tE2idE_ptr - 0xED44A)
ED444:  MOV             R4, R1
ED446:  ADD             R0, PC; _ZNSt6__ndk17codecvtIcc9mbstate_tE2idE_ptr
ED448:  LDR             R0, [R0]; this
ED44A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ED44E:  MOV             R2, R0
ED450:  MOV             R0, R5; int
ED452:  MOV             R1, R4; this
ED454:  POP.W           {R4,R5,R7,LR}
ED458:  B.W             sub_EE550
