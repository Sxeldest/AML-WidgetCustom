; =========================================================
; Game Engine Function: sub_ECEB0
; Address            : 0xECEB0 - 0xECED0
; =========================================================

ECEB0:  PUSH            {R4,R5,R7,LR}
ECEB2:  ADD             R7, SP, #8
ECEB4:  MOV             R5, R0
ECEB6:  LDR             R0, =(_ZNSt6__ndk110moneypunctIwLb0EE2idE_ptr - 0xECEBE)
ECEB8:  MOV             R4, R1
ECEBA:  ADD             R0, PC; _ZNSt6__ndk110moneypunctIwLb0EE2idE_ptr
ECEBC:  LDR             R0, [R0]; this
ECEBE:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ECEC2:  MOV             R2, R0
ECEC4:  MOV             R0, R5; int
ECEC6:  MOV             R1, R4; this
ECEC8:  POP.W           {R4,R5,R7,LR}
ECECC:  B.W             sub_EE550
