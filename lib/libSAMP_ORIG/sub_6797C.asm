; =========================================================
; Game Engine Function: sub_6797C
; Address            : 0x6797C - 0x679A2
; =========================================================

6797C:  PUSH            {R4,R5,R7,LR}
6797E:  ADD             R7, SP, #8
67980:  LDR             R5, [R0]
67982:  MOVS            R1, #0
67984:  MOV             R4, R0
67986:  STR             R1, [R0]
67988:  CBZ             R5, loc_6799E
6798A:  LDR             R0, [R5]; this
6798C:  STR             R1, [R5]
6798E:  CBZ             R0, loc_67998
67990:  BLX             j__ZNSt6__ndk115__thread_structD2Ev_0; std::__thread_struct::~__thread_struct()
67994:  BLX             j__ZdlPv; operator delete(void *)
67998:  MOV             R0, R5; void *
6799A:  BLX             j__ZdlPv; operator delete(void *)
6799E:  MOV             R0, R4
679A0:  POP             {R4,R5,R7,PC}
