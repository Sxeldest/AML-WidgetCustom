; =========================================================
; Game Engine Function: sub_EE1D0
; Address            : 0xEE1D0 - 0xEE202
; =========================================================

EE1D0:  PUSH            {R4-R7,LR}
EE1D2:  ADD             R7, SP, #0xC
EE1D4:  PUSH.W          {R11}
EE1D8:  MOV             R5, R0
EE1DA:  LDR             R0, =(_ZNSt6__ndk18numpunctIcE2idE_ptr - 0xEE1E2)
EE1DC:  MOV             R4, R1
EE1DE:  ADD             R0, PC; _ZNSt6__ndk18numpunctIcE2idE_ptr
EE1E0:  LDR             R0, [R0]; this
EE1E2:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
EE1E6:  MOV             R6, R0
EE1E8:  MOV             R0, R4
EE1EA:  MOV             R1, R6
EE1EC:  BL              sub_EE674
EE1F0:  MOV             R1, R0; this
EE1F2:  MOV             R0, R5; int
EE1F4:  MOV             R2, R6
EE1F6:  POP.W           {R11}
EE1FA:  POP.W           {R4-R7,LR}
EE1FE:  B.W             sub_EE550
