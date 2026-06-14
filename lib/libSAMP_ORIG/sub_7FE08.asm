; =========================================================
; Game Engine Function: sub_7FE08
; Address            : 0x7FE08 - 0x7FE2E
; =========================================================

7FE08:  PUSH            {R4,R5,R7,LR}
7FE0A:  ADD             R7, SP, #8
7FE0C:  LDR             R5, [R0]
7FE0E:  MOVS            R1, #0
7FE10:  MOV             R4, R0
7FE12:  STR             R1, [R0]
7FE14:  CBZ             R5, loc_7FE2A
7FE16:  LDR             R0, [R5]; this
7FE18:  STR             R1, [R5]
7FE1A:  CBZ             R0, loc_7FE24
7FE1C:  BLX             j__ZNSt6__ndk115__thread_structD2Ev_0; std::__thread_struct::~__thread_struct()
7FE20:  BLX             j__ZdlPv; operator delete(void *)
7FE24:  MOV             R0, R5; void *
7FE26:  BLX             j__ZdlPv; operator delete(void *)
7FE2A:  MOV             R0, R4
7FE2C:  POP             {R4,R5,R7,PC}
