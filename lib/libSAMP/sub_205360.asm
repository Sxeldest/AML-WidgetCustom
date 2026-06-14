; =========================================================
; Game Engine Function: sub_205360
; Address            : 0x205360 - 0x205380
; =========================================================

205360:  PUSH            {R4,R5,R7,LR}
205362:  ADD             R7, SP, #8
205364:  MOV             R5, R0
205366:  LDR             R0, =(_ZNSt6__ndk17codecvtIDsc9mbstate_tE2idE_ptr - 0x20536E)
205368:  MOV             R4, R1
20536A:  ADD             R0, PC; _ZNSt6__ndk17codecvtIDsc9mbstate_tE2idE_ptr
20536C:  LDR             R0, [R0]; this
20536E:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
205372:  MOV             R2, R0
205374:  MOV             R0, R5; int
205376:  MOV             R1, R4; this
205378:  POP.W           {R4,R5,R7,LR}
20537C:  B.W             sub_206408
