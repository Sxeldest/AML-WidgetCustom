; =========================================================
; Game Engine Function: sub_ECED4
; Address            : 0xECED4 - 0xECEF4
; =========================================================

ECED4:  PUSH            {R4,R5,R7,LR}
ECED6:  ADD             R7, SP, #8
ECED8:  MOV             R5, R0
ECEDA:  LDR             R0, =(_ZNSt6__ndk110moneypunctIwLb1EE2idE_ptr - 0xECEE2)
ECEDC:  MOV             R4, R1
ECEDE:  ADD             R0, PC; _ZNSt6__ndk110moneypunctIwLb1EE2idE_ptr
ECEE0:  LDR             R0, [R0]; this
ECEE2:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
ECEE6:  MOV             R2, R0
ECEE8:  MOV             R0, R5; int
ECEEA:  MOV             R1, R4; this
ECEEC:  POP.W           {R4,R5,R7,LR}
ECEF0:  B.W             sub_EE550
