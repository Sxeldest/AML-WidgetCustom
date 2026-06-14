; =========================================================
; Game Engine Function: sub_205EC8
; Address            : 0x205EC8 - 0x205EFA
; =========================================================

205EC8:  PUSH            {R4-R7,LR}
205ECA:  ADD             R7, SP, #0xC
205ECC:  PUSH.W          {R11}
205ED0:  MOV             R5, R0
205ED2:  LDR             R0, =(_ZNSt6__ndk110moneypunctIcLb0EE2idE_ptr - 0x205EDA)
205ED4:  MOV             R4, R1
205ED6:  ADD             R0, PC; _ZNSt6__ndk110moneypunctIcLb0EE2idE_ptr
205ED8:  LDR             R0, [R0]; this
205EDA:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
205EDE:  MOV             R6, R0
205EE0:  MOV             R0, R4
205EE2:  MOV             R1, R6
205EE4:  BL              sub_20652C
205EE8:  MOV             R1, R0; this
205EEA:  MOV             R0, R5; int
205EEC:  MOV             R2, R6
205EEE:  POP.W           {R11}
205EF2:  POP.W           {R4-R7,LR}
205EF6:  B.W             sub_206408
