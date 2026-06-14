; =========================================================
; Game Engine Function: sub_EE6DC
; Address            : 0xEE6DC - 0xEE6F8
; =========================================================

EE6DC:  PUSH            {R4,R6,R7,LR}
EE6DE:  ADD             R7, SP, #8
EE6E0:  LDR             R0, =(dword_1AF3C0 - 0xEE6E6)
EE6E2:  ADD             R0, PC; dword_1AF3C0 ; this
EE6E4:  ADD.W           R4, R0, #0x14
EE6E8:  BLX             j__ZNSt6__ndk16locale7classicEv; std::locale::classic(void)
EE6EC:  MOV             R1, R0
EE6EE:  MOV             R0, R4
EE6F0:  POP.W           {R4,R6,R7,LR}
EE6F4:  B.W             sub_10C3F8
