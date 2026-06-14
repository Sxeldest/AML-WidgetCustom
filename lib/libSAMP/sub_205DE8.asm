; =========================================================
; Game Engine Function: sub_205DE8
; Address            : 0x205DE8 - 0x205E1A
; =========================================================

205DE8:  PUSH            {R4-R7,LR}
205DEA:  ADD             R7, SP, #0xC
205DEC:  PUSH.W          {R11}
205DF0:  MOV             R5, R0
205DF2:  LDR             R0, =(_ZNSt6__ndk17codecvtIcc9mbstate_tE2idE_ptr - 0x205DFA)
205DF4:  MOV             R4, R1
205DF6:  ADD             R0, PC; _ZNSt6__ndk17codecvtIcc9mbstate_tE2idE_ptr
205DF8:  LDR             R0, [R0]; this
205DFA:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
205DFE:  MOV             R6, R0
205E00:  MOV             R0, R4
205E02:  MOV             R1, R6
205E04:  BL              sub_20652C
205E08:  MOV             R1, R0; this
205E0A:  MOV             R0, R5; int
205E0C:  MOV             R2, R6
205E0E:  POP.W           {R11}
205E12:  POP.W           {R4-R7,LR}
205E16:  B.W             sub_206408
