; =========================================================
; Game Engine Function: sub_205770
; Address            : 0x205770 - 0x205790
; =========================================================

205770:  PUSH            {R4,R5,R7,LR}
205772:  ADD             R7, SP, #8
205774:  MOV             R5, R0
205776:  LDR             R0, =(_ZNSt6__ndk18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0x20577E)
205778:  MOV             R4, R1
20577A:  ADD             R0, PC; _ZNSt6__ndk18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
20577C:  LDR             R0, [R0]; this
20577E:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
205782:  MOV             R2, R0
205784:  MOV             R0, R5; int
205786:  MOV             R1, R4; this
205788:  POP.W           {R4,R5,R7,LR}
20578C:  B.W             sub_206408
