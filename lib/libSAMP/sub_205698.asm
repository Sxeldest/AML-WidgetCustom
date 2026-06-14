; =========================================================
; Game Engine Function: sub_205698
; Address            : 0x205698 - 0x2056B8
; =========================================================

205698:  PUSH            {R4,R5,R7,LR}
20569A:  ADD             R7, SP, #8
20569C:  MOV             R5, R0
20569E:  LDR             R0, =(_ZNSt6__ndk18time_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0x2056A6)
2056A0:  MOV             R4, R1
2056A2:  ADD             R0, PC; _ZNSt6__ndk18time_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
2056A4:  LDR             R0, [R0]; this
2056A6:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
2056AA:  MOV             R2, R0
2056AC:  MOV             R0, R5; int
2056AE:  MOV             R1, R4; this
2056B0:  POP.W           {R4,R5,R7,LR}
2056B4:  B.W             sub_206408
