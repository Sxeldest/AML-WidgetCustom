; =========================================================
; Game Engine Function: sub_EDFA0
; Address            : 0xEDFA0 - 0xEDFD2
; =========================================================

EDFA0:  PUSH            {R4-R7,LR}
EDFA2:  ADD             R7, SP, #0xC
EDFA4:  PUSH.W          {R11}
EDFA8:  MOV             R5, R0
EDFAA:  LDR             R0, =(_ZNSt6__ndk17codecvtIDic9mbstate_tE2idE_ptr - 0xEDFB2)
EDFAC:  MOV             R4, R1
EDFAE:  ADD             R0, PC; _ZNSt6__ndk17codecvtIDic9mbstate_tE2idE_ptr
EDFB0:  LDR             R0, [R0]; this
EDFB2:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EDFB6:  MOV             R6, R0
EDFB8:  MOV             R0, R4
EDFBA:  MOV             R1, R6
EDFBC:  BL              sub_EE674
EDFC0:  MOV             R1, R0; this
EDFC2:  MOV             R0, R5; int
EDFC4:  MOV             R2, R6
EDFC6:  POP.W           {R11}
EDFCA:  POP.W           {R4-R7,LR}
EDFCE:  B.W             sub_EE550
