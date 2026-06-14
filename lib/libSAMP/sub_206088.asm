; =========================================================
; Game Engine Function: sub_206088
; Address            : 0x206088 - 0x2060BA
; =========================================================

206088:  PUSH            {R4-R7,LR}
20608A:  ADD             R7, SP, #0xC
20608C:  PUSH.W          {R11}
206090:  MOV             R5, R0
206092:  LDR             R0, =(_ZNSt6__ndk18numpunctIcE2idE_ptr - 0x20609A)
206094:  MOV             R4, R1
206096:  ADD             R0, PC; _ZNSt6__ndk18numpunctIcE2idE_ptr
206098:  LDR             R0, [R0]; this
20609A:  BLX             j__ZNSt6__ndk16locale2id5__getEv; std::locale::id::__get(void)
20609E:  MOV             R6, R0
2060A0:  MOV             R0, R4
2060A2:  MOV             R1, R6
2060A4:  BL              sub_20652C
2060A8:  MOV             R1, R0; this
2060AA:  MOV             R0, R5; int
2060AC:  MOV             R2, R6
2060AE:  POP.W           {R11}
2060B2:  POP.W           {R4-R7,LR}
2060B6:  B.W             sub_206408
