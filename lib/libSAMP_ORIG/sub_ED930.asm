; =========================================================
; Game Engine Function: sub_ED930
; Address            : 0xED930 - 0xED950
; =========================================================

ED930:  PUSH            {R4,R5,R7,LR}
ED932:  ADD             R7, SP, #8
ED934:  MOV             R5, R0
ED936:  LDR             R0, =(_ZNSt6__ndk18messagesIcE2idE_ptr - 0xED93E)
ED938:  MOV             R4, R1
ED93A:  ADD             R0, PC; _ZNSt6__ndk18messagesIcE2idE_ptr
ED93C:  LDR             R0, [R0]; this
ED93E:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ED942:  MOV             R2, R0
ED944:  MOV             R0, R5; int
ED946:  MOV             R1, R4; this
ED948:  POP.W           {R4,R5,R7,LR}
ED94C:  B.W             sub_EE550
