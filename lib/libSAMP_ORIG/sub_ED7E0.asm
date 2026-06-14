; =========================================================
; Game Engine Function: sub_ED7E0
; Address            : 0xED7E0 - 0xED800
; =========================================================

ED7E0:  PUSH            {R4,R5,R7,LR}
ED7E2:  ADD             R7, SP, #8
ED7E4:  MOV             R5, R0
ED7E6:  LDR             R0, =(_ZNSt6__ndk18time_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0xED7EE)
ED7E8:  MOV             R4, R1
ED7EA:  ADD             R0, PC; _ZNSt6__ndk18time_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
ED7EC:  LDR             R0, [R0]; this
ED7EE:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ED7F2:  MOV             R2, R0
ED7F4:  MOV             R0, R5; int
ED7F6:  MOV             R1, R4; this
ED7F8:  POP.W           {R4,R5,R7,LR}
ED7FC:  B.W             sub_EE550
