; =========================================================
; Game Engine Function: sub_204CFC
; Address            : 0x204CFC - 0x204D1C
; =========================================================

204CFC:  PUSH            {R4,R5,R7,LR}
204CFE:  ADD             R7, SP, #8
204D00:  MOV             R5, R0
204D02:  LDR             R0, =(_ZNSt6__ndk17num_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr - 0x204D0A)
204D04:  MOV             R4, R1
204D06:  ADD             R0, PC; _ZNSt6__ndk17num_putIwNS_19ostreambuf_iteratorIwNS_11char_traitsIwEEEEE2idE_ptr
204D08:  LDR             R0, [R0]; this
204D0A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
204D0E:  MOV             R2, R0
204D10:  MOV             R0, R5; int
204D12:  MOV             R1, R4; this
204D14:  POP.W           {R4,R5,R7,LR}
204D18:  B.W             sub_206408
