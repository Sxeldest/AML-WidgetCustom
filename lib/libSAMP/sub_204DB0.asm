; =========================================================
; Game Engine Function: sub_204DB0
; Address            : 0x204DB0 - 0x204DD0
; =========================================================

204DB0:  PUSH            {R4,R5,R7,LR}
204DB2:  ADD             R7, SP, #8
204DB4:  MOV             R5, R0
204DB6:  LDR             R0, =(_ZNSt6__ndk19money_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0x204DBE)
204DB8:  MOV             R4, R1
204DBA:  ADD             R0, PC; _ZNSt6__ndk19money_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
204DBC:  LDR             R0, [R0]; this
204DBE:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204DC2:  MOV             R2, R0
204DC4:  MOV             R0, R5; int
204DC6:  MOV             R1, R4; this
204DC8:  POP.W           {R4,R5,R7,LR}
204DCC:  B.W             sub_206408
